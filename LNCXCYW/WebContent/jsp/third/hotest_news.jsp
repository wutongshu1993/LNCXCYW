<%@ include file="/jsp/basepages/taglib.jsp" %>
	<ul>
		<s:iterator value="hotestNewsList" var="i" status="index">
			<li>
				<a href="<s:property value="#i.news_address" />" title="<s:property value="#i.newsTile" />">
					<s:property value="#i.newsTile" />
				</a>
			</li>
		</s:iterator>
	</ul>