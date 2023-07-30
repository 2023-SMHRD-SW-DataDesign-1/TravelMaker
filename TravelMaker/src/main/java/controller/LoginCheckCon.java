package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;


@WebServlet("/LoginCheckCon")
public class LoginCheckCon extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        JSONObject jsonObject = new JSONObject();

        HttpSession session = request.getSession();

        if (session.getAttribute("info") == null) {
            jsonObject.put("isLoggedIn", false);
        } else {
            jsonObject.put("isLoggedIn", true);
        }

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(jsonObject.toString());
    }

}
