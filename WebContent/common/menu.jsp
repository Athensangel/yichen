<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="index-nav">
    	<div class="logo"><img src="${pageContext.request.contextPath}/images/logo.png" width="200"/></div>
<div id="menu_yhm">
    <ul>
    	<li><a href="${pageContext.request.contextPath}/">首页</a> 
            <ul>
                <li><a href="javascript:;" >时事资讯</a></li>
			    <li><a href="javascript:;" >活动风采</a></li>
            </ul>
    	</li>
        <li><a href="${pageContext.request.contextPath}/about">奕辰概括</a> 
		      <ul>
				<li><a href="javascript:;" >弈辰棋社名称缘由</a></li>
				<li><a href="javascript:;" >弈辰棋社属性定位</a></li>
				<li><a href="javascript:;" >弈辰棋社发展历史</a></li>
				<li><a href="javascript:;" >现任理事会</a></li>
			  </ul>
    </li>
    <li><a href="${pageContext.request.contextPath}/regime">制度建设</a> 
        <ul>
			<li><a href="${pageContext.request.contextPath}/culture/connote" >文化内涵</a></li>
			<li><a href="${pageContext.request.contextPath}/culture/activity" >文化活动</a></li>
		  </ul>
    </li>
       <li><a href="${pageContext.request.contextPath}/department">部门风采</a> 
        <ul>
        <c:forEach items="${departmentVoList}" var="departmentVo">
			<li><a href="${pageContext.request.contextPath}/departmentDetail?id=${departmentVo.id }&type=${departmentVo.type }" >${departmentVo.name}</a>
			<c:if test="${fn:length(departmentVo.dictVoList)> 0}">
			  <ul>
			  <c:forEach items="${departmentVo.dictVoList}" var="department">
                   <li><a href="${pageContext.request.contextPath}/chessType/${department.value}">${department.label}</a></li>
              </c:forEach>
              </ul>
			</c:if>
			</li>
		</c:forEach>
	   </ul>
    </li>
    	<li><a href="javascript:;">理性之音</a> 
            <ul>
                <li><a href="javascript:;" >言论集</a></li>
			    <li><a href="javascript:;" >棋语集</a></li>
            </ul>
    	</li>
      <li><a class="topa" href="${pageContext.request.contextPath}/news/1">通知公告</a></li>
	  <li><a class="topa" href="${pageContext.request.contextPath}/person/1">人物风采</a></li>
	  <li><a class="topa" href="javascript:;">弈辰史苑</a></li>
    </ul>
</div>
</div>

	<div style=" clear:both;"></div>
	<div class="banner">
		<div class="jq22-container">
		<div class="flexslider">
			<ul class="slides">
				<li style="background:url(${pageContext.request.contextPath}/front/banner/img/1.jpg) 50% 0 no-repeat;"></li>
				<li style="background:url(${pageContext.request.contextPath}/front/banner/img/2.jpg) 50% 0 no-repeat;"></li>
				<li style="background:url(${pageContext.request.contextPath}/front/banner/img/3.jpg) 50% 0 no-repeat;"></li>
				<li style="background:url(${pageContext.request.contextPath}/front/banner/img/4.jpg) 50% 0 no-repeat;"></li>
				<li style="background:url(${pageContext.request.contextPath}/front/banner/img/5.jpg) 50% 0 no-repeat;"></li>
			</ul>
		</div>
	</div>
	</div>
    <div style=" clear:both;"></div>
