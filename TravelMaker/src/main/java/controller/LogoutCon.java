package controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;

@WebServlet("/LogoutCon")
public class LogoutCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {


		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("[LogoutCon]");
		
		HttpSession session = request.getSession();
		
		session.removeAttribute("info");
				
		return "Main.jsp";
	}

}
