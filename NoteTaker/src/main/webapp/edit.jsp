<%@page import="com.helper.FactoryProvider"%>
<%@page import="com.entities.Note"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_css_js.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<br>
	<h1>Edit your note</h1>
	<br>
	<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Transaction tx = s.beginTransaction();
		Note note = (Note) s.get(Note.class, noteId);
	%>

	<form action="UpdateServlet" method="post">
		<input type="hidden" value = "<%= note.getId() %>" name="noteId">
		<div class="form-group">
			<label for="title">Note Title</label> <input type="text"
				class="form-control" id="title" name="title"
				aria-describedby="emailHelp" placeholder="Enter here" required
				value="<%=note.getTitle()%>">

		</div>
		<div class="form-group">
			<label for="content">Note Content</label>
			<textarea id="content" required name="content"
				placeholder="enter your content here" class="form-control"
				style="height: 300px;"
				value="<%=note.getContent()%>"></textarea>
		</div>
		<div class="container text-center">
			<button type="submit" class="btn btn-success">Save your note</button>
		</div>

	</form>
</body>
</html>