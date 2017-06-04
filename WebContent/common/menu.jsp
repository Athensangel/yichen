<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="index-nav">
    	<div class="logo"><img src="${pageContext.request.contextPath}/images/logo.png" width="200"/></div>
       <div id="headm">
  <ul>
	<li>
	<div class="dh"><a href="${pageContext.request.contextPath}" class="topa">首页</a>
	  <ul>
		<li><a href="javascript:;" >时事资讯</a></li>
		<li><a href="javascript:;" >活动风采</a></li>
	  </ul>
	  </div>
	</li>
	<li>
	  <div class="dh"><a href="${pageContext.request.contextPath}/about" class="topa">奕辰概括</a>
	  <ul>
		<li><a href="javascript:;" >弈辰棋社名称缘由</a></li>
		<li><a href="javascript:;" >弈辰棋社属性定位</a></li>
		<li><a href="javascript:;" >弈辰棋社发展历史</a></li>
		<li><a href="javascript:;" >现任理事会</a></li>
	  </ul>
	  </div>
	</li>
	<li><a class="topa" href="javascript:;">制度建设</a></li>
	<li>
	  <div class="dh"><a href="javascript:;"  class="topa">文化建设</a>
		  <ul>
			<li><a href="javascript:;" >文化内涵</a></li>
			<li><a href="javascript:;" >文化活动</a></li>
		  </ul>
	  </div>
	  </li>
	  <li>
	  <div class="dh"><a href="${pageContext.request.contextPath}/department"  class="topa">部门风采</a>
		  <ul>
			<li><a href="javascript:;" >外联部</a></li>
			<li><a href="javascript:;" >组织部</a></li>
			<li><a href="javascript:;" >宣传部</a></li>
			<li><a href="javascript:;" >传习部</a></li>
			<li><a href="javascript:;" >竞技部</a></li>
		  </ul>
	  </div>
	  </li>
	  <li>
	  <div class="dh"><a href="javascript:;"  class="topa">理性之音</a>
		  <ul>
			<li><a href="javascript:;" >言论集</a></li>
			<li><a href="javascript:;" >棋语集</a></li>
		  </ul>
	  </div>
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
    <script type="text/javascript">
    	var lis = document.getElementById("headm").getElementsByTagName("li");
    	for(var i=0; i<lis.length; i++){
    		lis[i].onmouseover=function(){
    			this.className+=(this.className.length>0?" ":"") + "show";
    		}
    		lis[i].onmouseout=function(){
    			this.className=this.className.replace(new RegExp("( ?|^)show\\b"), "");
    		}
    	}
		$(document).ready(function(){
			$('.flexslider').flexslider({
				directionNav: true,
				pauseOnAction: false,
				slideshowSpeed: 3000
			});
		});
	</script>