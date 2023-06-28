package com.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.entities.Note;
import com.helper.FactoryProvider;

public class UpdateNoteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("id"));
		String title=req.getParameter("title");
		String content=req.getParameter("content");
		
		Session s=FactoryProvider.getFactory().openSession();
		Transaction tx=s.beginTransaction();
		
		Note n=s.get(Note.class, id);
		
		n.setTitle(title);
		n.setContent(content);
		n.setAddedDate(new Date());
		
		tx.commit();
		s.close();
		
		res.sendRedirect("view_notes.jsp");
		
	}

}
