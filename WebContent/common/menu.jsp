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
<script type="text/javascript">
$(document).ready(function(){
	$(".index_btn li").hover(function(){
		$(this).find("div").stop(true).animate({top:-280},300);	 
	},function(){
		$(this).find("div").stop(true).animate({top:-0},300);
	});
	
});
</script>
<div class="bannerbox">
	<div class="Homebanner">
		<ul>
			<li class="Load cur" style="z-index:99">
				<img src="${pageContext.request.contextPath}/front/banner/img/banner2016.jpg" alt="">
				<div class="Homebannertext">
					<img src="${pageContext.request.contextPath}/front/banner/img/banner2016.png" class="bannereffect bannertime bigimg">
					<dl class="bannerone clearfix">
						<dt class="bannereffect bannertime1">
							 网站建设<b>第一品牌</b>·互联网整合专家
						</dt>
						<dd class="bannereffect bannertime2">
							 为梦想者创造梦想品牌
						</dd>
					</dl>
				</div>
			</li>
			<li class="Load">
				<img src="${pageContext.request.contextPath}/front/banner/img/banner02.jpg" alt="">
				<div class="Homebannertext">
					<img src="${pageContext.request.contextPath}/front/banner/img/02.png" class="bannereffect bannertime bigimg">
					<dl class="bannertwo clearfix">
						<dt class="bannereffect bannertime1">
							 <h3>专业的O2O商城系统</h3>
							 <p>微信商城、手机商城、网上商城一体化的商城系统！</p>
						</dt>
					</dl>
				</div>
			</li>
			<li class="Load"><img src="${pageContext.request.contextPath}/front/banner/img/03.jpg" alt="">
				<div class="Homebannertext">
					<dl class="bannerthree clearfix">
						<dt class="bannereffect bannertime"><img src="${pageContext.request.contextPath}/front/banner/img/03-1.png" alt=""></dt>
						<dd class="bannereffect bannertime1">
							 <img src="${pageContext.request.contextPath}/front/banner/img/03-2.png" alt="">
							 <h3>持续追求更高品质</h3>
							 <p>我们服务了超过1500家企业，其中300家为上市公司，集团企业及政府机构，让我们的专业帮助您的品牌更有效率的传播！</p>
						</dd>
					</dl>
				</div>
			</li>
		</ul>
		<div class="Homeleft"><</div>
		<div class="Homeright">></div>
		<div class="Homedot"><a href="javascript:;" class="cur">1</a><a href="javascript:;">2</a><a href="javascript:;">3</a></div>
	</div>
  
    
	<div class="index_btn">
		<ul>
			 <li><span><a href="#"><em class="btn">成功案例</em></a></span>
			 <div class="index_btnbox index_btnanli" style="top: 0px;">
				<img src="${pageContext.request.contextPath}/front/banner/img/menu_pic1.jpg" alt="成功案例" width="258" height="112">
				<p class="clearfix">
					<a href="#">知名客户</a>
					<a href="#">网站案例</a>
					<a href="#">客户评价</a>
					<a href="#">客户列表</a>
				</p>
			 </div>
			 </li>
			 <li><span><a href="#"><em class="btn1">微信营销</em></a></span>
			 <div class="index_btnbox">
				<img src="${pageContext.request.contextPath}/front/banner/img/menu_pic2.jpg" alt="微信营销" width="258" height="112">
				<p class="clearfix">
					<a href="#">微信商城O2O整合</a>
					<a href="#">手机网站案例</a>
					<a href="#">微信活动微场景</a>
					<a href="#">手机网站建设</a>
					<a href="#">微官网</a>
					<a href="#">手机解决方案</a>
					<a href="#">苹果手机应用</a>
					<a href="#">安卓手机应用</a>
				</p>
			 </div>
			 </li>
			 <li><span><a href="#"><em class="btn2">网站建设</em></a></span>
			 <div class="index_btnbox">
				<img src="${pageContext.request.contextPath}/front/banner/img/menu_pic3.jpg" alt="网站建设" width="258" height="112">
				<p class="clearfix">
					<a href="#" title="品牌创意网站建设">品牌创意网站建设</a>
					<a href="#" title="企业官方网站建设">企业官方网站建设</a>
					<a href="#" title="上市公司网站建设">上市公司网站建设</a>
					<a href="#" title="B2C电子商务网站建设">B2C电子商务网站建设</a>
					<a href="#" title="大型门户类网站建设">大型门户类网站建设</a>
					<a href="#" title="专题活动网站（MINISITE）">专题活动网站</a>
					<a href="#" title="全方位网站运营代理">全方位网站运营代理</a>
				</p>
			 </div>
			 </li>
			 <li><span><a href="#" class="cur"><em class="btn3">我们的实力</em></a></span>
			 <div class="index_btnbox">
				<img src="${pageContext.request.contextPath}/front/banner/img/menu_pic4.jpg" alt="我们的实力" width="258" height="112">
				<p class="clearfix">
				   <a href="#" title="关于沙漠风">关于沙漠风</a>
				   <a href="#" title="实力认可">实力认可</a>
				   <a href="#" title="沙漠风与众不同">沙漠风与众不同</a>
				   <a href="#" title="理念与信仰">理念与信仰</a>
				</p>
			 </div>
			 </li>
		</ul>
	</div>
</div>
