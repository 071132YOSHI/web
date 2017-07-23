<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<script>
	
<%//本でやるよりもとりあえずネットからこういう超簡単なのをどんどんここにめもっていく。
			//こっちのほうが効率がいい。
			//あと基本的に一つの言語だけやってればいい。
			//つまりjavaで作る。
			//基本の使い方
			//${"cssのセレクタとまったく同じ"}.メソッド();
			//メソッドがいろいろあるのがポイント

			//要素の変更
			//color→文字色の変更
			//text→タグ内の文字を変更
			//html→タグ全体を入れ替えれる。$("#photo img").attr("src", "images/cake.jpg");
			//attr→タグの要素を変更する。$("#photo img").attr("src", "images/cake.jpg");

			//取得もできる
			//var boxHeight = $("#column").height();高さの取得

			//エフェクト系$("#photo img").fadeOut("slow");
			//#photo 内の img要素をゆっくりフェードアウトで非表示にする。
			//%>
	
<%//1,ＤＯＭ操作
			//いっぱいある,html側になんも書かなくてもこっちでマウスインターとかで
			//できる
			//なんかつなげるときは最後に；を付け内っぽい
			//この書き方がonload時の動きらしい。
			//やるべきことはこのテンプレに対して、ひたすら
			//仲に突っ込んでいくだけ。オンクリックもマウスオーバも
			//全てこの中に突っ込んでいくだけだから。
			//一つの関数のみでいい。
			//ＤＯＭ指定、イベントハンドラー以外はjsから持ってくる。
			//
			
			%>
	
<%//$('div').css('color','red');%>
	jQuery(function($) {
		$('div').css('color', 'red');
		$('#square').mouseenter(function() {
			$(this).attr('src', 'img2.png');
		}).mouseleave(function() {
			$(this).attr('src', 'img1.png');
		});
	});
</script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


	<div>こんばんわ</div>

	<p>
		<img id="square" src="img1.png" />
	</p>


	<script>
		window.alert($.fn.jquery);
	</script>

</body>
</html>