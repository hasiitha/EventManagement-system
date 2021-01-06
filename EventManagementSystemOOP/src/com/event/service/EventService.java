package com.event.service;

import java.sql.SQLException;
import java.util.ArrayList;

import com.event.model.Event;

public interface EventService {

	public boolean addNewEvent(Event evnt) throws SQLException;

	public ArrayList<Event> getAllEvents() throws SQLException;

	public Event getEventDetails(String eventName, String password) throws SQLException;

	public boolean deleteEvent(String evId) throws SQLException;

	public boolean updateEvent(Event evnt) throws SQLException;







}
