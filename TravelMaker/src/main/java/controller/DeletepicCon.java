package controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.UserDAO;
import model.UserDTO;

@WebServlet("/DeletepicCon")
public class DeletepicCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("딜리트 픽 컨트롤러");
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		UserDAO udao = new UserDAO();

		String user_id = request.getParameter("user_id");
		System.out.println("아이디 : " + user_id);

		int row = udao.deletePic(user_id);

		UserDTO info = udao.userInfo(user_id);

		String moveURL = "";
		if (row > 0) {
			System.out.println("삭제 성공");
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
			moveURL = "MyPage_normal.jsp?delete_success=true";

		} else {
			System.out.println("삭제 실패");
			moveURL = "MyPage_normal.jsp";

		}

		return moveURL;
	}

}
