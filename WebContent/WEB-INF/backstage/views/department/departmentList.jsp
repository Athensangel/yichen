<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<link rel="stylesheet" href="${ctx}/plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="${ctx}/css/global.css" media="all">
	</head>
	<body>
		<div class="admin-main">
			<blockquote class="layui-elem-quote">
				<a href="${ctx}/back/department/add" class="layui-btn layui-btn-small" id="add">
					<i class="layui-icon">&#xe608;</i> 添加信息
				</a>
				<a href="javascript:;" class="layui-btn layui-btn-small" id="import">
					<i class="layui-icon">&#xe608;</i> 导入信息
				</a>
				<a href="javascript:;" class="layui-btn layui-btn-small">
					<i class="fa fa-shopping-cart" aria-hidden="true"></i> 导出信息
				</a>
				<a href="javascript:;" class="layui-btn layui-btn-small" id="delete" onclick="batchDel()">
				    <i class="layui-icon">&#xe640;</i> 批量删除
				</a>
			</blockquote>
			<fieldset class="layui-elem-field">
				<legend>数据列表</legend>
				<div class="layui-field-box">
					<table class="site-table table-hover">
						<thead>
							<tr>
								<th width="1%"><input type="checkbox" id="selected-all"></th>
								<th width="2%">序号</th>
								<th width="5%">部门名称</th>
								<th width="30%">部门介绍</th>
								<th width="4%">部门类型</th>
								<th width="10%">操作</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${departmentVoList}" var="department" varStatus="status">
							<tr>
								<td><input type="checkbox" name="checkbox"><input type="hidden" value="${department.id}"/></td>
								<td>${status.index+1}</td>
								<td>${department.name}</td>
								<td>${department.introducte}</td>
								<td>${department.type}</td>
								<td>
									<a href="javascript:;" target="_blank" class="layui-btn layui-btn-normal layui-btn-mini">预览</a>
									<a href="${ctx}/back/department/up?id=${department.id}" class="layui-btn layui-btn-mini">编辑</a>
									<a href="${ctx}/back/department/del?id=${department.id}" data-id="1" data-opt="del" class="layui-btn layui-btn-danger layui-btn-mini">删除</a>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</fieldset>
		</div>
		<script type="text/javascript" src="${ctx}/js/jquery.js"></script>
		<script type="text/javascript" src="${ctx}/plugins/layer/layer.js"></script>
		<script type="text/javascript" src="${ctx}/plugins/layui/layui.js"></script>
		<script type="text/javascript" src="${ctx}/backstage/js/department/department.js"></script>
	</body>
</html>