(function(){
	var speed = 10; //滚动速度
    var lis = 200; //单个单位的宽度
	var i = 0;
    var t = true;
	var a = parseInt($('#bottompic').css('width'));
    var b = parseInt($('#bottompic2 li').length * lis);
    $('#bottompic2').css('width',b)
	var distance = b-a;
    function add(){
        i++;
    }
    function reduce(){
        i--;
    }
    function jia(){
        if((i< distance || i<i) && t){
            add();
        }else if(i >= distance || !t){
            t= false;
            reduce();
        }
        if(i==0){
            t = true;
        }
    $('#bottompic2').css('left',-i)
    }
    var d = setInterval(jia, speed);
	$('#bottompic').mouseover(function(){
		clearInterval(d);
	});
	$('#bottompic').mouseleave(function(){
		d = setInterval(jia, speed);
	});
}());