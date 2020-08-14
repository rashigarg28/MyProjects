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
<div class="container">
	<%@include file="navbar.jsp"%>
	<br>
	<h1>Please fill your details</h1>
	<br>
	<!-- this is add-form -->
	<form action="SaveNoteServlet" method="post">
		<div class="form-group">
			<label for="title">Note Title</label> 
			<input
				type="text" class="form-control" id="title" name="title"
				aria-describedby="emailHelp" placeholder="Enter here" required> 
				
		</div>
		<div class="form-group">
			<label for="content">Note Content</label> 
			<textarea id="content"  required name="content" placeholder="enter your content here" class="form-control" style=height:300px;></textarea>
		</div>
		<div class="container text-center">
		<button type="submit" class="btn btn-primary">Add</button>
		</div>
		
	</form>
</div>
</body>
</html>