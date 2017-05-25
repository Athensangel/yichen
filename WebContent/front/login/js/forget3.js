$(function(){
		$("#forgetForm3").validate({
			rules: {
				password: {
					required: true,
					minlength: 6,
					maxlength: 32
				},
				repassword: {
					required: true,
					minlength: 6,
					equalTo: "#password"
				}
			},
			messages: {
				password: {
					required: "必填信息",
					minlength: "密码长度不能小于6位",
					maxlength: "密码长度不能超过32位"
				},
				repassword: {
					required: "必填信息",
					minlength: "密码长度不能小于6位",
					equalTo: "两次输入密码不一致"
				}
			},
	        submitHandler: function(form){
                  form.submit();   
	        },
	        errorPlacement: function(error, element) { 
	        	 error.appendTo(element.parent().find(".errorTip"));
	         }
		});

	});
