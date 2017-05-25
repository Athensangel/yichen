<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>弈辰棋社找回密码</title>
<link type="text/css" href="${ctx }/css/forget.css" rel="stylesheet" />
<script src="${ctx }/js/jquery.js" type="text/javascript"></script>
<script src="${ctx }/js/jquery.validate.js" type="text/javascript"></script>
<script type="text/javascript" src="${ctx }/front/login/js/forget2.js"></script>
<script type="text/javascript">
   var ctx = "${pageContext.request.contextPath}";
</script>
</head>
<body>
  <div class="content">
   <div class="web-width">
     <div class="for-liucheng">
      <div class="liulist for-cur"></div>
      <div class="liulist for-cur"></div>
      <div class="liulist"></div>
      <div class="liulist"></div>
      <div class="liutextbox">
       <div class="liutext for-cur"><em>1</em><br /><strong>填写账户名</strong></div>
       <div class="liutext for-cur"><em>2</em><br /><strong>验证身份</strong></div>
       <div class="liutext"><em>3</em><br /><strong>设置新密码</strong></div>
       <div class="liutext"><em>4</em><br /><strong>完成</strong></div>
      </div>
     </div>
     <form action="${ctx }/emailVerify" method="post" class="forget-pwd" id="forgetForm2">
       <dl class="sel-yzyx">
        <dt>邮箱：</dt>
        <dd><input type="text" name="email" id="email" value="${email }"/><span class="errorTip"></span><span>${message3 }</span></dd>
        <div class="clears"></div>
       </dl>
       <dl>
        <dt>验证码：</dt>
        <dd><input type="text" name="emailCode" />&nbsp;&nbsp;&nbsp;<a onclick="sendCode()">获取验证码</a><span class="errorTip"></span></dd>
        <div class="clears"></div>
       </dl>
       <div class="subtijiao"><input type="submit" value="提交" /></div> 
      </form>
   </div>
  </div>
  <script type="text/javascript">
</script>
</body>
</html>
