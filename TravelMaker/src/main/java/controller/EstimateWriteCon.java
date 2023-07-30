package controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.ResDAO;
import model.ResDTO;
import model.SendDAO;
import model.SendDTO;
import model.UserDTO;

@WebServlet("/EstimateWriteCon")
public class EstimateWriteCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("견적서작성콘 진업");
		String res_content = request.getParameter("res_content");
		int res_fee = Integer.parseInt(request.getParameter("res_fee"));
		int est_num = Integer.parseInt(request.getParameter("est_num"));
		
		System.out.println(res_content);
		System.out.println(res_fee);
		
		HttpSession session = request.getSession();
		UserDTO info = (UserDTO) session.getAttribute("info");
		String user_id = info.getUser_id();
		
		SendDAO sdao = new SendDAO();
		SendDTO show_est = sdao.EstSend_nomalUser(est_num);
		String res_place = show_est.getSend_place();
		
		ResDAO rdao = new ResDAO();
		int row = rdao.GosuResponse(new ResDTO(est_num, user_id, res_content, res_fee, res_place));
		
		String moveURL = "";
		String noti = "";
		
		if(row>0 ) {
			System.out.println("견적서 작성 성공");
			moveURL = "Gosu_Est_Receive.jsp";
			noti = "견적서를 작성 완료하였습니다";
		}else {
			System.out.println("견적서 작성 실패");
		}
		
		session.setAttribute("noti", noti);
		
		
		
		return moveURL;
	}

}
