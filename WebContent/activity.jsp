<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<jsp:include page="common/header.jsp" flush="true" /> 
<link href="${ctx}/front/activity/css/activity.css" type="text/css" rel="stylesheet" />
<script type="text/javascript" src="${ctx}/front/activity/js/jquery.eventFlow.js"></script>
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
<script>
$(function(){
	var bigEvent =[{
	'year' : 2016,
	'events' :[
	{
		'mouths' : 2,
		'times' :'2016年2月29',
		'even' :'第九届湘潭市七校棋艺联赛新闻稿'
	},{
		'mouths' : 4,
		'times' :'2016年4月3',
		'even' :'首届五子棋争霸赛新闻稿'
	},{
		'mouths' : 6,
		'times' :'2016年6月3',
		'even' :'弈辰棋社第二课堂新闻稿'
	},{
		'mouths' : 8,
		'times' :'2016年8月22',
		'even' :'弈辰棋社第七届棋王争霸赛圆满结束新闻稿'
	},{
		'mouths' : 10,
		'times' :'2016年6月18',
		'even' :'弈辰棋社第三次成员大会新闻稿'
	},{
		'mouths' : 12,
		'times' :'2016年10月11日',
		'even' :'弈辰棋社第三次成员大会新闻稿'
	}]
},{
	'year' : 2015,
	'events' :[
	{
		'mouths' : 3,
		'times' :'2015年3月18',
		'even' :'3月围棋比赛策划书'
	},{
		'mouths' : 5,
		'times' :'2015年5月15',
		'even' :'5月第四届趣味运动会策划书'
	},{
		'mouths' : 9,
		'times' :'2015年9月15',
		'even' :'9月第六届“棋王争霸赛”活动策划书'
	},{
		'mouths' : 11,
		'times' :'2015年11月25',
		'even' :'11月第六届”棋王争霸赛“外联赞助策划书'
	},{
		'mouths' : 12,
		'times' :'2015年12月15',
		'even' :'12月第六届湖南省高校棋艺邀请赛策划书'
	}
	
	]}];
	$('.event_wrap').eventFlow({'events':bigEvent});
})

</script>
<div style=" clear:both;"></div>
<jsp:include page="common/footer.jsp" flush="true" /> 
</body>
</html>
