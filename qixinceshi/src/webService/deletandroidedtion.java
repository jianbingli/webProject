package webService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.QxDao;
import domain.analled;

import Services.QXService;

public class deletandroidedtion extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		int idadnroidalledtion =Integer.parseInt(request.getParameter("idadnroidalledtion"))  ;
		QXService.deletandroidedtion(idadnroidalledtion);
		response.sendRedirect("addandroidedtion.jsp");
	}	
	
}

