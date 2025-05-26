package com.Servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.PostDAO;
import com.Db.DBConnect;


@WebServlet("/deleteServlet")
public class deleteServlet extends HttpServlet {
	
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    HttpSession session = request.getSession();

	    try {
	        String noteIdStr = request.getParameter("note_id");
	        int noteid = Integer.parseInt(noteIdStr.trim());

	        PostDAO dao = new PostDAO(DBConnect.getConn());
	        boolean f = dao.DeletNotes(noteid);

	        if (f) {
	            session.setAttribute("updateMsg", "Note deleted successfully...");
	        } else {
	            session.setAttribute("wrongMsg", "Something went wrong on server");
	        }
	    } catch (Exception e) {
	        session.setAttribute("wrongMsg", "Invalid note ID");
	    }

	    response.sendRedirect("showNotes.jsp");
	}


	

}
