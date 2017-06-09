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
				<legend>人物风采添加</legend>
			</fieldset>
			<form class="layui-form" action="${ctx}/back/person/save" method="post"  enctype="multipart/form-data">
				<div class="layui-form-item">
					<label class="layui-form-label">标题</label>
					<div class="layui-input-block">
						<input name="title" lay-verify="title" autocomplete="off" placeholder="请输入标题" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">内容</label>
					<div class="layui-input-block">
						<textarea class="layui-textarea" name="content"></textarea>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">图片</label>
					<div class="layui-input-block">
						    <input type="file" id="up" name="myfile" class="input tips" style="width:25%; float:left;"  value=""  data-toggle="hover" data-place="right" data-image="" />
           					<img id="ImgPr" src="">
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
						<input type="submit" value="立即提交" class="layui-btn" lay-submit="" lay-filter="demo1"/>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
		</div>
		<script type="text/javascript" src="${ctx}/js/jquery.js"></script>
		<script type="text/javascript" src="${ctx}/js/uploadPreview.min.js"></script>
		<script type="text/javascript" src="${ctx}/js/uploadPreview.js"></script>
		<script type="text/javascript" src="${ctx}/plugins/layui/layui.js"></script>
		<script>
		layui.use(['form', 'layedit', 'laydate'], function() {
			var form = layui.form(),
				layer = layui.layer,
				layedit = layui.layedit,
				laydate = layui.laydate;

			//创建一个编辑器
			var editIndex = layedit.build('LAY_demo_editor');
			//自定义验证规则
			form.verify({
				title: function(value) {
					if(value.length < 1) {
						return '标题至少得1个字符';
					}
				},
				content: function(value) {
					layedit.sync(editIndex);
				}
			});
		});
		$(document).ready(function(e) {
			//上传图片预览
			$("#up").uploadPreview({ Img: "ImgPr"});
		});
		</script>
	</body>
</html>