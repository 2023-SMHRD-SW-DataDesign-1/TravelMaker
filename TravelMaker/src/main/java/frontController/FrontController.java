package frontController;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import controller.ConsultCon;
import controller.DeletepicCon;
import controller.EstimateWriteCon;
import controller.GosuResponseCon;
import controller.InfoBuyCon;
import controller.InfowriterCon;
import controller.JoinCon;
import controller.LoginCon;
import controller.LogoutCon;
import controller.PayCon;
import controller.PortCon;
import controller.SendCon;
import controller.UploadpicCon;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	HashMap<String, Command> list = null;

	public void init(ServletConfig config) throws ServletException {
		list = new HashMap<String, Command>();

		list.put("JoinCon.do", new JoinCon());
		list.put("LoginCon.do", new LoginCon());
		list.put("LogoutCon.do", new LogoutCon());
		list.put("InfowriterCon.do", new InfowriterCon());
		list.put("SendCon.do", new SendCon());
		list.put("ConsultCon.do", new ConsultCon());
		list.put("PayCon.do", new PayCon());
		list.put("UploadpicCon.do", new UploadpicCon());
		list.put("DeletepicCon.do", new DeletepicCon());
		list.put("GosuResponseCon.do", new GosuResponseCon());
		list.put("InfoBuyCon.do", new InfoBuyCon());
		list.put("PortCon.do", new PortCon());
		list.put("EstimateWriteCon.do", new EstimateWriteCon());
		
		
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("[FrontController]");

		String reqURI = request.getRequestURI();
		System.out.println(reqURI);

		String contextPath = request.getContextPath();
		System.out.println(contextPath);

		String path = reqURI.substring(contextPath.length() + 1);

		Command con = list.get(path);
		String moveURL = con.execute(request, response);

		if (moveURL.contains("forward")) {
			moveURL = moveURL.substring("forward".length());
			RequestDispatcher rd = request.getRequestDispatcher(moveURL);
			rd.forward(request, response);
		} else {
			response.sendRedirect(moveURL);
		}
	}

}
