<%-- <%@page import="com.entities.User"%> --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<h3>
			<a class="navbar-brand" href="index.jsp"><i class="fa-sharp fa-solid fa-book"></i>&nbsp; E-Notes</a>
		</h3>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active ml-2"><a class="nav-link"
					href="index.jsp"><i class="fa-solid fa-house"></i> Home <span
						class="sr-only">(current)</span></a></li>

				<%--  <%
				User u = (User) session.getAttribute("userobj");
				if (u != null) {
				%> --%> 
				<li class="nav-item active ml-2"><a class="nav-link"
					href="add_note.jsp"><i class="fa-solid fa-plus"></i> Add
						Note</a></li>
				<li class="nav-item active ml-2"><a class="nav-link"
					href="view_notes.jsp"><i
						class="fa-solid fa-magnifying-glass"></i> View Notes</a></li>
				<%-- <%
				}
				%>  --%>

			</ul>
			<form class="form-inline my-2 my-lg-0">
				<%-- <%
				User user = (User) session.getAttribute("userobj");

				if (user == null) {
				%>
				<a href="login_page.jsp" class="btn btn-outline-light mr-2"><i
					class="fa-solid fa-right-to-bracket"></i> Login</a> <a
					href="signup_page.jsp" class="btn btn-outline-light"><i
					class="fa-solid fa-user-plus"></i> Singup</a>
				<%
				} else {
				%>
				<a href="home.jsp" class="btn btn-outline-light mr-2"
					data-toggle="modal" data-target="#exampleModal"><i
					class="fa-solid fa-user"></i> <%=user.getName()%></a> <a href="logout"
					class="btn btn-outline-light"><i
					class="fa-solid fa-right-from-bracket fa-rotate-180"></i> Logout</a>
				<%
				}
				%> --%> 
			</form>
		</div>
	</nav>

	<!-- Modal -->
	<%-- <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Profile Page</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="card">
						<div class="card-body">
							<div class="text-center text-primary">
								<i class="fa-solid fa-user-circle fa-4x"></i>
							</div>
							<br />
							<table class="table">
								<tbody>
									<tr>
										<th scope="row">Name</th>
										<td>${userobj.name }</td>

									</tr>
									<tr>
										<th scope="row">Email</th>
										<td>${userobj.email }</td>

									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				<div class="modal-footer ">
					<button type="button" class="btn btn-secondary "
						data-dismiss="modal">Close</button>
					<!-- <button type="" class="btn btn-primary">Edit</button> -->
				</div>
			</div>
		</div>
	</div> --%>
</body>
</html>