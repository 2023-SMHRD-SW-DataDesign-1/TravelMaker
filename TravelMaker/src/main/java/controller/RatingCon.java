package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

import model.RatingDAO;
import model.RatingDTO;

@WebServlet("/RatingCon")
public class RatingCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("레이팅콘 진입");
		
		response.setContentType("application/json"); // JSON 형식으로 응답을 설정
		
		RatingDAO radao = new RatingDAO();
		
		String user_id = request.getParameter("user_id");
		String rate_user_id = request.getParameter("rate_user_id");
		int rating = Integer.parseInt(request.getParameter("rating"));
		
		System.out.println("user_id : " + user_id);
		System.out.println("rate_user_id : " + rate_user_id);

		int row = radao.rateGosu(new RatingDTO(user_id, rating, rate_user_id));
		
		JSONObject jsonResponse = new JSONObject(); // 응답용 JSON 객체 생성
		
		if (row > 0) {
			System.out.println("평가완료");
			jsonResponse.put("response", "true"); // 중복된 아이디일 경우 status에 "duplicate" 추가
		} else {
			jsonResponse.put("status", "not_duplicate"); // 중복되지 않은 아이디일 경우 status에 "not_duplicate" 추가
		}
		
		response.getWriter().print(jsonResponse);
	}

}
