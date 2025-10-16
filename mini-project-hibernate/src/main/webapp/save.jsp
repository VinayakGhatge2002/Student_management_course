<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-LN+7fdVzj6u52u30Kp6M/trliBMCMKTyK833zpbD+pXdCLuTusPj697FH4R/5mcr" crossorigin="anonymous">
<style>
	body{
		background-color : lightblue;
	}
	.form{
		display : flex;
		display: inline;
	}
</style>
</head>
<body>
	<p class="display-2 text-primary text-center m-5">Student Registration Successfully!!</p>
	
	<div class="form m-auto col-6">
		<a href="index.jsp" class="m-5 p-4 bg-danger text-white fw-bold fs-5 rounded-4 text-decoration-none shadow-lg">Add New Student</a>
	 
	
	<form action="/mini-project-hibernate/DisplayRecord" >
		<input type="submit" value="Display Students info" class="m-3 p-4 bg-danger text-white fw-bold fs-5 rounded-4 shadow-lg border-0">
	</form>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.7/dist/js/bootstrap.bundle.min.js" integrity="sha384-ndDqU0Gzau9qJ1lfW4pNLlhNTkCfHzAVBReH9diLvGRem5+R9g2FzA8ZGN954O5Q" crossorigin="anonymous"></script>
</body>
</html>