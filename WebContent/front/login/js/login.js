$(function(){
	
	$('#switch_qlogin').click(function(){
		$('#switch_login').removeClass("switch_btn_focus").addClass('switch_btn');
		$('#switch_qlogin').removeClass("switch_btn").addClass('switch_btn_focus');
		$('#switch_bottom').animate({left:'0px',width:'70px'});
		$('#qlogin').css('display','none');
		$('#web_qr_login').css('display','block');
		
		});
	$('#switch_login').click(function(){
		
		$('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
		$('#switch_qlogin').removeClass("switch_btn_focus").addClass('switch_btn');
		$('#switch_bottom').animate({left:'154px',width:'70px'});
		
		$('#qlogin').css('display','block');
		$('#web_qr_login').css('display','none');
		});
if(getParam("a")=='0')
{
	$('#switch_login').trigger('click');
}
});
	
function logintab(){
	scrollTo(0);
	$('#switch_qlogin').removeClass("switch_btn_focus").addClass('switch_btn');
	$('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
	$('#switch_bottom').animate({left:'154px',width:'96px'});
	$('#qlogin').css('display','none');
	$('#web_qr_login').css('display','block');
}


//根据参数名获得该参数 pname等于想要的参数名 
function getParam(pname) { 
    var params = location.search.substr(1); // 获取参数 平且去掉？ 
    var ArrParam = params.split('&'); 
    if (ArrParam.length == 1) { 
        //只有一个参数的情况 
        return params.split('=')[1]; 
    } 
    else { 
         //多个参数参数的情况 
        for (var i = 0; i < ArrParam.length; i++) { 
            if (ArrParam[i].split('=')[0] == pname) { 
                return ArrParam[i].split('=')[1]; 
            } 
        } 
    } 
}  

var reMethod = "POST",
	pwdmin = 6;
$(document).ready(function() {
	$('#login').click(function() {
		if ($('#u').val() == "") {
			$('#u').focus().css({
				border: "1px solid red",
				boxShadow: "0 0 2px red"
			});
			$('#loginCue').html("<font color='red'><b>×用户名不能为空</b></font>");
			return false;
		}
		
		if ($('#p').val() == "") {
			$('#p').focus().css({
				border: "1px solid red",
				boxShadow: "0 0 2px red"
			});
			$('#loginCue').html("<font color='red'><b>×密码不能为空</b></font>");
			return false;
		}

		if ($('#u').val().length < 4 || $('#u').val().length > 20) {
			$('#u').focus().css({
				border: "1px solid red",
				boxShadow: "0 0 2px red"
			});
			$('#loginCue').html("<font color='red'><b>×用户名位4-20字符</b></font>");
			return false;

		}
		
		if ($('#p').val().length < pwdmin) {
			$('#p').focus();
			$('#loginCue').html("<font color='red'><b>×密码不能小于" + pwdmin + "位</b></font>");
			return false;
		}
	     $.post( ctx+"/loginValidate",
	    		  {
	    		   loginName:$("#u").val(),
	    		   password:$("#p").val()
	    		  },
	    		  function(data,status){
	    			  if(data.code == 10000){
	    				  window.location.href = ctx +"/main";
	    			  }else{
	    				  $('#loginCue').html("<font color='red'><b>×登录失败:用户名?密码错误?用户未激活?</b></font>");
	    			  }
	    		  });
	});
	
	$('#reg').click(function() {
		if ($('#user').val() == "") {
			$('#user').focus().css({
				border: "1px solid red",
				boxShadow: "0 0 2px red"
			});
			$('#userCue').html("<font color='red'><b>×用户名不能为空</b></font>");
			return false;
		}

		if ($('#user').val().length < 4 || $('#user').val().length > 20) {
			$('#user').focus().css({
				border: "1px solid red",
				boxShadow: "0 0 2px red"
			});
			$('#userCue').html("<font color='red'><b>×用户名位4-20字符</b></font>");
			return false;

		}
	     var userVo = {
	    		 loginName:$("#user").val(),
	    		 password:$("#passwd").val(),
	    		 email:$("#email").val()
	         };

		if ($('#passwd').val().length < pwdmin) {
			$('#passwd').focus();
			$('#userCue').html("<font color='red'><b>×密码不能小于" + pwdmin + "位</b></font>");
			return false;
		}
		if ($('#passwd2').val() != $('#passwd').val()) {
			$('#passwd2').focus();
			$('#userCue').html("<font color='red'><b>×两次密码不一致！</b></font>");
			return false;
		}

		var sqq = /^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/ ;
		if (!sqq.test($('#email').val()) || $('#email').val().length < 5 || $('#email').val().length > 30) {
			$('#email').focus().css({
				border: "1px solid red",
				boxShadow: "0 0 2px red"
			});
			$('#userCue').html("<font color='red'><b>×邮箱格式不正确</b></font>");
			return false;
		} else {
			$('#email').css({
				border: "1px solid #D7D7D7",
				boxShadow: "none"
			});
		}
		$.ajax({
			type: reMethod,
			url: ctx+"/loginRegister",
			data: userVo,
			success: function(data) {
				if (data.code == 10000) {
					$('#loginCue').html("<font color='green'><b>(●'◡'●)注册成功！请登录</b></font>");
					window.location.href = ctx +"/login";
				} else {
					$('#userCue').html("<font color='red'><b>×用户名已存在</b></font>");
					return false;
				}

			}
		});
	});
});