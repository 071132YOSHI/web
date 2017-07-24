<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript">


<%
//onloadにいれないと普通に前から実行されるだけのやつになる
//1,変数名


%>

var a=1;


<%//2,HTML出力   %>
document.write(a);

<%//３、コンソール出力%>

conso

<%//4、アラーと出力%>
window.alert('a');

<%//5,if%>

if(a==1){

	window.alert('konnbanwa');

}else{


	window.alert('ohayou');
}



<%//配列%>

var ary=new Array();
var ary_1=new Array(10);
var ary_2=['A','b'];

document.write(ary_2[0]);

<%//関数%>

function area(a,b){

	result=a*b;
	return result;

}

<%//イベントハンドら%>

<input type="button" onclick="area()"/>
	<input type="button" id="btn" onclick="window.alert()"/>



document.getElementById("#btn").onclick =function(){

	window.alert("konnbanwa");

}


<%//値の取得%>

<form name="a" >
<input name="b" value="1">

document.a.b.value=2;

<%

//階層指定はＨＴＭＬから下っていく、そもそもやる必要がない。

%>

























</script>







<title>Insert title here</title>
</head>
<body>

</body>
</html>