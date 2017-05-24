<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>弈辰棋社棋手注册</title>
<link rel="stylesheet" media="screen" href="${ctx }/front/chessRegister/css/css.css" />
</head>
<form id="msform">
	<ul id="progressbar">
		<li class="active">第一步</li>
		<li>第二步</li>
		<li>第三步</li>
	</ul>
	<fieldset>
		<h2 class="fs-title">棋手注册流程</h2>
		<h3 class="fs-subtitle">选择注册棋类</h3>
		<select>
		<c:forEach items="${dvList }" var="dv">
		  <option value ="${dv.value }">${dv.label }</option>
		  </c:forEach>
		</select>
		<input type="button" name="next" class="next action-button" value="下一步" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">填写资料</h2>
		<input type="text" name="loginName" placeholder="帐号" />
		<input type="text" name="password" placeholder="密码" />
		<input type="text" name="repassword" placeholder="确认密码" />
		<input type="text" name="twitter" placeholder="姓名" />
		<select>
		  <option value ="1">男</option>
		  <option value ="2">女</option>
		</select>
		<input type="text" onfocus="WdatePicker({dateFmt:'yyyy-MM-dd',isShowClear:true,maxDate:'%y-%M-%d'});" name="" placeholder="出生日期" >
		<input type="text" name="gplus" placeholder="联系电话" />
		<input type="text" name="email" placeholder="QQ邮箱" />
		<input type="button" name="previous" class="previous action-button" value="上一步" />
		<input type="button" name="next" class="next action-button" value="下一步" />
	</fieldset>
	<fieldset>
		<h2 class="fs-title">完善信息</h2>
		<h3 class="fs-subtitle">注册信息提交，管理员将在15个工作日内审核</h3>
	    <input type="text" name="gplus" placeholder="运动员称号" />
		<input type="text" name="gplus" placeholder="单位" />
		<input type="text" name="gplus" placeholder="注册身份 " />
		<input type="text" name="gplus" placeholder="身份证" />
		<input type="text" name="gplus" placeholder="等级" />
		<input type="text" name="gplus" placeholder="等级分" />
		<textarea name="remark" placeholder="备注"></textarea>
		<input type="button" name="previous" class="previous action-button" value="上一步" />
		<input type="submit" name="submit" class="submit action-button" value="确认注册" />
	</fieldset>
</form>
<script src="${ctx }/js/My97DatePicker/WdatePicker.js" type="text/javascript"></script>
<script src="${ctx }/js/jquery.js" type="text/javascript"></script>
<script src="${ctx }/front/chessRegister/js/jquery.easing.min.js" type="text/javascript"></script>
<script src="${ctx }/front/chessRegister/js/jQuery.time.js" type="text/javascript"></script>
</body>
</html>