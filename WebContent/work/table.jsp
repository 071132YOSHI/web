<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ page import="java.util.ArrayList"%>
<%@ page import="work1.Pan"%>
<%@ page import="work1.Order"%>
<%@ page import="javax.servlet.http.HttpSession"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="/Rensyu_web/FrontController">
		<input type="hidden" name="BUTTON_ID" value="henkou">
		<%
			//１、jspで作る
			//オーダー被る事件は終了
			//表示はおｋ
			//数量変更とデリート事件と一応バリテーションチェック
			//結局submitは一つだけで済む。数量変更と次のページに行くやつだけだから。
			//formを分けれる。一応form分けれるやつ作っとく。
			//流れ的にはとりあえずフォームは一つですんで、ヒデュンでボタンIDポスト
			//あとは全部リクエストにform1,form2...と項目ごとの数量入ってるから
			//それに更新して可変長配列を書き直しセッションに入れ直すだけ。
			ArrayList<Order> orders = new ArrayList<Order>();

			if (session.getAttribute("Orders") == null){
				Order order1 = new Order("a", 2);
				Order new_product = new Order("b", 1);
				Order order2 = new Order("b", 3);
				Order order3 = new Order("c", 4);

				orders.add(order1);
				orders.add(order2);
				orders.add(order3);

				session.setAttribute("Orders", orders);
			}

			orders = (ArrayList<Order>) session.getAttribute("Orders");


			if(orders.size()<2){

				Order order1 = new Order("a", 2);
				Order new_product = new Order("b", 1);
				Order order2 = new Order("b", 3);
				Order order3 = new Order("c", 4);

				orders.add(order1);
				orders.add(order2);
				orders.add(order3);



			}

			String form_check = "";
			String form_check_delete = "";

			out.println("<table>");
			for (int i = 0; i < orders.size(); i++) {


			//trim削除も作っておく。
			//削除は単純にもらったやつの番号のArraylist自体を消せばいい。
				out.println("<tr>");
				form_check_delete = String.valueOf(i);
				out.println("<td>"+i+"削除<a href=\"/Rensyu_web/FrontController?BUTTON_ID=delete&value=delete&select="
						+ form_check_delete + "\" >削除ボタン</a>");
				form_check = "form" + String.valueOf(i);
				out.println("<td>数量変更<input type=\"text\" name=\"" + form_check + "\" ");
				out.println("<tr>");


			}
			out.println("<table>");
		%>


	</form>


	こんばんわ









</body>
</html>