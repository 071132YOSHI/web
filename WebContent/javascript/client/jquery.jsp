<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script>
<%
//本でやるよりもとりあえずネットからこういう超簡単なのをどんどんここにめもっていく。
//こっちのほうが効率がいい。
//あと基本的に一つの言語だけやってればいい。
//つまりjavaで作る。
//1,基本の使い方
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
//



%>

${.red}.css("color","pink");







</script>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<div class="red">こんばんわ </div>

</body>
</html>