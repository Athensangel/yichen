<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<jsp:include page="common/header.jsp" flush="true" /> 
<body>
<div class="top"></div>
<div id="wrap"><!--整体-->
<div id="ycSearch">
    <div class="input">
        <input type="text" id="search"/><span class="clear" id="cls">X</span>
          <button>搜索</button>
    </div>
</div>
<c:if test="${currentUserVo.loginName eq null }">
<span style="float: right;"><a href="${ctx }/login">登录</a>&nbsp;&nbsp;&nbsp;<a href="${ctx }/login">注册</a>&nbsp;&nbsp;&nbsp;<a href="${ctx }/chessReg">棋手注册</a></span>
</c:if>
<c:if test="${currentUserVo.loginName ne null }">
<span style="float: right;">欢迎${currentUserVo.loginName }登录&nbsp;&nbsp;&nbsp;<a href="${ctx }/loginExt">退出</a></span>
</c:if>
<jsp:include page="common/menu.jsp" flush="true" /> 
    <div class="index-box">
    	<div class="index-box-up">
        	<div class="index-box-left">
            	<div class="box-nav">
                    <div class="box-nav-left"><img src="${ctx}/images/11.png" width="149"/></div>
                    <div class="box-nav-right"><a href="text.html">+MORE</a></div>
                </div>
                <img src="${ctx}/images/001.png" width="500"/>
                <div class="box-img">
                	<img src="${ctx}/images/1.png" width="156"/>
                	<p>2017年全国围棋锦标赛(团体)定于2017年6月7日至18日在浙江省衢州市举行。现将有关事项补充通知如下一、请各单位严格按体育总局体群字〔2017〕71号文件要求，推荐一个符合条件的单位，于6月2日前填写“全国群众体育先进单位推荐表”(见附件)并加盖单位公章，寄至中国象棋协会</p>
                </div>
                <img src="${ctx}/images/001.png" width="500"/>
                </div>
            <div class="index-box-right">
            <div class="box-nav">
                    <div class="box-nav-left"><img src="${ctx}/images/12.png" width="149"/></div>
                    <div class="box-nav-right"><a href="text.html">+MORE</a></div>
                </div>
                <img src="${ctx}/images/001.png" width="470"/>
                <div class="box-img">
                	<img src="${ctx}/images/1.png" width="156"/>
                	<p>根据国家体育总局《关于开展2013-2016年度全国群众体育先进单位和先进个人评选表彰工作的通知》(体群字〔2017〕71号)文件要求，象棋项目将有五个名额入选2013-2016年度全国群众体育先进单位，并在第十三届全运会期间给予表彰。为确保评选工作公平、公正。现将有关事项通知如下：
					</p>
                </div>
                <img src="${ctx}/images/001.png" width="470"/>
            </div>
        </div>
        <div style=" clear:both;"></div>
    	<div class="index-box-up">
        	<div class="index-box-left">
            	<div class="box-nav">
                    <div class="box-nav-left"><img src="${ctx}/images/13.png" width="149"/></div>
                      <div class="box-nav-right"><a href="${ctx}/news/1">+MORE</a></div>
                </div>
                <img src="${ctx}/images/001.png" width="500"/>
                <ul class="news_list_c">
                <c:forEach items="${messageNews}" var="message">
                  <li><span><fmt:formatDate type="time" value="${message.addTime }" pattern="yyyy-MM-dd HH:mm:ss" /></span> 
                  <a href="${ctx}/newsDetail?id=${message.id }" title="${message.title } ">
                  <c:choose>
                   <c:when test="${fn:length(message.title ) > 18}"><c:out value="${fn:substring(message.title , 0, 18)}..." /></c:when>
                   <c:otherwise><c:out value="${message.title }" /></c:otherwise>
                  </c:choose>
                  </a>
                  </li>
                </c:forEach>
                </ul>
                <img src="${ctx}/images/001.png" width="500"/>
                </div>
            <div class="index-box-right">
            <div class="box-nav">
                    <div class="box-nav-left"><img src="${ctx}/images/14.png" width="149"/></div>
                    <div class="box-nav-right"><a href="${ctx}/news/1">+MORE</a></div>
                </div>
                <img src="${ctx}/images/001.png" width="460"/>
                <ul class="news_list_c">
              <c:forEach items="${messageNotice}" var="notice">
                  <li><span><fmt:formatDate type="time" value="${notice.addTime }" pattern="yyyy-MM-dd HH:mm:ss" /></span> 
                  <a href="${ctx}/newsDetail?id=${notice.id }" title="${notice.title } ">
                  <c:choose>
                   <c:when test="${fn:length(notice.title ) > 18}"><c:out value="${fn:substring(notice.title , 0, 18)}..." /></c:when>
                   <c:otherwise><c:out value="${notice.title }" /></c:otherwise>
                  </c:choose>
                  </a>
                  </li>
                </c:forEach>
                </ul>
                <img src="${ctx}/images/001.png" width="460"/>
            </div>
        </div>
    </div>
    <div style=" clear:both;"></div>
    <div class="pic">
        <div class="pic-pic">
            <a href="pic.html"><img src="${ctx}/images/pic.png" width="159"/></a>
            <a href="pic.html"><img src="${ctx}/images/pic.png" width="159"/></a>
            <a href="pic.html"><img src="${ctx}/images/pic.png" width="159"/></a>
            <a href="pic.html"><img src="${ctx}/images/pic.png" width="159"/></a>
        </div>
    </div>
</div>
<div style=" clear:both;"></div>
<jsp:include page="common/footer.jsp" flush="true" /> 
</body>
</html>

