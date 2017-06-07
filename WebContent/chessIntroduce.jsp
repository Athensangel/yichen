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
    <div>
    <div class="box-nav">
                    <div class="box-nav-left"><img src="${ctx}/images/15.png" width="149"/></div>
                    <div class="box-nav-right"><strong>首页 > 竞技部 >${dictVo.label } </strong></div>
    </div>
    <img src="${ctx}/images/002.png" width="1003"/>
    <div class="abouttext">
        	<p><strong>${dictVo.label }</strong></p>
            <div style="border:#ccc 1px dashed; width:90%; margin:10px auto;"></div>
            <div class="text">
            <p>
		           ${dictVo.description }
		   </p>
	</div>
        </div>
    <img src="${ctx}/images/002.png" width="1003"/>
    </div>
</div>
<div style=" clear:both;"></div>
<jsp:include page="common/footer.jsp" flush="true" /> 
</body>
</html>
