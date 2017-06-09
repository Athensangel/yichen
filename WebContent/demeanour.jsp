<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<jsp:include page="common/header.jsp" flush="true" /> 
<link href="${ctx}/front/demeanour/css/demeanour.css" type="text/css" rel="stylesheet" />
<body>
<div class="top"></div>
<div id="wrap"><!--整体-->
<jsp:include page="common/menu.jsp" flush="true" /> 
    <div>
    <div class="box-nav">
       <div class="box-nav-left"><img src="${ctx}/images/11.png" width="149"/></div>
       <div class="box-nav-right"><strong>首页 > 活动风采</strong></div>
    </div>
    <img src="${ctx}/images/002.png" width="1003"/>
    <div class="abouttext">
<!-- 代码部分begin -->
<ul class="time">
	<a href="${ctx}/demeanour"><li class="active" data-filter="all">全部</li></a>
	<a href="${ctx}/demeanour?currentTime=2012"><li data-filter="1">2012</li></a>
	<a href="${ctx}/demeanour?currentTime=2013"><li data-filter="2">2013</li></a>
	<a href="${ctx}/demeanour?currentTime=2014"><li data-filter="3">2014</li></a>
	<a href="${ctx}/demeanour?currentTime=2015"><li data-filter="4">2015</li></a>
	<a href="${ctx}/demeanour?currentTime=2016"><li data-filter="5">2016</li></a>
</ul>
<c:if test="${fn:length(demeanourVoList)< 1}">
<div style="text-align:center;">暂无数据</div>
</c:if>
<div class="demeanour">
	<c:forEach items="${demeanourVoList}" var="demeanour">
		<div class="filtr-item" data-category="${demeanour.dataCategory}">
			<img src="${ctx}/${demeanour.imagePath}">
		</div>
	</c:forEach>
</div>
<script type="text/javascript" src="${ctx}/front/demeanour/js/jquery.filterizr.js"></script>
<script type="text/javascript" src="${ctx}/front/demeanour/js/demeanour.js"></script>
<!-- 代码部分end -->
  </div>
    <img src="${ctx}/images/002.png" width="1003"/>
    <c:if test="${page.totalCount > 0}">
    <div class="page-normal">
		<a href="${ctx}/demeanour?currentTime=${page.currentTime}&pageNow=1">首页</a>
		<c:if test="${page.pageNow != 1}">
			<a href="${ctx}/demeanour?currentTime=${page.currentTime}&pageNow=${page.pageNow-1}">上一页</a>
			<a href="${ctx}/demeanour?currentTime=${page.currentTime}&pageNow=1">1</a>
			<c:if test="${page.pageNow-1 != 1}">
				<a href="${ctx}/demeanour?currentTime=${page.currentTime}&pageNow=${page.pageNow-1}">${page.pageNow-1}</a>
			</c:if>
		</c:if>
		<a class="current">${page.pageNow}</a>
		<c:if test="${page.pageNow != page.totalPageCount}">
			<c:if test="${page.pageNow+1 != page.totalPageCount}">
				<a href="${ctx}/demeanour?currentTime=${page.currentTime}&pageNow=${page.pageNow+1}">${page.pageNow+1}</a>
			</c:if>
			<a href="${ctx}/demeanour?currentTime=${page.currentTime}&pageNow=${page.totalPageCount}">${page.totalPageCount}</a>
			<a href="${ctx}/demeanour?currentTime=${page.currentTime}&pageNow=${page.pageNow+1}">下一页</a>
		</c:if>
		<a href="${ctx}/demeanour?currentTime=${page.currentTime}&pageNow=${page.totalPageCount}">末页</a>
	 </div>
	 </c:if>
    </div>
</div>
<div style=" clear:both;"></div>
<jsp:include page="common/footer.jsp" flush="true" /> 
</body>
</html>
