package webService;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.filesPro;
import domain.qixinpro;

import Services.QXService;

public class selectallqixinpro extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<qixinpro> qixinpro = new QXService().selectallqixinpro();
		request.setAttribute("qixinpro", qixinpro);
		request.getRequestDispatcher("/selectallqixinpro.jsp").forward(request, response);
		
		
	}	
	
}

