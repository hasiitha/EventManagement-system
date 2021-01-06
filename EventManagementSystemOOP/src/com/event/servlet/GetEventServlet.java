package com.event.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.event.model.Event;
import com.event.service.EventService;
import com.event.service.EventServiceImpl;


//created by IT19111520
/**
 * Servlet implementation class GetEventServlet
 */
@WebServlet("/GetEventServlet")
public class GetEventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public GetEventServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String eventName = request.getParameter("evntname");
		String Password = request.getParameter("pswd") ;
		try {
			EventService evnserv = new EventServiceImpl();
			Event evn = evnserv.getEventDetails(eventName,Password); 			



			if(evn.getEvent() == null){
				PrintWriter writer = response.getWriter();
				writer.println("<script type=\"text/javascript\">");
				writer.println("alert('Incorrect Credentials try again');");
				writer.println("location='getEvent.jsp';");
				writer.println("</script>");	
			}else {				
				request.setAttribute("Event",evn);
				RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/UpdateEvent.jsp");
				dispatcher.forward(request, response);}		
		}catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}




	}

}
