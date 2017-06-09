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
        <c:if test="${fn:length(personVoList)< 1}">
			<div style="text-align:center;">暂无数据</div>
		</c:if>
		<ul class="imglist">
			<c:forEach items="${personVoList }" var="personVo">
				<li><a href="${ctx}/person/detail?id=${personVo.id}"> <img src="${ctx}/${personVo.imagePath}" /> <span>${personVo.title}</span>
				</a></li>
			</c:forEach>
		</ul>
		<img src="${ctx}/images/002.png" width="1003"/>
		<c:if test="${page.totalCount > 0}">
		<div class="page-normal">
				<a href="${ctx}/person/1">首页</a>
				<c:if test="${page.pageNow != 1}">
					<a href="${ctx}/person/${page.pageNow-1}">上一页</a>
					<a href="${ctx}/person/1">1</a>
					<c:if test="${page.pageNow-1 != 1}">
						<a href="${ctx}/person/${page.pageNow-1}">${page.pageNow-1}</a>
					</c:if>
				</c:if>
				<a class="current">${page.pageNow}</a>
				<c:if test="${page.pageNow != page.totalPageCount}">
					<c:if test="${page.pageNow+1 != page.totalPageCount}">
						<a href="${ctx}/person/${page.pageNow+1}">${page.pageNow+1}</a>
					</c:if>
					<a href="${ctx}/person/${page.totalPageCount}">${page.totalPageCount}</a>
					<a href="${ctx}/person/${page.pageNow+1}">下一页</a>
				</c:if>
				<a href="${ctx}/person/${page.totalPageCount}">末页</a>
			</div>
			</c:if>
		</div>
</div>
<div style=" clear:both;"></div>
<jsp:include page="common/footer.jsp" flush="true" /> 
</body>
</html>
