$(function(){
$("#chessType").attr("value", $('#chessSelect option:selected').val());
		$("#msform").validate({
			rules: {
				loginName: {
					required: true,
					minlength: 5,
					maxlength: 20
				},
				password: {
					required: true,
					minlength: 5,
					maxlength: 20
				},
				repassword:{
                    equalTo:"#password"
                } 
			},
			messages: {
				loginName: {
					required: "必填信息",
					minlength: "用户名长度不能小于5位",
					maxlength: "用户名长度不能超过20"
				},
				password: {
					required: "必填信息",
					minlength: "密码长度不能小于5位",
					maxlength: "密码长度不能超过20"
				},
				repassword:{
                      equalTo:"两次密码输入不一致"
                  } 
				
			},
	        submitHandler: function(form){
                  form.submit(); 
	        },
	        errorPlacement: function(error, element) { 
	        	 error.insertAfter(element); 
	         }
		});

	});
