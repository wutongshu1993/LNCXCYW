<%@ include file="/jsp/basepages/taglib.jsp" %>
 <!-- <link href="dashboard.css" rel="stylesheet">  -->
<layout:override name="main_content">
<div class="mycontent">  
		
	<br>
	<br>
	<br>
	<br>
	<div>
		标题	<input type="text" id="title">
	</div>
	<div>
		分类	<s:select lable="test" list="categoryList" name="category"></s:select>  
	</div>

	<div>
		来源	<input type="text" id="source"> 
	</div>		
	
	<div>
		作者	<input type="text" id="author"> 
	</div>	
	<div>
		<%@ include file="/UEditor/ueditor.jsp" %>
	</div>	
	<br>
	<br>
	<br>
	<br>
	<div>
		<button onclick="submit()">提交</button>
		<button onclick="test()">test</button>
	</div>
		
</div>
<script>
	function test(){
		alert(UE.getEditor('editor').getContent());
	}
 
	function submit(){
		var title = $("#title").val();
		var category = $("#category").val();
		var author = $("#author").val();
		var source = $("#source").val();
		var content = UE.getEditor('editor').getContent();
		//alert(title+" "+author+" "+content+" "+source);
		
		$.ajax({
			url : '/newsSubmit',
			type : 'post',
			dataType : 'json',
			data : {
				"title" : title,
				"category" : category,
				"author" : author,
				"source" : source,
				"content" : content,
			},
			success : submitCallback
		});
	}
	
	function submitCallback(data){
		if(data.status=="1"){
			alert("添加失败");
		}else{
			alert("添加成功！");
			location.reload();
		}
	}
</script>









</layout:override>

<%@ include file="/jsp/basepages/menu_base.jsp" %>