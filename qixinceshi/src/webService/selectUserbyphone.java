package webService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Services.QXService;

import domain.testUsers;


public class selectUserbyphone extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
					
				try {
					request.setCharacterEncoding("utf-8");
					String iphone = request.getParameter("name");// 
					response.setContentType("text/html;charset=utf-8");
					List<testUsers> testUsers = new QXService().selectTestuser(iphone);
					boolean boo = testUsers.isEmpty();
					if (boo) {
						response.getWriter().print("true");
					} else {
						response.getWriter().print("false");
					}
				} catch (Exception e) {
					e.printStackTrace();
					throw new RuntimeException(e);
				}
				
				
				
				
		
	}

}
