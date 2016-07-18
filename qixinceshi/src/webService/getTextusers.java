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

public class getTextusers extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<testUsers> testUsers = new QXService().selectAlltestUsers();
		request.setAttribute("testUsers", testUsers);
		request.getRequestDispatcher("/testuesr.jsp").forward(request, response);
		
		
	}	
	
}

