<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="index-nav">
    	<div class="logo"><img src="${pageContext.request.contextPath}/images/logo.png" width="200"/></div>
       <div id="headm">
  <ul>
	<li><a class="topa" href="javascript:;">首页</a></li>
	<li>
	  <div class="dh"><a href="javascript:;" class="topa">关于三一</a>
	  <ul>
		<li><a href="javascript:;" >集团简介</a></li>
		<li><a href="javascript:;" >分支机构</a></li>
		<li><a href="javascript:;" >典型案例</a></li>
		<li><a href="javascript:;" >京都荣誉</a></li>
		<li><a href="javascript:;" >社会责任</a></li>
	  </ul>
	  </div>
	</li>
	<li>
	  <div class="dh dh2"><a href="javascript:;" class="topa">新闻与媒体</a>
		  <ul>
			<li><a href="javascript:;" >名誉主任</a></li>
			<li><a href="javascript:;" >高级顾问</a></li>
			<li><a href="javascript:;" >合伙人律师</a></li>
			<li><a href="javascript:;" >名誉主任</a></li>
			<li><a href="javascript:;" >高级顾问</a></li>
			<li><a href="javascript:;" >合伙人律师</a></li>
			<li><a href="javascript:;" >名誉主任</a></li>
			<li><a href="javascript:;" >高级顾问</a></li>
			<li><a href="javascript:;" >合伙人律师</a></li>
			<li><a href="javascript:;" >名誉主任</a></li>
			<li><a href="javascript:;" >高级顾问</a></li>
			<li><a href="javascript:;" >合伙人律师</a></li>
		  </ul>
	  </div>
	</li>
	<li>
	  <div class="dh"><a href="javascript:;"  class="topa">产品</a>
		  <ul>
			<li><a href="javascript:;" >名誉主任</a></li>
			<li><a href="javascript:;" >高级顾问</a></li>
			<li><a href="javascript:;" >合伙人律师</a></li>
		  </ul>
	  </div>
	  </li>
	  <li>
	  <div class="dh"><a href="javascript:;"  class="topa">服务与机构</a>
		  <ul>
			<li><a href="javascript:;" >名誉主任</a></li>
			<li><a href="javascript:;" >高级顾问</a></li>
			<li><a href="javascript:;" >合伙人律师</a></li>
		  </ul>
	  </div>
	  </li>
	  <li>
	  <div class="dh"><a href="javascript:;"  class="topa">人才招骋</a>
		  <ul>
			<li><a href="javascript:;" >名誉主任</a></li>
			<li><a href="javascript:;" >高级顾问</a></li>
			<li><a href="javascript:;" >合伙人律师</a></li>
		  </ul>
	  </div>
	  </li>
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