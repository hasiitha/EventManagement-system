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
 * Servlet implementation class AddeventServlet
 */
@WebServlet("/AddeventServlet")
public class AddeventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AddeventServlet() {
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
	//we are using post method so that we use Dopost
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String event = request.getParameter("event");
		String organization =request.getParameter("organization");
		String date =request.getParameter("doh");
		String email=request.getParameter("email");
		String phone=request.getParameter("phone");
		String password=request.getParameter("password");

		Event evnt = new Event();

		evnt.setEvent(event);
		evnt.setOrganization(organization);
		evnt.setDate(date);
		evnt.setEmail(email);
		evnt.setPhone(phone);
		evnt.setPassword(password);

		EventService evntservice;
		try {
			evntservice = new EventServiceImpl();

			boolean isAdded = evntservice.addNewEvent(evnt);  

			if(isAdded == true) {

				PrintWriter writer = response.getWriter();
				writer.println("<script>");
				writer.println("alert('Added Succesfully')");
				writer.println("</script>");

			}


		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/eventboard.jsp");
		dispatcher.include(request,response);

	}

}
