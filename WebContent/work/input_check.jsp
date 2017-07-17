<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="/Rensyu_web/FrontController" name="js" >
これは使える
    <input type="text" max="10"/>
    <br>
実験<INPUT type="text" name="1"  onkeyDown="return numOnly()"><BR>

    <br>
    <%
    //数値以外入れさせないやつ完成。最大値も最低値も決めれる。

    %>
<input type="number" name="example" max="10" onKeyup="this.value=this.value.replace(/[^0-9]+/i,'')">
<input type="submit">
</form>
<%

//フォームバリテーションのやり方ＵＲＬ
//https://liginc.co.jp/345545
%>

<script>
//１．グローバル変数（一時的に保存しておく）を宣言


function numOnly() {
  m = String.fromCharCode(event.keyCode);

  if("0123456789\b\r".indexOf(m, 0) < 0){
	  //   document.js.1.value="";
		 alert("数字を入力してください");
	  }

//alert("数字を入力してください");
  if("0123456789\b\r".indexOf(m, 0) < 0){
	 return false;
  }else{

  return true;

  }
}
</script>

</body>
</html>