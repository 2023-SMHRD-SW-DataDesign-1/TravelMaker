package controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.UserDAO;
import model.UserDTO;

@WebServlet("/JoinCon")
public class JoinCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		

		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		System.out.println("[JoinCon]");

		String user_id = request.getParameter("id");
		String user_type = request.getParameter("type");
		String user_name = request.getParameter("name");
		String user_email = request.getParameter("email");
		String user_pw = request.getParameter("pw");
		String act_area = request.getParameter("act_area");

		System.out.println("id : " + user_id);
		System.out.println("type : " + user_type);
		System.out.println("name : " + user_name);
		System.out.println("email : " + user_email);
		System.out.println("pw : " + user_pw);

		UserDTO dto = new UserDTO(user_id, user_type, user_name, user_email, user_pw, act_area);
		System.out.println(dto);
		
		UserDAO dao = new UserDAO();
		int row = dao.join(dto);
		System.out.println(row);
		String moveURL;

		if (row > 0) {
			System.out.println("회원가입 성공");
			moveURL = "forward./Main.jsp";
		} else {
			System.out.println("회원가입 실패");
			moveURL = "Main.jsp";
		}

		return moveURL;
	}

}
