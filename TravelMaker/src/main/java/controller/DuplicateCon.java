package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import model.UserDAO;
import model.UserDTO;

@WebServlet("/DuplicateCon")
public class DuplicateCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("application/json"); // JSON 형식으로 응답을 설정
		
		UserDAO udao = new UserDAO();
		
		String user_id = request.getParameter("id");

		int row = udao.duplicateId(user_id);
		
		JSONObject jsonResponse = new JSONObject(); // 응답용 JSON 객체 생성
		
		if (row > 0) {
			jsonResponse.put("status", "duplicate"); // 중복된 아이디일 경우 status에 "duplicate" 추가
		} else {
			jsonResponse.put("status", "not_duplicate"); // 중복되지 않은 아이디일 경우 status에 "not_duplicate" 추가
		}
		
		response.getWriter().write(jsonResponse.toString()); // JSON 응답 전송
	}

}
