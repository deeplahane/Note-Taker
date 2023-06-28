<%-- <%@page import="com.entities.Message"%> --%>
<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.helper.FactoryProvider"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@page import="java.util.List"%>
<%-- <%@page import="com.entities.Note"%>
<%@page import="com.connect.Connector"%>
<%@page import="com.dao.NoteDAO"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="components/all_css.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Jobs</title>
</head>
<body style="background-color: #F2F3F5;">

	<div class="container-fluid  login-container">
		<div class="row">
			<div class="col-md-12 ">
				<%
				Session s = FactoryProvider.getFactory().openSession();
				Query q = s.createQuery("from Note");
				List<Note> list = q.list();

				for (Note v : list) {
				%>

				<div class="card mt-2">
					<div class="card-body">

						<h6>
							 <%=v.getTitle()%>
						</h6>
						<p>
							<%=v.getContent()%>
						</p>

						<p>
							Date:
							<%=v.getAddedDate()%>
						</p>
						<div class="text-center">
							<a href="edit_note.jsp?id=<%= v.getId() %>" 
								type="submit" class="btn btn-secondary btn-sm">Edit</a> <a
								href="DeleteServlet?id=<%=v.getId() %>" type="submit"
								class="btn btn-danger btn-sm">Delete</a> 
						</div> 
					</div>
				</div>
				<%
				}
				s.close();
				%>
			</div>
		</div>
	</div>
</body>
</html>