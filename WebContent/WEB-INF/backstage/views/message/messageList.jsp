<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Table</title>
		  <title>消息管理</title>
		<link rel="stylesheet" href="${ctx}/plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="${ctx}/css/global.css" media="all">
		<link rel="stylesheet" href="${ctx}/plugins/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="${ctx}/css/table.css" />
		
	</head>

	<body>
		<div class="admin-main">
		<input type="hidden" id="pageCount" value="${pageCount}"/>
			<blockquote class="layui-elem-quote">
				<a href="${ctx}/back/message/add" class="layui-btn layui-btn-small" id="add">
					<i class="layui-icon">&#xe608;</i> 添加信息
				</a>
				<a href="#" class="layui-btn layui-btn-small" id="import">
					<i class="layui-icon">&#xe608;</i> 导入信息
				</a>
				<a href="#" class="layui-btn layui-btn-small">
					<i class="fa fa-shopping-cart" aria-hidden="true"></i> 导出信息
				</a>
				<a href="javascript:;" class="layui-btn layui-btn-small" id="search">
					<i class="layui-icon">&#xe615;</i> 搜索
				</a>
			</blockquote>
			<fieldset class="layui-elem-field">
				<legend>数据列表</legend>
				<div class="layui-field-box">
					<table class="site-table table-hover">
						<thead>
							<tr>
								<th><input type="checkbox" id="selected-all"></th>
								<th>序号</th>
								<th>标题</th>
								<th>内容</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${messageVoList}" var="message" varStatus="status">
							<tr>
								<td><input type="checkbox"></td>
								<td>${status.index+1}</td>
								<td>${message.title}</td>
								<td>${message.content}</td>
								<td>
									<a href="/detail-1" target="_blank" class="layui-btn layui-btn-normal layui-btn-mini">预览</a>
									<a href="${ctx}/back/message/up?id=${message.id}" class="layui-btn layui-btn-mini">编辑</a>
									<a href="${ctx}/back/message/del?id=${message.id}" data-id="1" data-opt="del" class="layui-btn layui-btn-danger layui-btn-mini">删除</a>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</fieldset>
			<div class="admin-table-page">
				<div id="page" class="page">
			   <a   href="${ctx}/back/message/list/1" >首页</a>
			    <c:if test="${page.pageNow != 1}">
			 		<a href="${ctx}/back/message/list/${page.pageNow-1}">上一页</a>
					<a href="${ctx}/back/message/list/1" >1</a>
				  <c:if test="${page.pageNow-1 != 1}">
					<a href="${ctx}/back/message/list/${page.pageNow-1}">${page.pageNow-1}</a>
				  </c:if>
				</c:if>
					<a  class="current">${page.pageNow}</a>
				<c:if test="${page.pageNow != page.totalPageCount}">
				  <c:if test="${page.pageNow+1 != page.totalPageCount}">
					<a href="${ctx}/back/message/list/${page.pageNow+1}">${page.pageNow+1}</a>
				  </c:if>
					<a href="${ctx}/back/message/list/${page.totalPageCount}">${page.totalPageCount}</a>
					<a href="${ctx}/back/message/list/${page.pageNow+1}" >下一页</a>
			    </c:if>
					<a href="${ctx}/back/message/list/${page.totalPageCount}">末页</a>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="${ctx}/plugins/layui/layui.js"></script>
	</body>

</html>