package controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.Command;
import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/JoinCon")
public class JoinCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		
		System.out.println("[JoinCon]");

		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		String phoneNum = request.getParameter("phoneNum");
		
		System.out.println(name);
		System.out.println(pw);
		System.out.println(phoneNum);
		
		MemberDTO dto = new MemberDTO(name, pw, phoneNum);
		System.out.println(dto);
		MemberDAO dao = new MemberDAO();
		int row = dao.join(dto);
		System.out.println(row);
		String moveURL;
		
		if(row > 0) {
			System.out.println("회원가입 성공");
			moveURL = "forward./test_success.html";
		}else {
			System.out.println("회원가입 실패");
			moveURL = "test.html";
		}
		
		return moveURL;
	}

}
