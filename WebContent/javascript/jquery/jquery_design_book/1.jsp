<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>



<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script type="text/javascript">

/*
 縦プルダウンのやつ

 基本的にやるやり方
 １、とりあえず全表示のやつ作る
 ２、それをdisplay:none;にして消す
 $('セレクタ').css('display','none');
 で消す。



 ３、javascriptで表示する
 表示したかったら
 $('セレクタ').css('display','display'');





 しかしてない

 なんかcss二重に定義しても適応はされてる。







 */


</script>



<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style>

ul.navi{

width:220px;
margin:0px;

}

ul.navi,ul.menu{

list-style:none;
margin:0px;
padding:0px;


}

.category{

hitght:40px;
background-color:#e6e6fa;


}

ul.menu{

color:red;
display:block;
background-color:#f0f8ff;
margin:0px;
padding:0px;


}

.open{

background-color:#798799;



}

ul.menu:hover{

background-color:lightsteelblue;

}



</style>


<script type="text/javascript">
//アニメーションで下げるときはslideUp(),slideDown()を使う。一応ＵＰしてるときはnone扱いらしい。
//このやり方でもできる。超明快なやり方、ただ要素変えてるだけ。
$(function(){


	$('ul.menu').css('display','none');




	$('div.category').click(function(){

		$('div.category').removeClass('open');


		if($('ul.menu').css('display')=='none'){
			//$('ul.menu').css('display','block');


			$('div.category').addClass('open');
			$('ul.menu').slideDown('1000');

		}else{


			//$('ul.menu').css('display','none');
			$('ul.menu').slideUp('1000');
			$('div.category').removeClass('open');

		}




	});



});










/*
 * jquery入ってるかの確認


javascript:(function() {
    alert('jQuery is ' + typeof jQuery);
    alert('jQuery UI is ' + typeof jQuery.ui);
})();

*/


</script>



</head>
<body>





<ul class="navi">
<li>

<div class="category">1</div>
<ul class="menu">
<li>
siran
</li>
<li>
ok
</li>




</ul>
</li>

<li class="category">2
</li>

<li class="category">3
</li>




</ul>











</body>
</html>