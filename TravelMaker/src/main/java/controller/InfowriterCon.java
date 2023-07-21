package controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;

@WebServlet("/InfowriterCon")
public class InfowriterCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("인포롸이터");	
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
						
		String boardtitle = request.getParameter("boardtitle");
		String username = request.getParameter("username");
		String boardcontents = request.getParameter("boardcontents");

		System.out.println(boardtitle);
		System.out.println(username);
		System.out.println(boardcontents);
		
		
		return null;
	}

}
