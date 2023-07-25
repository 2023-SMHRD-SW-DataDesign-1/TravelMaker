package controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.ConsultDAO;
import model.ConsultDTO;

@WebServlet("/ShowConsultCon")
public class ShowConsultCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("쇼 컨설트");

		try {
			request.setCharacterEncoding("UTF-8");
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		ConsultDAO csdao = new ConsultDAO();
		String user_id = "me335097";
		
		ArrayList<ConsultDTO> consult_list = csdao.showConsult(user_id);
		
		System.out.println(consult_list);		
		

		return null;
	}

}
