package controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.ConsultDAO;
import model.ConsultDTO;
import model.UserDTO;

@WebServlet("/ConsultCon")
public class ConsultCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("컨설트컨트롤러");

		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		/*
		 * HttpSession session = request.getSession();
		 * 
		 * UserDTO udto = (UserDTO) session.getAttribute("info");
		 */

		int est_num = 10;
//		String user_id = udto.getUser_id();
		String user_id = "sun";
		String cons_lat = request.getParameter("lat");
		String cons_lng = request.getParameter("lng");
		String cons_content = request.getParameter("cons_content");

		ConsultDAO cdao = new ConsultDAO();

		int row = cdao.uploadConsult(new ConsultDTO(est_num, user_id, cons_lat, cons_lng, cons_content));

		if (row > 0) {
			System.out.println("성공");
		} else {
			System.out.println("실패");
		}

		return null;
	}

}
