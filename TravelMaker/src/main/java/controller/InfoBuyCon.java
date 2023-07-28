package controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.UserDAO;
import model.UserDTO;

@WebServlet("/InfoBuyCon")
public class InfoBuyCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("인포바이콘 진입");

		UserDAO udao = new UserDAO();

		String user_id = request.getParameter("user_id");
		int info_fee = Integer.parseInt(request.getParameter("info_fee"));

		int user_cash = Integer.parseInt(request.getParameter("user_cash")) - info_fee;
		System.out.println("아이디 : " + user_id);
		System.out.println("info_fee : " + info_fee);
		System.out.println("user_cash : " + user_cash);

		int row = udao.buyInfo(new UserDTO(user_id, user_cash));

		if (row > 0) {
			System.out.println("구매성공");
		} else {
			System.out.println("구매실패");
		}

		return null;
	}

}
