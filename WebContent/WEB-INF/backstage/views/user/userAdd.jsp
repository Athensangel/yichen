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
	</head>
	<body>
		<div style="margin: 15px;">
			<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
				<legend>添加用户信息</legend>
			</fieldset>
			<form class="layui-form" id="userAdd">
				<div class="layui-form-item">
					<label class="layui-form-label">登录名</label>
					<div class="layui-input-block">
						<input name="loginName" lay-verify="loginName" autocomplete="off" placeholder="请输入登录名" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">密码</label>
					<div class="layui-input-block">
						<input  type="password" name="password"  lay-verify="pass" placeholder="请输入密码" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">姓名</label>
					<div class="layui-input-block">
						<input  name="name"  lay-verify="name" placeholder="请输入姓名" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">邮箱</label>
					<div class="layui-input-inline">
						<input  name="email" lay-verify="email" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">电话</label>
					<div class="layui-input-inline">
						<input  name="tel"  lay-verify="phone" autocomplete="off" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">性别</label>
					<div class="layui-input-block">
						<input type="radio" name="sex" value="0" title="男" checked>
						<input type="radio" name="sex" value="1" title="女">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">状态</label>
					<div class="layui-input-block">
						<input type="radio" name="state" value="0" title="启用"checked>
						<input type="radio" name="state" value="1" title="禁用">
					</div>
				</div>
				<div class="layui-form-item layui-form-text">
					<label class="layui-form-label">备注</label>
					<div class="layui-input-block">
						<textarea placeholder="请输入备注" class="layui-textarea"  name="remark"></textarea>
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
						<button class="layui-btn" lay-submit="" lay-filter="demo1" onclick="save()">立即提交</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
		</div>
		<script type="text/javascript">
		 var ctx = "${pageContext.request.contextPath}";
		</script>
		<script type="text/javascript" src="${ctx}/js/jquery.js"></script>
		<script type="text/javascript" src="${ctx}/plugins/layer/layer.js"></script>
		<script type="text/javascript" src="${ctx}/plugins/layui/layui.js"></script>
		<script type="text/javascript" src="${ctx}/backstage/js/user/userAdd.js"></script>
		<script>
			layui.use(['form', 'layedit', 'laydate'], function() {
				var form = layui.form(),
					layer = layui.layer,
					layedit = layui.layedit,
					laydate = layui.laydate;
				var editIndex = layedit.build('LAY_demo_editor');
				form.verify({
					loginName: function(value) {
						if(value.length == 0) {
							return '登录名不能为空';
						}else if(value.length < 3){
							return '登录名至少得3个字符';
						}else if(value.length >20){
							return '登录名不能超过得20个字符';
						}
					},
					pass: [/(.+){6,12}$/, '密码必须6到12位'],
					name: function(value) {
						if(value.length < 2) {
							return '姓名至少得2个字符';
						}
					}
				});
			});
		</script>
	</body>

</html>