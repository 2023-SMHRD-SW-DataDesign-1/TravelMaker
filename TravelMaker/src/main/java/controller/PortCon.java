package controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import command.Command;
import model.PortDAO;
import model.PortDTO;
import model.UserDTO;

@WebServlet("/PortCon")
public class PortCon implements Command {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("[portCon]");
		

		HttpSession session = request.getSession();
		UserDTO udto = (UserDTO) session.getAttribute("info");
		
		String user_id = udto.getUser_id();
		String port_title = request.getParameter("port_title");
		String port_content = request.getParameter("port_content");
		
		System.out.println("user_id :" + user_id);
		System.out.println("port_title :" + port_title);
		System.out.println("port_content :" + port_content);
		
		PortDAO pdao = new PortDAO();
		String noti = "";
		
		int row = pdao.portWrite(new PortDTO(user_id, port_content, port_title));
		
		if(row > 0) {
			System.out.println("PortCon 성공");
			noti = "포트폴리오를 성공적으로 저장하였습니다.";
		}

		session.setAttribute("noti", noti);
		
		
		return "portfolio_list.jsp";
	}

}
