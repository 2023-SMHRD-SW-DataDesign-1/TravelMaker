package controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

@WebServlet("/InfowriterCon")
public class InfowriterCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("인포롸이터");
		
		String id = request.getParameter("id");
		String price = request.getParameter("price");
		
		System.out.println(id);
		System.out.println(price);
		
		
		return null;
	}

}
