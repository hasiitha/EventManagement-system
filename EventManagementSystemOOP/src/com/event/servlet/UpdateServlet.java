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
 * Servlet implementation class UpdateServlet
 */
@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateServlet() {
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


		String event = request.getParameter("uevent");
		String organization =request.getParameter("uorganization");
		String date =request.getParameter("udoh");
		String email=request.getParameter("uemail");
		String phone=request.getParameter("uphone");
		String password=request.getParameter("upassword");
		int eID = Integer.parseInt(request.getParameter("updateid"));


		Event evnt = new Event();
		evnt.setEventID(eID);
		evnt.setEvent(event);
		evnt.setOrganization(organization);
		evnt.setDate(date);
		evnt.setEmail(email);
		evnt.setPhone(phone);
		evnt.setPassword(password);



		try {
			EventService evntservice = new EventServiceImpl();

			boolean isUpdated = true;

			isUpdated = evntservice.updateEvent(evnt);


			if(isUpdated == true){
				PrintWriter writer = response.getWriter();
				writer.println("<script>");
				writer.println("alert('updated Succesfully')");
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
