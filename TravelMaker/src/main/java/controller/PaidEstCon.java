package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import model.ResDAO;
import model.ResDTO;
import model.SendDAO;
import model.UserDAO;
import model.UserDTO;

@WebServlet("/PaidEstCon")
public class PaidEstCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        // CORS 활성화
        response.setHeader("Access-Control-Allow-Origin", "*");
        response.setHeader("Access-Control-Allow-Methods", "POST, GET, OPTIONS, DELETE");
        response.setHeader("Access-Control-Max-Age", "3600");
        response.setHeader("Access-Control-Allow-Headers", "Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");
		

		response.setContentType("application/json"); // JSON 형식으로 응답을 설정

		ResDAO rdao = new ResDAO();
		SendDAO sdao = new SendDAO();
		UserDAO udao = new UserDAO();

		int res_num = Integer.parseInt(request.getParameter("res_num"));
		int est_num = Integer.parseInt(request.getParameter("est_num"));
		ResDTO showRes = rdao.showRes(res_num);

		HttpSession session = request.getSession();
		UserDTO info = (UserDTO) session.getAttribute("info");
		String user_id = info.getUser_id();

		int res_fee = showRes.getRes_fee();
		int user_cash = info.getUser_cash() - res_fee;
		
		
		JSONObject jsonResponse = new JSONObject(); // 응답용 JSON 객체 생성

		// 금액부족부터 검사
		if (user_cash < 0) {
			System.out.println("금액부족");
		}else {
			// 돈 충분 할 경우 구매처리
			udao.buyInfo(new UserDTO(user_id, user_cash));
			
			// res_num인 견적서 paid처리
			rdao.paidEst(res_num);
			
			// est_num인 견적서 check처리
			int row = sdao.checkEst(est_num);
			
			
			if (row > 0) {
				System.out.println("채택 완료되었습니다");
				jsonResponse.put("status", "checked");
			}
			
			
		}
		
		// 차감된 금액만큼 info세션 다시 생성
		info = udao.userInfo(user_id);
		session.setAttribute("info", info);
		
		response.getWriter().write(jsonResponse.toString()); // JSON 응답 전송
		

		

	}

}
