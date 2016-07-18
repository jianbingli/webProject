package webService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.analled;


import Services.QXService;

public class alledition extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		List<analled> analleds = new QXService().selectAllanalleds();
		request.setAttribute("analleds", analleds);
		request.getRequestDispatcher("/alledition.jsp").forward(request, response);
		
		
	}	
	
}

