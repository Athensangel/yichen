$(function() {
	$("#chessType").attr("value", $('#chessSelect option:selected').val());
	// 手机号码验证  
	jQuery.validator.addMethod("isMobile", function(value, element) {  
	    var length = value.length;  
	    var mobile = /^(13[0-9]{9})|(18[0-9]{9})|(14[0-9]{9})|(17[0-9]{9})|(15[0-9]{9})$/;  
	    return this.optional(element) || (length == 11 && mobile.test(value));  
	}, "请正确填写您的手机号码");
	$("#msform").validate({
		rules : {
			loginName : {
				required : true,
				minlength : 5,
				maxlength : 20
			},
			password : {
				required : true,
				minlength : 5,
				maxlength : 20
			},
			repassword : {
				equalTo : "#password"
			},
			name : {
				required : true,
				minlength : 5,
				maxlength : 10
			},
			tel : {
				required : true,
				isMobile:true,
				minlength : 11,
				maxlength : 20
			},
			email : {
				required : true,
				email:true,
				minlength : 5,
				maxlength : 20
			},
			chessTitle : {
				required : true,
				minlength : 5,
				maxlength : 20
			},
			grade : {
				required : true,
				minlength : 5,
				maxlength : 20
			},
			remark : {
				required : true,
				minlength : 5,
				maxlength : 20
			}
		},
		messages : {
			loginName : {
				required : "必填信息",
				minlength : "用户名长度不能小于5位",
				maxlength : "用户名长度不能超过20"
			},
			password : {
				required : "必填信息",
				minlength : "密码长度不能小于5位",
				maxlength : "密码长度不能超过20"
			},
			repassword : {
				equalTo : "两次密码输入不一致"
			},
			name : {
				required : "必填信息",
				minlength : "姓名长度不能小于5位",
				maxlength : "姓名长度不能超过20"
			},
			tel : {
				  required : "请输入手机号",  
	              minlength : "确认手机不能小于11个字符",  
	              isMobile : "请正确填写您的手机号码"  
			},
			email : {
				required : "必填信息",
				email: "请输入正确格式的电子邮件",
				minlength : "邮箱长度小于11位",
				maxlength : "邮箱长度不能超过20"
			},
			chessTitle : {
				required : "运动员称号",
				minlength : "运动员称号长度小于11位",
				maxlength : "运动员称号长度不能超过20"
			},
			grade : {
				required : "必填信息",
				minlength : "等级长度小于11位",
				maxlength : "等级长度不能超过20"
			},
			remark : {
				required : "必填信息",
				minlength : "备注长度小于5位",
				maxlength : "备注长度不能超过40"
			}
		},
		submitHandler : function(form) {
			form.submit();
		},
		errorPlacement : function(error, element) {
			error.insertAfter(element);
		}
	});

});
