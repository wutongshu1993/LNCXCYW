package homepage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import GlobalInfo.NewsPageInfo;

import com.opensymphony.xwork2.ActionSupport;

import cache.Cache;
import dao.DaoFactory;
import dao.NewsDao;
import mode.News;
import util.JspToHTML;
import util.PageGetBaseAction;
import util.SingletonSessionFactory;

public class NewsAction extends PageGetBaseAction{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String category;
	public String news_list_html;
	private List<News> newsList;
	private List<News> list;
	private List<News> clickList;
	private String news_address;
	private List<News> addressList;
	private List<News> newestNewsList;//每日推荐的新闻列表
	private List<News> pictureNewsList;//焦点图片新闻列表
	private List<News> hotestNewsList;//排行榜新闻列表
	
	public List<News> getHotestNewsList() {
		return hotestNewsList;
	}

	public void setHotestNewsList(List<News> hotestNewsList) {
		this.hotestNewsList = hotestNewsList;
	}

	private String keyWords;
	
	public String getKeyWords() {
		return keyWords;
	}

	public void setKeyWords(String keyWords) {
		this.keyWords = keyWords;
	}

	/*
	 * 没办法我也不知道怎么改了，要实现这俩的初始化，只能这么干了,这个构造函数不要删
	 */
	public NewsAction(){
		newestNewsList = Cache.getNewestNewsList(NewsPageInfo.NEWSPAGEINFO.getNewestNewsCount());//初始化每日推荐新闻列表
		pictureNewsList = Cache.getNewsList("图片新闻", 0,NewsPageInfo.NEWSPAGEINFO.getPictureNewsCount()-1 );//初始化焦点图片新闻
		hotestNewsList = newestNewsList;
	}
	
	@SuppressWarnings("unchecked")
	public String pictureNews() throws Exception{
		System.out.println("newsList: "+category);
		Session session1 = SingletonSessionFactory.getSession();
		Criteria q1 = session1.createCriteria(News.class);
		list = q1.list();
		
		list = Cache.getNewestNewsList(NewsPageInfo.NEWSPAGEINFO.getNewestNewsCount());
		clickList=new ArrayList<News>(list);
		Collections.reverse(clickList);
		
		Cache.getNewsList("图片新闻", 0, 3);
		System.out.println(list);
		System.out.println(news_address);
		//图片新闻
		Session session2 = SingletonSessionFactory.getSession();
		addressList = session2.createCriteria(News.class).add(Restrictions.eq("news_address", news_address)).list();
		System.out.println(news_address);
		System.out.println(addressList);
		return ActionSupport.SUCCESS;
		
	}

	/*
	 * 获取新闻列表
	 */
	@SuppressWarnings("unchecked")
	public String newsList() throws Exception{
		System.out.println("newsList: "+category);
		Session session1 = SingletonSessionFactory.getSession();
		Criteria q1 = session1.createCriteria(News.class);
		list = q1.list();//这个list代表每日推荐新闻列表
		if(category==null){//获取所有新闻
			Session session=SingletonSessionFactory.getSession();
			Criteria q=session.createCriteria(News.class);
			/*list=q.list();*/
			newsList=q.list();
			
			session.close();
		}else{//根据参数获取对应类别
			newsList=getNewsListByCategory(category, 0, 200);
			newsList=makeCurrentPageList(newsList, NewsPageInfo.NEWSPAGEINFO.getNewsCountOfCategory());
		}
		list = Cache.getNewestNewsList(NewsPageInfo.NEWSPAGEINFO.getNewestNewsCount());
		
		clickList=new ArrayList<News>(list);
		Collections.reverse(clickList);
		
		Cache.getNewsList("图片新闻", 0, 3);
		System.out.println(list);
		//System.out.println(newsList);
		System.out.println(list);
		return ActionSupport.SUCCESS;
		
	}
	
	
	
