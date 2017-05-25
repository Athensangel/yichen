$(function(){
$("#chessType").attr("value", $('#chessSelect option:selected').val());
		$("#msform").validate({
			rules: {
				loginName: {
					required: true,
					minlength: 5,
					maxlength: 20
				},
				password: "required"
			},
			messages: {
				loginName: {
					required: "必填信息",
					minlength: "密码长度不能小于5位",
					maxlength: "用户名长度不能超过20"
				},
				password: "必填信息"
				
			},
	        submitHandler: function(form){
                  form.submit(); 
	        },
	        errorPlacement: function(error, element) { 
	        	 error.appendTo(element.parent().find(".errorTip"));
	         }
		});

	});