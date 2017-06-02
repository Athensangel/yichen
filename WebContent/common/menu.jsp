<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="index-nav">
    	<div class="logo"><img src="${pageContext.request.contextPath}/images/logo.png" width="200"/></div>
        <div class="nav">
        	<ul>
            	<li><a href="${pageContext.request.contextPath}">首 页</a></li>
                <li><a href="${pageContext.request.contextPath}/about">简介</a></li>
                <li><a href="${pageContext.request.contextPath}/news/1">资讯公告</a></li>
                <li><a href="javascript:;">制度建设</a></li>
                <li><a href="javascript:;">文化服务</a></li>
                <li><a href="${pageContext.request.contextPath}/department">部门风采</a></li>
                <li><a href="${pageContext.request.contextPath}/person/1">人物风采</a></li>
            </ul>
        </div>
</div>
	<div style=" clear:both;"></div>
	<div class="banner">
		<div class="jq22-container">
		<div class="flexslider">
			<ul class="slides">
				<li style="background:url(${pageContext.request.contextPath}/front/banner/img/img1.png) 50% 0 no-repeat;"></li>
				<li style="background:url(${pageContext.request.contextPath}/front/banner/img/img2.png) 50% 0 no-repeat;"></li>
				<li style="background:url(${pageContext.request.contextPath}/front/banner/img/img3.png) 50% 0 no-repeat;"></li>
				<li style="background:url(${pageContext.request.contextPath}/front/banner/img/img4.png) 50% 0 no-repeat;"></li>
				<li style="background:url(${pageContext.request.contextPath}/front/banner/img/img5.png) 50% 0 no-repeat;"></li>
			</ul>
		</div>
	</div>
	</div>
    <div style=" clear:both;"></div>
    	<script type="text/javascript">
		$(document).ready(function(){
			$('.flexslider').flexslider({
				directionNav: true,
				pauseOnAction: false,
				slideshowSpeed: 3000
			});
		});
	</script>