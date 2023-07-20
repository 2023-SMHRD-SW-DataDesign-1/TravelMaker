package controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.UserDAO;
import model.UserDTO;

@WebServlet("/LoginCon")
public class LoginCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("[LoginCon]");

		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pw");
		
		System.out.println(user_id);
		System.out.println(user_pw);
		
		UserDTO info = new UserDAO().login(new UserDTO(user_id, user_pw));
		System.out.println(info);
		
		if(info != null) {
			System.out.println("로그인 성공");
			HttpSession session = request.getSession();
			
			session.setAttribute("info", info);
		} else {
			System.out.println("로그인 실패");
		}
		
		
		return "Main.jsp";
	}

}
