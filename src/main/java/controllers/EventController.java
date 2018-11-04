package controllers;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.DatabaseConnector;
import model.Event;
import model.User;
import database.Databasequeries;


public class EventController {
	private Event event;
	DatabaseConnector db= new DatabaseConnector();
	Databasequeries queries = new Databasequeries();
	public void setEvent(Event x){
		event = x;
	}
	
	public Event getEvent(){
		return event;
	}
	
	

	public List<Event> findEventByStartDate(int date){
		try{
			//TODO make this
			return queries.findEventByStartDate(date);//db.findEventByStartDate(date);
		}
		catch (Exception e) {
			
			return null;
		}
		
	}
	
	public List<Event> findEventByEndDate(int date){
		try{
			//TODO make this
			return queries.findEventByEndDate(date);//db.findEventByEndDate(date);
		}
		catch (Exception e) {
			return null;
		}

	}
	
	public Event findByID(int id){
		try{
			//TODO make this
			return (Event) queries.findEventByID(id);//db.findEventByEndDate(date);
		}
		catch (Exception e) {
			return null;
		
	}
	}
	public boolean editEvent(int id, String name, String description, int start_date, int end_date,int time,String business,String location){
		try{
			//TODO: update existing event with new information
			queries.editEvent(name, description, start_date, end_date, time, business, location, id);
			return true;
		}//end try
		catch (Exception e) {
			return false;
		}//end catch
		
	}
	public boolean AddEvent(String name, String description, int start_date, int end_date,int time,String business,String location){
		try{
			//TODO: Lookup Bussiness_ID by business name string (business)
			queries.insertEvent(name, description, start_date, end_date, time, business, location);
		}//end try
		catch (Exception e) {
			return false;
		}//end catch
		
		return true;
		
	}	
	
	
	boolean removeEvent(String name, String description, int start_date, int end_date,int time,String business,String location){
		try{
			//TODO: Lookup Bussiness_ID by business name string (business)
			queries.removeEvent(name, description, start_date, end_date, time, business, location);
		}//end try
		catch (Exception e) {
			return false;
		}//end catch
		
		return true;
		
		
	}

}
