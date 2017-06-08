$(function() {
	$("#chessType").attr("value", $('#chessSelect option:selected').val());
	// 手机号码验证  
	jQuery.validator.addMethod("isMobile", function(value, element) {  
	    var length = value.length;  
	    var mobile = /^(13[0-9]{9})|(18[0-9]{9})|(14[0-9]{9})|(17[0-9]{9})|(15[0-9]{9})$/;  
	    return this.optional(element) || (length == 11 && mobile.test(value));  
	}, "请正确填写您的手机号码");
	$("#msform").validate({
		rules:{
			loginName:{
				required:true,
				minlength:5,
				maxlength:20
			},
			password:{
				required:true,
				minlength:6,
				maxlength:32
			},
			repassword:{
				equalTo:"#password"
			},
			name:{
				required:true,
				minlength:2,
				maxlength:4
			},
			tel:{
				required:true,
				isMobile:true,
				maxlength:11
			},
			email:{
				required:true,
				email:true,
				maxlength:20
			},
			chessTitle:{
				maxlength:20
			},
			grade:{
				maxlength:20
			},
			gradeScore:{
				digits:true,  
				maxlength:20
			},
			remark:{
				maxlength:50
			}
		},
		messages:{
			loginName:{
				required:"必填信息",
				minlength:"用户名长度不能小于5位",
				maxlength:"用户名长度不能超过20"
			},
			password:{
				required:"必填信息",
				minlength:"密码长度不能小于6位",
				maxlength:"密码长度不能超过32"
			},
			repassword:{
				equalTo:"两次密码输入不一致"
			},
			name:{
				required:"必填信息",
				minlength:"姓名长度不能小于2个字符",
				maxlength:"姓名长度不能超过4个字符"
			},
			tel:{
				  required:"必填信息",  
				  maxlength:"确认手机不能超过11位",  
	              isMobile:"请正确填写您的手机号码"  
			},
			email:{
				required:"必填信息",
				email: "请输入正确格式的电子邮件",
				maxlength:"邮箱长度不能超过50"
			},
			chessTitle:{
				maxlength:"运动员称号长度不能超过20"
			},
			grade:{
				maxlength:"等级长度不能超过20"
			},
			gradeScore:{
				digits: "只能输入整数",
				maxlength:"等级分数长度不能超过20"
			},
			remark:{
				maxlength:"备注长度不能超过50"
			}
		},
		submitHandler:function(form) {
			form.submit();
		},
		errorPlacement:function(error, element) {
			error.insertAfter(element);
		}
	});

});

function checkField(val){
  $("#chessType").attr("value", val);
}
