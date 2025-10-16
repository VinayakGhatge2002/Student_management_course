<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Display Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
</head>
<body>
	<%@page import = "java.util.List, java.util.Iterator, com.gqt.Student" %>
	
	<%
		List sList = (List)session.getAttribute("Student");
	%>
	
	<table class="table table-bordered table-hover mb-5">
	<thead class="table-dark text-center">
		<tr>
			<th>Student Id</th>
			<th>Student Name</th>
			<th>Gender</th>
			<th>City</th>
			<th>Course</th>
			<th>Duration</th>
			<th>Amount</th>
		</tr>
	</thead>
	<tbody class="table-warning text-center">
		<%
			Iterator itr = sList.iterator();
			while(itr.hasNext()){
				Student s1 = (Student)itr.next();
				
				out.println("<tr><td>"+s1.getSid()+"</td><td>"+s1.getSname()+"</td><td>"+s1.getGender()+"</td><td>"+s1.getCity()+"</td><td>"+s1.getCourse()+"</td><td>"+s1.getDuration()+"</td><td>"+s1.getAmount()+"</td><tr>");
			}
		%>
		
	</tbody>
	</table>
	<a href="index.jsp" class="bg-danger text-white text-decoration-none fs-5 p-3 rounded-4 m-5">Home Page</a>
	<a href="save.jsp" class = "bg-success text-white text-decoration-none fs-5 p-3 rounded-4 m-1">Back</a>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</body>
</html>