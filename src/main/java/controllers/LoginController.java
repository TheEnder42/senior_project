package controllers;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import database.DatabaseConnector;
import database.Databasequeries;
//import persist.DerbyDatabase;
import model.User;

import java.sql.SQLException;
//import model.Account;
//import persist.DerbyDatabase;



public class LoginController {
	private User login;
	DatabaseConnector db= new DatabaseConnector();
	Databasequeries info = new Databasequeries();
	
		public void setAccount(User account) {
			login=account;
		}
		
		public User getAccount() {
			return login;
		}
	
		public List<User> findAccountByName(String name) throws SQLException{
			try{
				//TODO make this
				return info.findAccountByName(name);
			}
			catch (Exception e) {
				return null;
			}
			
		}
		
		public boolean verifyAccount(String name, String password) throws SQLException{
			try{
				String test = info.findAccountByName(name).get(0).getPassword();
				String pass = hashBrowns(gimmeSalt(password));
				if(test == pass){
					return true;
				}
			}
			catch (Exception e) {
				return false;
			
			}
			return false;
			
		}
		
		//TODO wtf is this supposed to do? A: get the list of businesses linked to an account.
		public String[] getBusinesssFromAccount(String username){
			//TODO database call to get the businesses linked to an account
			
			return login.getBusinesses();
			
		}
		
		public boolean addNewAccount(String name, String password, String email, String business) throws SQLException{
			try{
				//TODO make this
				password =  hashBrowns(gimmeSalt(password));
				info.insertUser(name, password, email, business);
				return true;
			}
			catch (Exception e) {
				return false;
			}
		}
		
		public String hashBrowns(String password) {
			return info.hashword(password);
		}
		
		public String gimmeSalt(String password) {
			String salty = "";
			String key = "sAltYwoRdS";
			
			for(int i=0; i<password.length(); i++){
				salty += password.charAt(i) + key.charAt(i%key.length());
			}
			
			return salty;
		}
		
}//end class


	
	


