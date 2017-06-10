<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<jsp:include page="common/header.jsp" flush="true" /> 
<link href="${ctx}/front/activity/css/activity.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${ctx}/front/activity/js/jquery.eventFlow.js"></script>
<script type="text/javascript" src="${ctx}/front/activity/js/activity.js"></script>
<body>
<div class="top"></div>
<div id="wrap"><!--整体-->
<jsp:include page="common/menu.jsp" flush="true" />
		<div>
			<div class="box-nav">
				<div class="box-nav-left">
					<img src="${ctx}/images/15.png" width="149" />
				</div>
				<div class="box-nav-right">
					<strong>首页 > 文化建设 >文化活动</strong>
				</div>
			</div>
			<img src="${ctx}/images/002.png" width="1003" />
			<div class="abouttext" style="height: 900px;">
				<div class="contrainer header">
					<div class="w1000 tc body">
						<h1 class='header'>文化活动</h1>
						<div class="event_wrap clearfix">
							<div class="middle_line"></div>
						</div>
					</div>
				</div>
			</div>
			<img src="${ctx}/images/002.png" width="1003" />
		</div>
	</div>
<div style=" clear:both;"></div>
<jsp:include page="common/footer.jsp" flush="true" /> 
</body>
</html>
