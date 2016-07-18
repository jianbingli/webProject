package webService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.analled;

import Services.QXService;

public class addandroidedtion extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		analled anaeds = new analled();	
		anaeds.setEdname(request.getParameter("edname"));	
		anaeds.setEdurl(request.getParameter("edurl"));	
		QXService.addandroidedtion(anaeds);
		response.sendRedirect("alledition");
		

		
		
	}	
	
}

