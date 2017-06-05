<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/path.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>表单</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">
		<link rel="stylesheet" href="${ctx}/plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="${ctx}/plugins/font-awesome/css/font-awesome.min.css">
	</head>
	<body>
		<div style="margin: 15px;">
			<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
				<legend>添加成员信息</legend>
			</fieldset>
			<form class="layui-form" action="${ctx}/back/message/modify" method="post">
			<input type="hidden" name="id" value="${messageVo.id}">
				<div class="layui-form-item">
					<label class="layui-form-label">标题</label>
					<div class="layui-input-block">
						<input name="title" value="${messageVo.title}" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item layui-form-text">
					<label class="layui-form-label">内容</label>
					<div class="layui-input-block">
						<textarea class="layui-textarea layui-hide" name="content"  lay-verify="content" id="LAY_demo_editor"> ${messageVo.content}</textarea>
					</div>
				</div>
			    <div class="layui-form-item">
					<label class="layui-form-label">类别</label>
					<div class="layui-input-block">
						<input type="radio" name="type" value="1" title="最新动态" <c:if test="${messageVo.type eq 1}" >checked</c:if> >
						<input type="radio" name="type" value="2" title="公告通知" <c:if test="${messageVo.type eq 2}" >checked</c:if> >
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
						<button class="layui-btn" lay-submit="" lay-filter="demo1">立即提交</button>
					</div>
				</div>
			</form>
		</div>
		<script type="text/javascript" src="${ctx}/plugins/layui/layui.js"></script>
		<script>
			layui.use(['form', 'layedit', 'laydate'], function() {
				var form = layui.form(),
					layer = layui.layer,
					layedit = layui.layedit,
					laydate = layui.laydate;
				var editIndex = layedit.build('LAY_demo_editor');
				form.verify({
					title: function(value) {
						if(value.length < 5) {
							return '标题至少得5个字符';
						}
					}
				});
			});
		</script>
	</body>

</html>