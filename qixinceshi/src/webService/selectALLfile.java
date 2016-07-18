package webService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.filesPro;

import Services.QXService;

public class selectALLfile extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<filesPro> filesPro = new QXService().selectAllFileName();
		request.setAttribute("filesPro", filesPro);
		request.getRequestDispatcher("/getandsetfiles.jsp").forward(request, response);
		
		
	}	
	
}

