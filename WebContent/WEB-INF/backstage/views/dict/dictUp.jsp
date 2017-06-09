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
				<legend>修改字典信息</legend>
			</fieldset>
			<form class="layui-form" action="${ctx}/back/dict/modify" method="post">
			<input type="hidden" name="id" value="${dictVo.id}">
				<div class="layui-form-item">
					<label class="layui-form-label">类型</label>
					<div class="layui-input-block">
						<input name="type" value="${dictVo.type}" lay-verify="type" autocomplete="off" placeholder="请输入类型" class="layui-input">
					</div> 
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">数据值</label>
					<div class="layui-input-block">
						<input name="value" value="${dictVo.value}"  lay-verify="value" autocomplete="off" placeholder="请输入数据值" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">标签名</label>
					<div class="layui-input-block">
						<input name="label"  value="${dictVo.label}" lay-verify="label" autocomplete="off" placeholder="请输入标签名" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">排序</label>
					<div class="layui-input-block">
						<input name="sort" value="${dictVo.sort}"  lay-verify="sort" autocomplete="off" placeholder="请输入排序" class="layui-input">
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">描述 </label>
					<div class="layui-input-block">
						<textarea class="layui-textarea" name="description">${dictVo.description}</textarea>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">备注</label>
					<div class="layui-input-block">
						<input name="remark" value="${dictVo.remark}" lay-verify="remark" autocomplete="off" placeholder="请输入备注" class="layui-input">
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
				type: function(value) {
					if(value.length == 0) {
						return '类型不能为空';
					}else if(value.length < 3){
						return '类型至少得3个字符';
					}else if(value.length >20){
						return '类型不能超过得20个字符';
					}
				},
				value: function(value) {
					if(value.length == 0) {
						return '数据值不能为空';
					}else if(value.length < 1){
						return '数据值至少得1个字符';
					}else if(value.length >20){
						return '数据值不能超过得20个字符';
					}
				},
				label: function(value) {
					if(value.length == 0) {
						return '标签名不能为空';
					}else if(value.length < 2){
						return '标签名至少得2个字符';
					}else if(value.length >20){
						return '标签名不能超过得20个字符';
					}
				},
				sort: [/^[0-9]*$/, '排序只能是数字'] ,
				description: function(value) {
				 if(value.length >50){
						return '描述不能超过得50个字符';
					}
				},
				remark: function(value) {
				 if(value.length >50){
						return '备注不能超过得50个字符';
					}
				}
			});
		});
		</script>
	</body>
</html>