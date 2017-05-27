<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<jsp:include page="common/header.jsp" flush="true" /> 
<body>
<div class="top"></div>
<div id="wrap"><!--整体-->
<jsp:include page="common/menu.jsp" flush="true" /> 
    <div class="index-box-up">
    <div class="pic-left">
    <p>部门分类</p>
    	<div class="ycbm">
                <ul>
                <c:forEach items="${departmentVoList }" var="department">
                    <li class="on"><a href='${ctx }/departmentDetail?id=${department.id }&type=${department.type }'>${department.name }</a></li>
                    </c:forEach>
                </ul>
            <div class="hover"></div>
        </div>
    </div>
    <div class="pic-right">
        <div class="box-nav">
            <div class="box-nav-left"><img src="${ctx}/images/16.png" width="149"/></div>
            <div class="box-nav-right"><strong>首页 > 部门风采</strong></div>
        </div>
        <img src="${ctx}/images/002.png" width="840"/>
          <div class="abouttext">
        	<p><strong>部门风采</strong></p>
            <div style="border:#ccc 1px dashed; width:90%; margin:10px auto;"></div>
            <div class="text"><p>部门风采部门风采部门风采部门风采部门风采部门风采部门风采部门风采部门风采部门风采部门
            风采部门风采部风采部门风采部门风采部门风采部风采部门风采部门风采部门风采部风采部门风采部门风采部门风采部采部门风采部采部门风采部</p>
    <div class="abouttext-img"><img src="${ctx}/images/pic1.png" width="50%"/></div>
	</div>
        </div>
        <img src="${ctx}/images/002.png" width="840"/>
    </div>
    </div>
</div>
<div style=" clear:both;"></div>
<jsp:include page="common/footer.jsp" flush="true" /> 
<script src="${ctx}/js/jquery.js"></script>
<script>
$(function(){
	var Height = 40; //li的高度
	var pTop = 0; // .ycbm 的paddding-top的值
	$('.ycbm li').mouseover(function(){
		$(this).addClass('on').siblings().removeClass('on');
		var index = $(this).index();
		var distance = index*(Height+1)+pTop+'px'; //如果你的li有个border-bottom为1px高度的话，这里需要加1
		$('.ycbm .hover').stop().animate({top:distance},150); //默认动画时间为150毫秒，懒人们可根据需要修改
	});
});
</script>
</body>
</html>