	/*
	 * 获取新闻分页
	 */
	@SuppressWarnings("unchecked")
	public String newsPage(){
		System.out.println("newsPage:"+category);
		newsList=getNewsListByCategory(category, 0, 200);
		newsList=makeCurrentPageList(newsList, NewsPageInfo.NEWSPAGEINFO.getNewsCountOfCategory());
		news_list_html = JspToHTML.getJspOutput("/jsp/third/secondPageTable.jsp");
		return ActionSupport.SUCCESS;
	}
	
	public String newsSearchByTitle(){
		System.out.println("NewsAction.newsSearchByTitle()");
		System.out.println(keyWords+"keyOoo");
		NewsDao dao=(NewsDao) DaoFactory.getDaoByName(NewsDao.class);
		try{
			newsList=dao.getNewsListByKeyword(keyWords);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		System.out.println(newsList);
		
		Session session1 = SingletonSessionFactory.getSession();
		Criteria q1 = session1.createCriteria(News.class);
		list = q1.list();//这个list代表每日推荐新闻列表
		if(category==null){//获取所有新闻
			Session session=SingletonSessionFactory.getSession();
			Criteria q=session.createCriteria(News.class);
			/*list=q.list();*/
			//newsList=q.list();
			
			session.close();
		}else{//根据参数获取对应类别
			//newsList=getNewsListByCategory(category, 0, 200);
			//newsList=makeCurrentPageList(newsList, NewsPageInfo.NEWSPAGEINFO.getNewsCountOfCategory());
		}
		list = Cache.getNewestNewsList(NewsPageInfo.NEWSPAGEINFO.getNewestNewsCount());
		
		clickList=new ArrayList<News>(list);
		Collections.reverse(clickList);
		
		Cache.getNewsList("图片新闻", 0, 3);
		System.out.println(list);
		//System.out.println(newsList);
		System.out.println(list);
		
//		if (newsList.size()>0) {
//			status = "1";
//		}
//		newsMessageTable = JspToHTML.getJspOutput("/jsp/admin/widgets/news_message_table.jsp");
		return SUCCESS;
	}

	/*
	 * 获取新闻分类
	 * 
	 * 由于分类加了大类，category不能直接用
	 * 用来替代之前的 Cache.getNewsList(category, start, end)
	 */
	private static List<News> getNewsListByCategory(String category, int start, int end){
		Map<String, List<String>> map=GlobalInfo.NewsPageInfo.NEWSPAGEINFO.getMap();
		List<News> re;
		if(map.containsKey(category)){
			re=new ArrayList<News>();
			List<String> list=map.get(category);
			for(String cate:list){
				//System.out.println(cate);
				re.addAll(Cache.getNewsList(cate, start, end));
			}
		}else{
			re=Cache.getNewsList(category, start, end);
		}
		return re;
	}
	
	/*
	 * getters and setters
	 */
	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getNews_list_html() {
		return news_list_html;
	}

	public void setNews_list_html(String news_list_html) {
		this.news_list_html = news_list_html;
	}

	public List<News> getNewsList() {
		return newsList;
	}

	public void setNewsList(List<News> newsList) {
		this.newsList = newsList;
	}

	public List<News> getList() {
		return list;
	}

	public void setList(List<News> list) {
		this.list = list;
	}

	public String getNews_address() {
		return news_address;
	}

	public void setNews_address(String news_address) {
		this.news_address = news_address;
	}

	public List<News> getAddressList() {
		return addressList;
	}

	public void setAddressList(List<News> addressList) {
		this.addressList = addressList;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public List<News> getNewestNewsList() {
		return newestNewsList;
	}

	public List<News> getPictureNewsList() {
		return pictureNewsList;
	}

	public void setNewestNewsList(List<News> newestNewsList) {
		this.newestNewsList = newestNewsList;
	}

	public void setPictureNewsList(List<News> pictureNewsList) {
		this.pictureNewsList = pictureNewsList;
	}

	public List<News> getClickList() {
		return clickList;
	}

	public void setClickList(List<News> clickList) {
		this.clickList = clickList;
	}
	
	
}
