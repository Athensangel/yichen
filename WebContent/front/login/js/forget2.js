$(function(){
		$("#forgetForm2").validate({
			rules: {
				email: {
					required: true,
					email : true,
					minlength: 6,
					maxlength: 50
				},
				emailCode: "required"
			},
			messages: {
				email: {
					required: "必填信息",
					email:"邮箱格式不正确",
					minlength: "邮箱长度不能小于6位",
					maxlength: "邮箱长度不能超过50位"
				},
				emailCode: "必填信息"
			},
	        submitHandler: function(form){
                  form.submit();
	        },
	        errorPlacement: function(error, element) { 
	        	 error.appendTo(element.parent().find(".errorTip"));
	         }
		});

	});
function sendCode(){
		var email = $("#email").val();
	    window.location.href = ctx + "/getEmailCode?email="+email;
	   return false;
}