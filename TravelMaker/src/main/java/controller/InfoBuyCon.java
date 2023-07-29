package controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.HisDTO;
import model.InfoDAO;
import model.InfoDTO;
import model.UserDAO;
import model.UserDTO;

@WebServlet("/InfoBuyCon")
public class InfoBuyCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("인포바이콘 진입");

		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		UserDAO udao = new UserDAO();

		String user_id = request.getParameter("user_id");
		int info_fee = Integer.parseInt(request.getParameter("info_fee"));
		int info_num = Integer.parseInt(request.getParameter("info_num"));

		int user_cash = Integer.parseInt(request.getParameter("user_cash")) - info_fee;
		System.out.println("아이디 : " + user_id);
		System.out.println("info_fee : " + info_fee);
		System.out.println("user_cash : " + user_cash);

		InfoDAO idao = new InfoDAO();

		UserDTO info = udao.userInfo(user_id);

		HisDTO show_his = idao.searchHis(new InfoDTO(user_id, info_num));
		
		String notification = "";

		// trade_his테이블에 사용자의 info_num기록 있으면 구매한상품
		if (show_his != null) {
			System.out.println("이미 구매한 상품");
			notification = "이미 구매한 상품";
		} else {
			// user_cash가 0보다 작으면 금액부족
			if (user_cash < 0) {
				System.out.println("금액부족");
				notification = "금액부족";
			} else {
				
				// 정보 가격만큼 사용자 cash 변경
				int row1 = udao.buyInfo(new UserDTO(user_id, user_cash));
				if (row1 > 0) {
					System.out.println("금액차감성공");
					
					// trade_his테이블에 사용자 이름으로 info_num 등록
					int row = idao.insertHis(new InfoDTO(user_id, info_num));
					if (row > 0) {
						System.out.println("구매 성공");
						notification = "구매 성공";

					} else {
						System.out.println("구매 실패");
					}

				} else {
					System.out.println("금액차감실패");
				}
			}

		}

		HttpSession session = request.getSession();
		session.setAttribute("info", info);
		
	    session.setAttribute("notification", notification);

		 return "Info_DetailPage.jsp?info_num=" + info_num;
	}

}
