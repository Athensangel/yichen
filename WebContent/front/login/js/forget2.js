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
	    //使用演示 显示为 秒
	    $("#sendCode").on("click",function(){
	    	var email = $("#email").val();
	    	if(email == ''){
	    		$("#emailError").text("必填信息");
	    		return false;
	    	}else{
	    		 window.location.href = ctx + "/getEmailCode?email="+email;
	    	}
	     //   buttonCountdown($(this), 1000 * 60 * 1, "ss");
	    });
	});

//倒计时
function buttonCountdown($el, msNum, timeFormat) {
    var text = $el.data("text") || $el.text(),
            timer = 0;
    $el.prop("disabled", true).addClass("disabled")
            .on("bc.clear", function () {
            });

    (function countdown() {
        var time = showTime(msNum)[timeFormat];
        $el.text(time + '后失效');
        if (msNum <= 0) {
            msNum = 0;
            clearTime();
        } else {
            msNum -= 1000;
            timer = setTimeout(arguments.callee, 1000);
        }
    })();

    function clearTime() {
        clearTimeout(timer);
        $el.prop("disabled", false).removeClass("disabled").text(text);
    }

    function showTime(ms) {
        var d = Math.floor(ms / 1000 / 60 / 60 / 24),
                h = Math.floor(ms / 1000 / 60 / 60 % 24),
                m = Math.floor(ms / 1000 / 60 % 60),
                s = Math.floor(ms / 1000 % 60),
                ss = Math.floor(ms / 1000);

        return {
            d: d + "天",
            h: h + "小时",
            m: m + "分",
            ss: ss + "秒",
            "d:h:m:s": d + "天" + h + "小时" + m + "分" + s + "秒",
            "h:m:s": h + "小时" + m + "分" + s + "秒",
            "m:s": m + "分" + s + "秒"
        };
    }
    return this;
}

