package webService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.filesPro;
import domain.testUsers;

import Services.QXService;

public class addTestuser extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		testUsers testUser = new testUsers();	
		testUser.setUserName(request.getParameter("name"));	
		testUser.setUserPhone(request.getParameter("iphone"));
		testUser.setUserPassword(request.getParameter("password"));
		QXService.addUser(testUser);
		response.sendRedirect("getTextusers");

		
	}	
	
}

