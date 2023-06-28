<%@page import="org.hibernate.Transaction"%>
<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.hql.internal.ast.tree.SessionFactoryAwareNode"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="components/all_css.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Note</title>
</head>
<body style="background-color: #F2F3F5;">
	<%
		int id=Integer.parseInt(request.getParameter("id"));
		Session s=FactoryProvider.getFactory().openSession();
		Transaction tx=s.beginTransaction();
		Note n=s.get(Note.class,id);
		
		
		tx.commit();
		s.close();
		
		
	%>
	<div class="container-fluid ">
		<div class="row p-5">
			<div class="col-md-12">
				<div class="card">
					<div class="card-header text-center">
						<h3>
							<i class="fa-solid fa-pen"></i> Edit Note...
						</h3>
					</div>
					<div class="card-body">
						<form action="UpdateNoteServlet" method="post">
							<input type="hidden" value="<%=n.getId()%>" name="id" />
							<div class="form-group">
								<label for="exampleInputEmail1">Enter Title</label> <input
									type="text" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Java Developer"
									Value="<%=n.getTitle()%>" name="title">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Content</label>
								<textarea rows="12" cols="" class="form-control"
									id="exampleInputPassword1"
									placeholder="A random string is generated by first generating a stream of random numbers of ASCII values for 0-9, a-z and A-Z characters."
									name="content"><%=n.getContent()%> </textarea>
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary">Update
									Note</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>