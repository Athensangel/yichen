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
            <div class="box-nav-left"><img src="${ctx}/images/16.png" width="149"/></div>
            <div class="box-nav-right"><strong>首页 > 人物风采</strong></div>
        </div>
        <img src="${ctx}/images/002.png" width="1003"/>
        <div class="abouttext-img">
                <div class="picmain_up">
                    <div class="picmain_pic"><a href="${ctx}/departmentDetail?id=177e6d7cc7ed472eb641adc7654a73e7&type=1"><img src="${ctx}/images/ch.png" width="100%"/><p>人物风采</p></a></div>
                    <div class="picmain_pic"><a href="${ctx}/departmentDetail?id=177e6d7cc7ed472eb641adc7654a73e7&type=1"><img src="${ctx}/images/ch.png" width="100%"/><p>人物风采</p></a></div>
                    <div class="picmain_pic"><a href="${ctx}/departmentDetail?id=177e6d7cc7ed472eb641adc7654a73e7&type=1"><img src="${ctx}/images/ch.png" width="100%"/><p>人物风采</p></a></div>         
                </div>
                <div class="picmain_down">
                    <div class="picmain_pic"><a href="${ctx}/departmentDetail?id=177e6d7cc7ed472eb641adc7654a73e7&type=1"><img src="${ctx}/images/ch.png" width="100%"/><p>人物风采</p></a></div>
                    <div class="picmain_pic"><a href="${ctx}/departmentDetail?id=177e6d7cc7ed472eb641adc7654a73e7&type=1"><img src="${ctx}/images/ch.png" width="100%"/><p>人物风采</p></a></div>
                    <div class="picmain_pic"><a href="${ctx}/departmentDetail?id=177e6d7cc7ed472eb641adc7654a73e7&type=1"><img src="${ctx}/images/ch.png" width="100%"/><p>人物风采</p></a></div>          
                </div>
            </div>
        <img src="${ctx}/images/002.png" width="1003"/>
           <div class="page-normal">
                    <span class="page-prev">&lt;</span>
                    <span class="page-current">1</span>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#">4</a>
                    <a href="#">5</a>
                    <a href="#">6</a>
                    <a href="#">7</a>
                    ...
                    <a href="#">199</a>
                    <a href="#">200</a>
                    <a href="#" class="page-next">&gt;</a>
                </div>
    </div>
</div>
<div style=" clear:both;"></div>
<jsp:include page="common/footer.jsp" flush="true" /> 
</body>
</html>
