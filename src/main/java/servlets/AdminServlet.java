package servlets;

import java.io.IOException;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controllers.*;
import database.Databasequeries;
import model.*;


/*Quarantine for errors*/
@WebServlet("/adminServlet")
public class AdminServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String username=null;
		Cookie[] cks=req.getCookies();
		if (cks !=null){
			for (int i=0;i<cks.length;i++){
				String name=cks[i].getName();
				username = cks[i].getValue();
				if (name.equals("auth")){
					break;
				}
			}
		}
		//if the user is not logged in send to login page
		if (username == null){
			req.getRequestDispatcher("login.jsp").forward(req, resp);
		}
		//if the user is logged in send to user info page
		else{
			//grab all of the events of the user's business
		
			Databasequeries queries = new Databasequeries();
			
			
			try {
				User user=queries.findAccountByName(username).get(0);
				//List<Business> b=queries.findBusinesssFromAccount(username);
				List<Business> b=queries.findBusinessByName("Test1");
			
			EventController controller = new EventController();
			List<Event> list=new ArrayList<Event>();
			
			for (int i=0;i<b.size();i++){
			list.addAll(controller.findEventByBusiness(b.get(i).getName()));
			}
			req.setAttribute("list", list);
			req.setAttribute("user", user);
			
			
			} catch (URISyntaxException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			req.getRequestDispatcher("admin.jsp").forward(req, resp);

		}
	}
	
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String name = req.getParameter("name");
		String time = req.getParameter("time");
		String start = req.getParameter("start");
		String location = req.getParameter("location");
		String description = req.getParameter("description");
		
		if(!req.getParameter("eventId").equals(null)){
			//redirect to edit the selected post
			int postid = Integer.parseInt(req.getParameter("postID"));
			req.getRequestDispatcher("editEvent.jsp").forward(req, resp);
			
		
			
		}
		
		else{
			req.setAttribute("eventselected", name);
		}
		req.getRequestDispatcher("userInfo.jsp").forward(req, resp);

	}
	
}
