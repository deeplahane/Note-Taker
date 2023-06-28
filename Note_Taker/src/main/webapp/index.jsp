<%-- <%@page import="com.connect.Connect"%> --%>
<%-- <%@page import="com.connect.Connector"%>
<%@page import="com.entities.Message"%>  --%>
<%@page import="java.sql.Connection"%>
<%-- <%@page import="com.connect.Connector"%> --%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="components/all_css.jsp" %>  

<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img {
	background:
		url("https://img.freepik.com/free-vector/businessman-holding-pencil-big-complete-checklist-with-tick-marks_1150-35019.jpg?w=996&t=st=1687523272~exp=1687523872~hmac=012ff6deddf382904272c62306364ec176fa28b57fca93ac2830a501f0dc59db");
	height: 68vh;
	width: 100%;
	background-repeat: no-repeat;
	background-size: contain;
}
</style>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>

	<%--  <%
	Connection conn = Connector.getCon();
	if (conn != null) {
		out.print(conn);
	} else {
		out.print("error");
	}
	%>  --%>

	<%-- <%
	if (user == null) {
		Message msg = new Message("Please Login First", "alert-danger");
		session.setAttribute("msg", msg);
		response.sendRedirect("login_page.jsp");
	}
	%> --%>

	<%-- <%
	Message m = (Message) session.getAttribute("msg");
	if (m != null) {
	%>
	<div class="alert <%=m.getCssClass()%>"><%=m.getContent()%></div>
	<%
	}
	session.removeAttribute("msg");
	%> --%>
	<div
		style="display: flex; align-items: center; justify-content: center;"
		class="m-4 p-2 ">
		<div class="container-fluid con-hom">
			<div class="text-center">
				<h1 class="home-div ">
					<i class="fa-solid fa-pen"></i> E-Notes
				</h1>
			</div>
		</div>
		<div class="container-fluid back-img con-hom"></div>
	</div>
	<%@ include file="components/footer.jsp"%>
</body>
</html>
