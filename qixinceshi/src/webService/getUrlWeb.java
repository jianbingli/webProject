package webService;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class getUrlWeb extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ServletContext s1=this.getServletContext();
		String temp=s1.getRealPath("/"); 
		request.setAttribute("temp", temp);
		request.getRequestDispatcher("/getandsetfiles.jsp").forward(request, response);
	}
	public String getUrlWeb(){
		ServletContext s1=this.getServletContext();
		String temp=s1.getRealPath("/"); 
		System.out.println(temp);;
		return temp;
	}
}
