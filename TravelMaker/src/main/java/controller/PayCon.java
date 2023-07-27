package controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.CashDTO;
import model.UserDAO;
import model.UserDTO;

@WebServlet("/PayCon")
public class PayCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("페이콘 진입");

		String user_id = request.getParameter("user_id");

		UserDAO udao = new UserDAO();
		UserDTO user_info = udao.userInfo(user_id);

		int cash = user_info.getUser_cash();

		int charge = Integer.parseInt(request.getParameter("charge")) + cash;
		System.out.println("충전된 금액 : " + charge);

		int row = udao.chargeCash(new CashDTO(user_id, charge));
		String moveURL;
		
		if (row > 0) {
			System.out.println("입금성공");
			moveURL = "MyPage_normal.jsp";
		}else {
			System.out.println("입금실패");
			moveURL = "Mypage_normal.jsp";
		}

		return moveURL;
	}

}
