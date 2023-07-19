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
import controller.JoinCon;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	HashMap<String, Command> list = null;
	
	public void init(ServletConfig config) throws ServletException {
		list = new HashMap<String, Command>();
		
		list.put("JoinCon.do", new JoinCon());
	}

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("[FrontController]");
		
		String reqURI = request.getRequestURI();
		System.out.println(reqURI);
		
		String contextPath = request.getContextPath();
		System.out.println(contextPath);
		
		String path = reqURI.substring(contextPath.length()+1);
		
		Command con = list.get(path);
		String moveURL = con.execute(request, response);
		
		if(moveURL.contains("forward")) {
			moveURL = moveURL.substring("forward".length());
			RequestDispatcher rd = request.getRequestDispatcher(moveURL);
			System.out.println("성공");
			rd.forward(request, response);
		}else {
			System.out.println("실패");
			response.sendRedirect(moveURL);
		}
	}

}
