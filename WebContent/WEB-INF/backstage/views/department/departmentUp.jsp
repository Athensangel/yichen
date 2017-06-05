<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="/common/path.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
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
				<legend>修改部门信息</legend>
			</fieldset>
			<form class="layui-form" action="${ctx}/back/department/modify" method="post">
			<input type="hidden" name="id" value="${departmentVo.id}">
				<div class="layui-form-item">
					<label class="layui-form-label">部门名称</label>
					<div class="layui-input-block">
						<input name="name" value="${departmentVo.name}" lay-verify="name" autocomplete="off" placeholder="请输入部门名称" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item layui-form-text">
					<label class="layui-form-label">部门介绍</label>
					<div class="layui-input-block">
						<textarea class="layui-textarea layui-hide" name="introducte" id="LAY_demo_editor">${departmentVo.introducte}</textarea>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">部门类型</label>
					<div class="layui-input-block">
						<input name="type" value="${departmentVo.type}" lay-verify="type" autocomplete="off" placeholder="请输入部门类型" class="layui-input">
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
					name: function(value) {
						if(value.length == 0) {
							return '部门不能为空';
						}else if(value.length < 3){
							return '部门至少得3个字符';
						}else if(value.length >20){
							return '部门不能超过得20个字符';
						}
					},
					type: [/^[0-9]*$/, '部门类型只能是数字']
				});
			});
		</script>
	</body>

</html>