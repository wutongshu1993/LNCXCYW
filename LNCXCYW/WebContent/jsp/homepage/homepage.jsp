<%@ taglib prefix="layout" uri="/WEB-INF/jsp_layout.tld"%>


<%@ taglib prefix="s" uri="/struts-tags"%>

<layout:override name="base_content">
 <div id="first_con"  class="con" >
     <div id="myCarousel"  class="con1 carousel slide">
                <ol class="carousel-indicators">
                  <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                  <li data-target="#myCarousel" data-slide-to="1"></li>
                  <li data-target="#myCarousel" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                  <div class="item active" style="background:url(./images/test1.jpg);background-size:340px 300px">
                    <img src="/images/test1.jpg" alt="">
                    <div class="carousel-caption">
                      <h4>First Thumbnail label</h4>
                    </div>
                  </div>
                  <div class="item" style="background:url(./images/test2.jpg);background-size:340px 300px">
                    <img src="/images/test2.jpg" alt="">
                    <div class="carousel-caption">
                      <h4>Second Thumbnail label</h4>
                    </div>
                  </div>
                  <div class="item" style="background:url(./images/test3.jpg);background-size:340px 300px">
                    <img src="/images/test3.jpg" alt="">
                    <div class="carousel-caption">
                      <h4>Third Thumbnail label</h4>
                    </div>
                  </div>
                </div>
                <a class="left carousel-control" href="#myCarousel" data-slide="prev">&lsaquo;</a>
                <a class="right carousel-control" href="#myCarousel" data-slide="next">&rsaquo;</a>
      </div>
              
       <!-- 第一行 第二块 -->
      <div class="con2">
         <div class="name">
         	<ul style="width:100%;height:36px;overflow:hidden">
         		<a href="/second_page?category=通知公告" onclick="" target="_blank"><li id="one1" onmouseover="setTabsnow('one',1,3)" class="curnews">通知公告</li></a>
         		<a href="/second_page?category=工作动态" onclick="" target="_blank"><li id="one2" onmouseover="setTabsnow('one',2,3)" >工作动态</li></a>
         		<a href="/second_page?category=高校动态" onclick="" target="_blank"><li id="one3" onmouseover="setTabsnow('one',3,3)" >高校动态</li></a>
         	</ul>
         </div>
         <div class="clear"></div>
         <div id="con_one_1" style="display: block;">
				<div class="list1" style="padding-top: 15px">
					<ul>
					<table width="100%" cellspacing="0" cellpadding="0">
						<tbody>
						<s:iterator var="i"  begin="0" end="9"> 
						<tr>
						<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
							<td valign="middle" align="left">
						        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
						        	<s:property value="newsList.get(#i).getNewsTile()"/>
						        </a>   
						   </td>     
						   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
						   </td>
						  </tr>  
					</s:iterator>
						</tbody>
					</table>
					</ul>
				</div>
		</div>
		
		<div id="con_one_2" style="display: block;">
			<div class="list1" style="padding-top: 15px">
					<ul><table width="100%" cellspacing="0" cellpadding="0">
					<tbody>
					<s:iterator var="i"  begin="10" end="19"> 
					<tr>
					<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
						<td valign="middle" align="left">
					        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
					        	<s:property value="newsList.get(#i).getNewsTile()"/>
					        </a>   
					   </td>     
					   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
					   </td>
					  </tr>  
					</s:iterator>
					</tbody></table><!--#endeditable--></ul>
			</div>
		</div>
		
		<div id="con_one_3" style="display: block;">
			<div class="list1" style="padding-top: 15px">
					<ul><table width="100%" cellspacing="0" cellpadding="0">
					<tbody>
					<s:iterator var="i"  begin="30" end="39"> 
					<tr>
					<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
						<td valign="middle" align="left">
					        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
					        	<s:property value="newsList.get(#i).getNewsTile()"/>
					        </a>   
					   </td>     
					   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
					   </td>
					  </tr>  
					</s:iterator>
					</tbody></table><!--#endeditable--></ul>
			</div>
		</div>
     </div>
	
		<!-- 第一行第三块 -->
     <div class="con3">
        <ul class = "list-group">
        	<li class="list-group-item">我要对接项目</li>
        	<li class="list-group-item">创新创业活动日程表</li>
        	<li class="list-group-item">创新创业改革实施方案</li>
        	<li class="list-group-item">创新创业教育基地</li>
        	<li class="list-group-item">创新创业选育基地</li>
        	<li class="list-group-item">创新创业试点专业</li>
        </ul>
      </div>
   </div>
   
   
   <!-- 第二行 三块 天天画div 问我的研究方向，画div呀，我就是研究如何画div-->
   <div id="second_con" class="connews">
  		<!-- 第二行 第一块  -->
  		<div id="second_con1" style=" margin-right: 10px" class="conblue">
	  		<div class="name">
	         	<ul style="width:100%;height:36px;overflow:hidden">
	         		<a href="/second_page?category=政策规章" target="_blank"><li id="two1" onmouseover="setTabsnow('two',1,2)" class="curnews">政策规章</li></a>
	         		<a href="/second_page?category=创新创业资讯" target="_blank"><li id="two2" onmouseover="setTabsnow('two',2,2)" >创新创业资讯</li></a>
	         	</ul>
	         </div>
	         <div class="clear"></div>
	          <div id="con_two_1" style="display: block;">
					<div class="list1" style="padding-top: 15px">
						<ul><table width="100%" cellspacing="0" cellpadding="0">
		
						<tbody>
						<s:iterator var="i"  begin="40" end="49"> 
						<tr>
								<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
								<td valign="middle" align="left">
							        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
							        	<s:property value="newsList.get(#i).getNewsTile()"/>
							        </a>   
							   </td>     
							   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
							   </td>
						  </tr>  
						</s:iterator>
						</tbody></table><!--#endeditable--></ul>
					</div>
	  		 </div>
	  		 
	  		 <div id="con_two_2" style="display: block;">
					<div class="list1" style="padding-top: 15px">
						<ul><table width="100%" cellspacing="0" cellpadding="0">
		
						<tbody>
						<s:iterator var="i"  begin="50" end="59"> 
						<tr>
								<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
								<td valign="middle" align="left">
							        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
							        	<s:property value="newsList.get(#i).getNewsTile()"/>
							        </a>   
							   </td>     
							   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
							   </td>
						  </tr>  
						</s:iterator>
						</tbody></table><!--#endeditable--></ul>
					</div>
	  		 </div>
  		</div>
        	<!-- 第二行 第二块 -->
	        <div id="second_con2" style=" margin-right: 10px" class="congray">
	        	<div class="name">
	         	<ul style="width:100%;height:36px;overflow:hidden">
	         		<a href="/second_page?category=项目推介" target="_blank"><li id="three1" onmouseover="setTabsnow('three',1,2)" class="curnews">项目推介</li></a>
	         		<a href="/second_page?category=企业需求" target="_blank"><li id="three2" onmouseover="setTabsnow('three',2,2)" >企业需求</li></a>
	         	</ul>
	         	</div>
	         	<div class="clear"></div>
	         	 <div id="con_three_1" style="display: block;">
					<div class="list1" style="padding-top: 15px">
						<ul><table width="100%" cellspacing="0" cellpadding="0">
		
						<tbody>
							<s:iterator var="i"  begin="60" end="69"> 
							<tr>
							<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
								<td valign="middle" align="left">
							        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
							        	<s:property value="newsList.get(#i).getNewsTile()"/>
							        </a>   
							   </td>     
							   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
							   </td>
							  </tr>  
							</s:iterator>
						</tbody></table><!--#endeditable--></ul>
						</div>
		  		 </div>
		  		  <div id="con_three_2" style="display: block;">
					<div class="list1" style="padding-top: 15px">
						<ul><table width="100%" cellspacing="0" cellpadding="0">
		
						<tbody>
							<s:iterator var="i"  begin="70" end="79"> 
							<tr>
							<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
								<td valign="middle" align="left">
							        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
							        	<s:property value="newsList.get(#i).getNewsTile()"/>
							        </a>   
							   </td>     
							   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
							   </td>
							  </tr>  
							</s:iterator>
						</tbody></table><!--#endeditable--></ul>
						</div>
		  		 </div>
	        </div>
	        
	        <!-- 第二行 第三块 -->
	        <div id="second_con3" class="conblue">
	        	<div class="name">
	         	<ul style="width:100%;height:36px;overflow:hidden">
	         		<a href="/second_page?category=教指委工作动态" target="_blank"><li id="four1" onmouseover="setTabsnow('four',1,2)" class="curnews">教指委工作动态</li></a>
	         		<a href="/second_page?category=高校创新创业教育季报" target="_blank"><li id="four2" onmouseover="setTabsnow('four',2,2)" >高校创新创业教育季报</li></a>
	         	</ul>
	         	</div>
	         	<div class="clear"></div>
	         	 <div id="con_four_1" style="display: block;">
					<div class="list1" style="padding-top: 15px">
						<ul><table width="100%" cellspacing="0" cellpadding="0">
		
						<tbody>
							<s:iterator var="i"  begin="80" end="89"> 
							<tr>
							<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
								<td valign="middle" align="left">
							        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
							        	<s:property value="newsList.get(#i).getNewsTile()"/>
							        </a>   
							   </td>     
							   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
							   </td>
							  </tr>  
							</s:iterator>
						</tbody></table><!--#endeditable--></ul>
					</div>
				</div>
				<div id="con_four_2" style="display: block;">
		         <div class="list1" style="padding-top: 15px">
							<ul><table width="100%" cellspacing="0" cellpadding="0">
							<tbody>
							<s:iterator var="i"  begin="90" end="99"> 
							<tr>
							<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
								<td valign="middle" align="left">
							        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
							        	<s:property value="newsList.get(#i).getNewsTile()"/>
							        </a>   
							   </td>     
							   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
							   </td>
							  </tr>  
							</s:iterator>
							</tbody></table><!--#endeditable--></ul>
						</div>
		  		 </div>
	        </div>
       </div>
       
       <!-- 大块分隔行   三大链接 后面其实还有四大链接 我就是喜欢这么叫 呵呵 -->
       <div id="bigThree" class="bigThree">
	      <ul> 	
	      		<li style="margin-right:10px">创新创业训练计划项目管理平台</li>
	       		<li style="margin-right:10px">创新创业项目推荐</li>
	       		<li >创新创业竞赛平台</li>
	       	</ul>
       </div>
       
       <!-- 又是两行三列新闻  -->
       <!-- 第三列 三个新闻框 -->
       <div id="third_con" class="connews">
  		<!-- 第三行 第一块  -->
  		<div id="third_con1" style=" margin-right: 10px" class="congray">
	  		<div class="name">
	         	<ul style="width:100%;height:36px;overflow:hidden">
	         		<a href="#" target="_blank"><li id="five1" onmouseover="setTabsnow('five',1,2)" class="curnews">创新训练</li></a>
	         		<li id="five2" onmouseover="setTabsnow('five',2,2)" >创业实践</li>
	         	</ul>
	         </div>
	         <div class="clear"></div>
	          <div id="con_five_1" style="display: block;">
					<div class="list1" style="padding-top: 15px">
						<ul><table width="100%" cellspacing="0" cellpadding="0">
		
						<tbody>
						<s:iterator var="i"  begin="100" end="109"> 
						<tr>
						<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
							<td valign="middle" align="left">
						        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
						        	<s:property value="newsList.get(#i).getNewsTile()"/>
						        </a>   
						   </td>     
						   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
						   </td>
						  </tr>  
						</s:iterator>
						</tbody></table><!--#endeditable--></ul>
					</div>
			</div>
			<div id="con_five_2" style="display: block;">
	         <div class="list1" style="padding-top: 15px">
						<ul><table width="100%" cellspacing="0" cellpadding="0">
		
						<tbody>
						<s:iterator var="i"  begin="110" end="119"> 
						<tr>
						<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
							<td valign="middle" align="left">
						        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
						        	<s:property value="newsList.get(#i).getNewsTile()"/>
						        </a>   
						   </td>     
						   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
						   </td>
						  </tr>  
						</s:iterator>
						</tbody></table><!--#endeditable--></ul>
					</div>
	  		 </div>
  		</div>
        	<!-- 第三行 第二块 -->
	        <div id="third_con2" style=" margin-right: 10px" class="conblue">
	        	<div class="name">
	         	<ul style="width:100%;height:36px;overflow:hidden">
	         		<a href="#" target="_blank"><li id="six1" onmouseover="setTabsnow('six',1,2)" class="curnews">创新创业年会</li></a>
	         		<li id="six2" onmouseover="setTabsnow('six',2,2)" >优秀创新创业作品</li>
	         	</ul>
	         	</div>
	         	<div class="clear"></div>
	         	 <div id="con_six_1" style="display: block;">
					<div class="list1" style="padding-top: 15px">
						<ul><table width="100%" cellspacing="0" cellpadding="0">
		
						<tbody>
							<s:iterator var="i"  begin="120" end="129"> 
							<tr>
							<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
								<td valign="middle" align="left">
							        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
							        	<s:property value="newsList.get(#i).getNewsTile()"/>
							        </a>   
							   </td>     
							   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
							   </td>
							  </tr>  
							</s:iterator>
						</tbody></table><!--#endeditable--></ul>
					</div>
				</div>
				<div id="con_six_2" style="display: block;">
		         <div class="list1" style="padding-top: 15px">
							<ul><table width="100%" cellspacing="0" cellpadding="0">
			
							<tbody>
								<s:iterator var="i"  begin="130" end="139"> 
								<tr>
								<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
									<td valign="middle" align="left">
								        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
								        	<s:property value="newsList.get(#i).getNewsTile()"/>
								        </a>   
								   </td>     
								   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
								   </td>
								  </tr>  
								</s:iterator>
							</tbody></table><!--#endeditable--></ul>
						</div>
		  		 </div>
	        </div>
	        
	        <!-- 第三行 第三块 -->
	        <div id="third_con3" class="congray">
	        	<div class="name">
	         	<ul style="width:100%;height:36px;overflow:hidden">
	         		<a href="#" target="_blank"><li id="seven1" onmouseover="setTabsnow('seven',1,2)" class="curnews">创新创业典型</li></a>
	         		<li id="seven2" onmouseover="setTabsnow('seven',2,2)" >他山之石</li>
	         	</ul>
	         	</div>
	         	<div class="clear"></div>
	         	 <div id="con_seven_1" style="display: block;">
					<div class="list1" style="padding-top: 15px">
						<ul><table width="100%" cellspacing="0" cellpadding="0">
		
						<tbody>
							<s:iterator var="i"  begin="140" end="149"> 
							<tr>
							<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
								<td valign="middle" align="left">
							        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
							        	<s:property value="newsList.get(#i).getNewsTile()"/>
							        </a>   
							   </td>     
							   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
							   </td>
							  </tr>  
							</s:iterator>
						</tbody></table><!--#endeditable--></ul>
					</div>
				</div>
				<div id="con_seven_2" style="display: block;">
		         <div class="list1" style="padding-top: 15px">
							<ul><table width="100%" cellspacing="0" cellpadding="0">
			
							<tbody>
							<s:iterator var="i"  begin="150" end="159"> 
							<tr>
							<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
								<td valign="middle" align="left">
							        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
							        	<s:property value="newsList.get(#i).getNewsTile()"/>
							        </a>   
							   </td>     
							   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
							   </td>
							  </tr>  
							</s:iterator>
							</tbody></table><!--#endeditable--></ul>
						</div>
		  		 </div>
	        </div>
	        
       </div>
       
       <!-- 第四行   晚上继续画DIV，不胜荣幸  言归正传，本块有3个新闻栏 -->
       <div id="fourth_con" class="connews">
       		<!-- 创新创业培训  第一个新闻兰 -->
       		<div id="fourth_con1" style=" margin-right: 10px" class="conblue">
       			<div id="fourth_con2" class="name">
		  		<ul style="width:100%;height:36px;overflow:hidden">
	         		<a href="#" target="_blank"><li id="eight1" onmouseover="setTabsnow('eight',1,2)" class="curnews">创新创业培训</li></a>
	         		<li id="eight2" onmouseover="setTabsnow('eight',2,2)" >创新创业理论</li>
	         	</ul>
		  	</div>
		  	<div class="clear"></div>
       		<div id="con_eight_1">
       			<div class="list1" style="padding-top: 15px">
						<ul><table width="100%" cellspacing="0" cellpadding="0">
		
						<tbody>
							<s:iterator var="i"  begin="160" end="169"> 
							<tr>
							<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
								<td valign="middle" align="left">
							        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
							        	<s:property value="newsList.get(#i).getNewsTile()"/>
							        </a>   
							   </td>     
							   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
							   </td>
							  </tr>  
					</s:iterator>
						</tbody></table><!--#endeditable--></ul>
					</div>
       		</div>
       		<div id="con_eight_2" style="display: block;">
		         <div class="list1" style="padding-top: 15px">
							<ul><table width="100%" cellspacing="0" cellpadding="0">
			
							<tbody>
								<s:iterator var="i"  begin="170" end="179"> 
								<tr>
								<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
									<td valign="middle" align="left">
								        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
								        	<s:property value="newsList.get(#i).getNewsTile()"/>
								        </a>   
								   </td>     
								   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
								   </td>
								  </tr>  
								</s:iterator>
							</tbody></table><!--#endeditable--></ul>
						</div>
		  	</div>
       		</div>
		  	
		  	<!-- 创新创业教材  第二个新闻栏 -->
		 	<div id="fourth_con2" style="margin-right:10px" class="congray">
		 		 	<div id="fourth_con2" class="name">
		  		<ul style="width:100%;height:36px;overflow:hidden">
	         		<a href="#" target="_blank"><li id="nine1" onmouseover="setTabsnow('nine',1,2)" class="curnews">创新创业教材</li></a>
	         		<li id="nine2" onmouseover="setTabsnow('nine',2,2)" >创新创业课程</li>
	         	</ul>
		  	</div>
		  	<div class="clear"></div>
       		<div id="con_nine_1">
       			<div class="list1" style="padding-top: 15px">
						<ul><table width="100%" cellspacing="0" cellpadding="0">
		
						<tbody>
							<s:iterator var="i"  begin="180" end="189"> 
							<tr>
							<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
								<td valign="middle" align="left">
							        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
							        	<s:property value="newsList.get(#i).getNewsTile()"/>
							        </a>   
							   </td>     
							   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
							   </td>
							  </tr>  
							</s:iterator>
						</tbody></table><!--#endeditable--></ul>
					</div>
       		</div>
       		<div id="con_nine_2" style="display: block;">
		         <div class="list1" style="padding-top: 15px">
							<ul><table width="100%" cellspacing="0" cellpadding="0">
							<tbody>
								<s:iterator var="i"  begin="190" end="199"> 
								<tr>
								<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
									<td valign="middle" align="left">
								        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
								        	<s:property value="newsList.get(#i).getNewsTile()"/>
								        </a>   
								   </td>     
								   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
								   </td>
								  </tr>  
								</s:iterator>
							</tbody></table><!--#endeditable--></ul>
						</div>
		  	</div>
		 	</div>
      
      		<!-- 第三个新闻栏 为何这么多！！！！ -->
      		<div id="fourth_con3"  class="conblue">
      			<div id="fourth_con2" class="name">
			  		<ul style="width:100%;height:36px;overflow:hidden">
		         		<a href="#" target="_blank"><li id="ten1" onmouseover="setTabsnow('ten',1,2)" class="curnews">创新创业导师</li></a>
		         		<li id="ten2" onmouseover="setTabsnow('ten',2,2)" >素质测评</li>
		         	</ul>
		  		</div>
		  	<div class="clear"></div>
       		<div id="con_ten_1">
       			<div class="list1" style="padding-top: 15px">
						<ul><table width="100%" cellspacing="0" cellpadding="0">
		
						<tbody>
						<s:iterator var="i"  begin="200" end="209"> 
						<tr>
						<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
							<td valign="middle" align="left">
						        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
						        	<s:property value="newsList.get(#i).getNewsTile()"/>
						        </a>   
						   </td>     
						   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
						   </td>
						  </tr>  
						</s:iterator>
						</tbody></table><!--#endeditable--></ul>
					</div>
       		</div>
       		<div id="con_ten_2" style="display: block;">
       		<div class="list1" style="padding-top: 15px">
						<ul><table width="100%" cellspacing="0" cellpadding="0">
		
						<tbody>
							<s:iterator var="i"  begin="210" end="219"> 
							<tr>
							<td align="center" valign="middle" width="10" nowrap=""><span class="leaderfont50257">·</span></td>
								<td valign="middle" align="left">
							        <a href="<s:property value="newsList.get(#i).getNews_address()"/>" class="c50257" title="<s:property value="newsList.get(#i).getNewsTile()"/>" target="_blank">
							        	<s:property value="newsList.get(#i).getNewsTile()"/>
							        </a>   
							   </td>     
							   <td valign="middle" align="right" class="timestyle50257" width="1%" nowrap="">
							   </td>
							  </tr>  
							</s:iterator>
						</tbody></table><!--#endeditable--></ul>
					</div>
       		</div>
      		</div>
      		</div>
</layout:override>

<%@ include file="/jsp/basepages/base.jsp" %>