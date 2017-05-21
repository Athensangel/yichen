<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Table</title>
		  <title>用户管理</title>
		<link rel="stylesheet" href="${ctx}/plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="${ctx}/css/global.css" media="all">
		<link rel="stylesheet" href="${ctx}/plugins/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="${ctx}/css/table.css" />
		
	</head>

	<body>
		<div class="admin-main">
		<input type="hidden" id="pageCount" value="${pageCount}"/>
			<blockquote class="layui-elem-quote">
				<a href="${ctx}/back/user/add" class="layui-btn layui-btn-small" id="add">
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
								<th>登录名</th>
								<th>姓名</th>
								<th>密码</th>
								<th>邮箱</th>
								<th>电话</th>
								<th>性别</th>
								<th>状态</th>
								<th>备注</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
						<c:forEach items="${userVoList}" var="user">
							<tr>
								<td><input type="checkbox"></td>
								<td>${user.loginName}</td>
								<td>${user.name}</td>
								<td>${user.password}</td>
								<td>${user.email}</td>
								<td>${user.tel}</td>
								<td>${user.sex}</td>
								<td>${user.state}</td>
								<td>${user.remark}</td>
								<td>
									<a href="/detail-1" target="_blank" class="layui-btn layui-btn-normal layui-btn-mini">预览</a>
									<a href="${ctx}/back/user/up?id=${user.id}" class="layui-btn layui-btn-mini">编辑</a>
									<a href="${ctx}/back/user/del?id=${user.id}" data-id="1" data-opt="del" class="layui-btn layui-btn-danger layui-btn-mini">删除</a>
								</td>
							</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</fieldset>
			<div class="admin-table-page">
				<div id="page" class="page">
			   <a   href="${ctx}/back/user/list/1" >首页</a>
			    <c:if test="${page.pageNow != 1}">
			 		<a href="${ctx}/back/user/list/${page.pageNow-1}">上一页</a>
					<a href="${ctx}/back/user/list/1" >1</a>
				  <c:if test="${page.pageNow-1 != 1}">
					<a href="${ctx}/back/user/list/${page.pageNow-1}">${page.pageNow-1}</a>
				  </c:if>
				</c:if>
					<a  class="current">${page.pageNow}</a>
				<c:if test="${page.pageNow != page.totalPageCount}">
				  <c:if test="${page.pageNow+1 != page.totalPageCount}">
					<a href="${ctx}/back/user/list/${page.pageNow+1}">${page.pageNow+1}</a>
				  </c:if>
					<a href="${ctx}/back/user/list/${page.totalPageCount}">${page.totalPageCount}</a>
					<a href="${ctx}/back/user/list/${page.pageNow+1}" >下一页</a>
			    </c:if>
					<a href="${ctx}/back/user/list/${page.totalPageCount}">末页</a>
				</div>
			</div>
		</div>
		<script type="text/javascript" src="${ctx}/plugins/layui/layui.js"></script>
		<!-- <script>
		    var pages=$("#pageCount").val() ;  
			layui.config({
				base: '${ctx}/plugins/layui/modules/'
			});

			layui.use(['icheck', 'laypage','layer'], function() {
				var $ = layui.jquery,
					laypage = layui.laypage,
					layer = parent.layer === undefined ? layui.layer : parent.layer;
				$('input').iCheck({
					checkboxClass: 'icheckbox_flat-green'
				});

				//page
				laypage({
					cont: 'page',
					pages: 3 //总页数
						,
					groups: 5 //连续显示分页数
						,
					jump: function(obj, first) {
						//得到了当前页，用于向服务端请求对应数据
						var curr = obj.curr;
						if(!first) {
							//layer.msg('第 '+ obj.curr +' 页');
						}
					}
				});

				$('#search').on('click', function() {
					parent.layer.alert('你点击了搜索按钮')
				});

				$('#add').on('click', function() {
					$.get('temp/edit-form.html', null, function(form) {
						layer.open({
							type: 1,
							title: '添加表单',
							content: form,
							btn: ['保存', '取消'],
							area: ['600px', '400px'],
							maxmin: true,
							yes: function(index) {
								console.log(index);
							},
							full: function(elem) {
								var win = window.top === window.self ? window : parent.window;
								$(win).on('resize', function() {
									var $this = $(this);
									elem.width($this.width()).height($this.height()).css({
										top: 0,
										left: 0
									});
									elem.children('div.layui-layer-content').height($this.height() - 95);
								});
							}
						});
					});
				});

				$('#import').on('click', function() {
					var that = this;
					var index = layer.tips('只想提示地精准些', that,{tips: [1, 'white']});
					$('#layui-layer'+index).children('div.layui-layer-content').css('color','#000000');
				});

				$('.site-table tbody tr').on('click', function(event) {
					var $this = $(this);
					var $input = $this.children('td').eq(0).find('input');
					$input.on('ifChecked', function(e) {
						$this.css('background-color', '#EEEEEE');
					});
					$input.on('ifUnchecked', function(e) {
						$this.removeAttr('style');
					});
					$input.iCheck('toggle');
				}).find('input').each(function() {
					var $this = $(this);
					$this.on('ifChecked', function(e) {
						$this.parents('tr').css('background-color', '#EEEEEE');
					});
					$this.on('ifUnchecked', function(e) {
						$this.parents('tr').removeAttr('style');
					});
				});
				$('#selected-all').on('ifChanged', function(event) {
					var $input = $('.site-table tbody tr td').find('input');
					$input.iCheck(event.currentTarget.checked ? 'check' : 'uncheck');
				});
			});
		</script> -->
	</body>

</html>