<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<jsp:include page="common/header.jsp" flush="true" /> 
<body>
<div class="top"></div>
<div id="wrap"><!--整体-->
<jsp:include page="common/menu.jsp" flush="true" /> 
    <div>
    <div class="box-nav">
                    <div class="box-nav-left"><img src="${pageContext.request.contextPath}/images/15.png" width="149"/></div>
                    <div class="box-nav-right"><strong>首页 > 资讯公告</strong></div>
    </div>
    <img src="${pageContext.request.contextPath}/images/002.png" width="1003"/>
    <ul class="news_list_b">
	    <c:forEach items="${messageVoList }" var="message">
	      <li><span><fmt:formatDate type="time" value="${message.addTime }" pattern="yyyy-MM-dd HH:mm:ss" /></span> 
	           <a href="${pageContext.request.contextPath}/newsDetail?id=${message.id }" title="${message.title }">${message.title }</a>
	      </li>
	    </c:forEach>
    </ul>
    <img src="${pageContext.request.contextPath}/images/002.png" width="1003"/>
   <div class="page-normal">
			   <a   href="${pageContext.request.contextPath}/news/1" >首页</a>
			    <c:if test="${page.pageNow != 1}">
			 		<a href="${pageContext.request.contextPath}/news/${page.pageNow-1}">上一页</a>
					<a href="${pageContext.request.contextPath}/news/1" >1</a>
				  <c:if test="${page.pageNow-1 != 1}">
					<a href="${pageContext.request.contextPath}/news/${page.pageNow-1}">${page.pageNow-1}</a>
				  </c:if>
				</c:if>
					<a  class="current">${page.pageNow}</a>
				<c:if test="${page.pageNow != page.totalPageCount}">
				  <c:if test="${page.pageNow+1 != page.totalPageCount}">
					<a href="${pageContext.request.contextPath}/news/${page.pageNow+1}">${page.pageNow+1}</a>
				  </c:if>
					<a href="${pageContext.request.contextPath}/news/${page.totalPageCount}">${page.totalPageCount}</a>
					<a href="${pageContext.request.contextPath}/news/${page.pageNow+1}" >下一页</a>
			    </c:if>
					<a href="${pageContext.request.contextPath}/news/${page.totalPageCount}">末页</a>
				</div>
    </div>
</div>
<div style=" clear:both;"></div>
<jsp:include page="common/footer.jsp" flush="true" /> 
</body>
</html>
