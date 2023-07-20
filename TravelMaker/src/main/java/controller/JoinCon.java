package controller;

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

		System.out.println("[JoinCon]");

		String user_id = request.getParameter("id");
		String user_pw = request.getParameter("pw");
		String user_email = request.getParameter("email");
		String user_type = request.getParameter("type");

		System.out.println(user_id);
		System.out.println(user_pw);
		System.out.println(user_type);

		UserDTO dto = new UserDTO(user_id, user_pw, user_email, user_type);
		System.out.println(dto);
		UserDAO dao = new UserDAO();
		int row = dao.join(dto);
		System.out.println(row);
		String moveURL;

		if (row > 0) {
			System.out.println("회원가입 성공");
			moveURL = "forward./test_success.html";
		} else {
			System.out.println("회원가입 실패");
			moveURL = "test.html";
		}

		return moveURL;
	}

}
