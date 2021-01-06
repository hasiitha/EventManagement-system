package com.event.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.event.model.Event;
import com.event.util.EventDBconnection;

public class EventServiceImpl implements EventService {

	private static Connection conn;

	public EventServiceImpl() throws ClassNotFoundException, SQLException {
		conn = EventDBconnection.getConnection();
	}


	@Override
	public boolean addNewEvent(Event evnt) throws SQLException {

		String sql = "insert into event values(?,?,?,?,?,?,?)";

		PreparedStatement stm = conn.prepareStatement(sql) ;
		stm.setObject(1, 0);
		stm.setObject(2, evnt.getEvent());
		stm.setObject(3, evnt.getOrganization());
		stm.setObject(4, evnt.getDate());
		stm.setObject(5, evnt.getEmail());
		stm.setObject(6, evnt.getPhone());
		stm.setObject(7, evnt.getPassword());


		int res = stm.executeUpdate();
		return res>0;
	}


	@Override
	public ArrayList<Event> getAllEvents() throws SQLException {

		String sql = "select * from event";
		Statement stm = conn.createStatement();
		ResultSet rst = stm.executeQuery(sql);
		ArrayList<Event> evntList = new ArrayList<Event>();

		while(rst.next()) {
			Event evnt = new Event();
			evnt.setEvent(rst.getString("eventname"));
			evnt.setOrganization(rst.getString("organizationname"));
			evnt.setDate(rst.getString("date"));
			evnt.setEmail(rst.getString("email"));
			evnt.setPhone(rst.getString("phone"));

			evntList.add(evnt);


		}	
		return evntList;
	}


	@Override
	public Event getEventDetails(String eventName, String password) throws SQLException {

		String sql = "Select * from event where eventname = '"+eventName+"' and password ='"+password+"'";
		Statement stmt = conn.createStatement();
		ResultSet rst = stmt.executeQuery(sql);


		Event evn = new Event();
		while(rst.next()) {
			evn.setEventID(rst.getInt("Eventid"));
			evn.setEvent(rst.getString("eventname"));
			evn.setOrganization(rst.getString("organizationname"));
			evn.setEmail(rst.getString("email"));
			evn.setPhone(rst.getString("phone"));
			evn.setDate(rst.getString("date"));	
			evn.setPassword(rst.getString("password"));
		}
		return evn;
	}


	@Override
	public boolean deleteEvent(String evId) throws SQLException {
		String sql = "delete from event where Eventid = '"+evId+"'";
		Statement stmt = conn.createStatement();
		return (stmt.executeUpdate(sql)) > 0; 

	}


	@Override
	public boolean updateEvent(Event evnt) throws SQLException {
		String sql = " UPDATE event SET eventname = ?, organizationname = ?, phone= ?, date = ?,email= ?,password = ? where Eventid = ? ";
		PreparedStatement stm = conn.prepareStatement(sql) ;

		stm.setObject(1, evnt.getEvent());
		stm.setObject(2, evnt.getOrganization());
		stm.setObject(3, evnt.getPhone());
		stm.setObject(4, evnt.getDate());
		stm.setObject(5, evnt.getEmail());
		stm.setObject(6, evnt.getPassword());
		stm.setObject(7, evnt.getEventID());

		int result = stm.executeUpdate();

		return result>0;

	}




}
