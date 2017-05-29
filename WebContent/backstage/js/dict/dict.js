$(function() {
	$("#selected-all").click(function() {
		if (this.checked) {
			$("input[name='checkbox']").attr('checked', true)
		} else {
			$("input[name='checkbox']").attr('checked', false)
		}
	});
});

//批量删除
function batchDel() {
	if($("input:checkbox[name='checkbox']:checked").length < 1){
		layer.msg("请选需要删除的记录！", {icon: 5, shade: [0.4], time: 1500});
		return;
	}
	var ids = "";
	$('input:checkbox[name=checkbox]:checked').each(function(i) {
		if (0 == i) {
			ids = $(this).next().val();
		} else {
			ids += ("," + $(this).next().val());
		}
	});
    $.ajax({
        type:"post",
        url:ctx + "/back/dict/batchDel.ajax",
        data:{"ids":ids},
        async:false,
        traditional: true,
        success:function(data){
            if(data.code == 10000){
                layer.msg("删除成功！",{icon: 6,time: 2000},function(){
            	   history.go(0);
                });
            } else {
				if (data.msg && data.msg != null  && data.msg != '') {
					layer.msg(data.msg, {icon: 2, shade: [0.4], time: 1500});
				} else {
					layer.msg("删除失败！", {icon: 2, shade: [0.4], time: 1500});
				}
            }
        }
    });
}