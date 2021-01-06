package com.event.model;

public class Event {
	//Attributes of the Event
	private String event;
	private String organization;
	private String date;
	private String email;
	private String phone;
	private String password;
	private int EventID;

	

	//Default constructor to Create and Event type Object
	public Event() {

	}

	//Overloaded Constructor to create and Event type Object
	public Event(String event, String organization, String date, String email, String phone, String password) {
		super();
		this.event = event;
		this.organization = organization;
		this.date = date;
		this.email = email;
		this.phone = phone;
		this.password = password;
	}


	//Returning the Event Details
	public String getEvent() {
		return event;
	}

	public void setEvent(String event) {
		this.event = event;
	}

	public String getOrganization() {
		return organization;
	}

	public void setOrganization(String organization) {
		this.organization = organization;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getEmail() {
		return email;
	}

	//Setting the Event Details
	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getEventID() {
		return EventID;
	}

	public void setEventID(int eventID) {
		EventID = eventID;
	}



}
