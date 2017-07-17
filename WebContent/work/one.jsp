<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


<%@ page import="java.util.Enumeration"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
1ページ目です<br>

<%

//気軽にリクエスト送りたいだけならリンクでこういう風に飛ばしたらくっそらく。
//とりあえずサーブレットでセッションいれるのとjspでセッションいれるのは成功した。
//別々のページに遷移ならsession.invalidate();を使ってセッション破棄を１ページ目からしてもいい。
//けど同一ページなら二回目にきたときにセッションけされるとやばいから使えない。
//練習なら二ページでやってもいい。デバッグに超時間かかるから。


%>
<a href="/Rensyu_web/FrontController?BUTTON_ID=01&get2=ok" >押してください</a>
<br>
<% //サーブレット２個目でもリクエスト見えてます %>
<a href="/Rensyu_web/FrontController?BUTTON_ID=response_dokomade&get2=ok" >レスポンスが２つ目のサーブレットで見えるか</a>
<br>
<a href="one_tugi.jsp?BUTTON_ID=01&get2=ok" >jspリンクでリクエストが見えるか</a>

<br>
<br>

<%
int value =1;

%>
<a href="/Rensyu_web/FrontController?BUTTON_ID=action&get2=ok" >アクション、ＤＡＯからセッションにいれれるか</a>

<br>

<form action="/Rensyu_web/FrontController" >

<input type="hidden" name="BUTTON_ID" value="mozi">
<input type="hidden" name="get2" value=${'form'.concat(value)}>
<input type="submit" value="文字列検査" >

</form>



<%
//これ丸パクリする。セッション情報の消し方
//単体テスト用ならこれ必須
if(session.getAttribute("get")!=null)
	session.removeAttribute("get");
if(session.getAttribute("get2")!=null)
	session.removeAttribute("get2");
if(session.getAttribute("action")!=null)
	session.removeAttribute("get");
if(session.getAttribute("dao")!=null)
	session.removeAttribute("get2");



session.setAttribute("KEY01","DATA01");
session.setAttribute("KEY02","DATA02");
session.setAttribute("KEY03","DATA03");

//セッション情報すべて見れるやり方

Enumeration e = session.getAttributeNames();
while(e.hasMoreElements()) {
    String key = (String)e.nextElement();
    out.println( key + "：" + session.getAttribute(key) + "<br>");
  }

out.println("リクエストが見えてるか:"+request.getAttribute("get2"));

%>

</body>
</html>