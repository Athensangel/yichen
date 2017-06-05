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
				<legend>人物风采修改</legend>
			</fieldset>
			<form class="layui-form" action="${ctx}/back/person/modify" method="post"  enctype="multipart/form-data">
			<input type="hidden" name="id" value="${personVo.id }"/>
			<input type="hidden" name="imagePath" value="${personVo. imagePath}"/>
				<div class="layui-form-item">
					<label class="layui-form-label">标题</label>
					<div class="layui-input-block">
						<input name="title" lay-verify="title" autocomplete="off" value="${personVo. title}" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">内容</label>
					<div class="layui-input-block">
						<input name="content" lay-verify="required" autocomplete="off" value="${personVo. content}"  class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">图片(<1M)</label>
					<div class="layui-input-block">
						    <input type="file" id="up" name="myfile" class="input tips" style="width:25%; float:left;"  value=""  data-toggle="hover" data-place="right" data-image="" />
           					<img id="ImgPr" src="${ctx }${personVo. imagePath}">
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
						<input type="submit" value="立即提交" class="layui-btn" lay-submit="" lay-filter="demo1"/>
					</div>
				</div>
			</form>
		</div>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/uploadPreview.min.js"></script>
		<script type="text/javascript" src="${pageContext.request.contextPath}/js/uploadPreview.js"></script>
		<script type="text/javascript" src="${ctx}/plugins/layui/layui.js"></script>
		<script>
		$(document).ready(function(e) {
			//上传图片预览
			$("#up").uploadPreview({ Img: "ImgPr"});
		});
			layui.use(['form', 'layedit', 'laydate'], function() {
				var form = layui.form(),
					layer = layui.layer,
					layedit = layui.layedit,
					laydate = layui.laydate;
				var editIndex = layedit.build('LAY_demo_editor');
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
		</script>
	</body>
</html>