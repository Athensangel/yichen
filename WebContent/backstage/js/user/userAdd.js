//新增
function save() {
	debugger;
    $.ajax({
        type:"post",
        url:ctx + "/back/user/save.ajax",
        data:$('#userAdd').serialize(),
        async:false,
        traditional: true,
        success:function(data){
            if(data.code == 10000){
                layer.msg("添加成功！",{icon: 6,time: 2000},function(){
                	 window.location.href = ctx + "/back/user/list/1";
                });
            } else {
				if (data.msg && data.msg != null  && data.msg != '') {
					layer.msg(data.msg, {icon: 2, shade: [0.4], time:1500});
				} else {
					layer.msg("添加失败！", {icon: 2, shade: [0.4], time: 1500});
				}
            }
        }
    });
}