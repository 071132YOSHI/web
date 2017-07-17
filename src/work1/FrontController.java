package work1;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("/FrontController")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FrontController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String buttonId = (String) request.getParameter("BUTTON_ID");
		String page = "/work/two.jsp";
		HttpSession session = request.getSession();

		if (buttonId == null) {

			System.out.println("ボタンＩＤ入ってないです。");
			System.exit(1);

		}
		switch (buttonId) {

		case "01":

			session.setAttribute("get", "true");
			String get2 = (String) request.getParameter("get2");
			session.setAttribute("get2", get2);

			page = "/work/two.jsp";

			break;

		case "response_dokomade":

			page = "/Servelet01";

			break;

		case "action":

			action1 action = new action1();
			action.getSession(request);
			page = "/work/two.jsp";

			break;

		case "table":

			Pan pan1 = new Pan();
			Pan pan2 = new Pan("2", "3", "4", "34");
			ArrayList<Pan> pans = new ArrayList<Pan>();

			pans.add(pan1);
			pans.add(pan2);

			session.setAttribute("pan", pans);

			page = "/work/table.jsp";

		case "mozi":

			String correct = "form1";



			System.out.println("写っているか:"+request.getAttribute("get2"));

			if (correct.equals(request.getAttribute("get2"))) {

				System.out.println("${}で結合しても同じことでした");

			}else{

				System.out.println("違いました");
			}
			page = "/work/two.jsp";


		case "delete":

			ArrayList<Order> delete_orders = new ArrayList<Order>();
			delete_orders=(ArrayList<Order>)session.getAttribute("Orders");
			if(session.getAttribute("Orders")==null){

				System.out.println("オーダーが入っていません");
				System.exit(1);

			}

			int select =Integer.parseInt(request.getParameter("select"));


			delete_orders.remove(select);

			session.setAttribute("Orders", delete_orders);

			page="/work/table.jsp";

		case "henoku":

			ArrayList<Order> henkou_orders = new ArrayList<Order>();
			henkou_orders=(ArrayList<Order>)session.getAttribute("Orders");
			if(session.getAttribute("Orders")==null){

				System.out.println("オーダーが入っていません");
				System.exit(1);

			}

			for(int i=0;i<henkou_orders.size();i++){

				String henkou_form="form"+String.valueOf(i);
				//とりあえずここで数量いれるだけ。
				henkou_orders.get(i).setNumber(Integer.parseInt(request.getParameter(henkou_form)));

			}


			page="/work/table.jsp";

		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(page);

		dispatcher.forward(request, response);

	}

}
