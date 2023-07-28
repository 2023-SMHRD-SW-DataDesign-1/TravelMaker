package controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.ResDAO;
import model.ResDTO;
import model.UserDTO;

@WebServlet("/GosuResponseCon")
public class GosuResponseCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("[GosuResponseCon 접속]");

		
		HttpSession session = request.getSession();
		UserDTO udto = (UserDTO) session.getAttribute("info");
		
		int est_num = Integer.parseInt(request.getParameter("est_num"));
		String user_id = udto.getUser_id();
		String res_content = request.getParameter("res_content");
		int res_fee = Integer.parseInt(request.getParameter("res_fee"));
		
		System.out.println("est_num" + est_num);
		System.out.println("user_id" + user_id);
		System.out.println(res_content);
		System.out.println(res_fee);
		
		ResDAO rdao = new ResDAO();
		int row = rdao.GosuResponse(new ResDTO(est_num, user_id, res_content, res_fee));
		
		if(row > 0) {
			System.out.println("견적소 전송 성공");
			
		}else {
			System.out.println("견적소 실패");
		}
		
		
		
		return "Main.jsp";
	}

}
