<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>${language.name}</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/show.css">
</head>
<body>
	<a class="dashboard-link" href="/languages">Dashboard</a>
	<div id="container">
		<div>
			<p>Name: ${language.name}</p>
			<p>Creator: ${language.creator}</p>
			<p>Version: ${language.version}</p>
		</div>
		<div class="links">
			<a href="/languages/${language.id}/edit">Edit</a>
			<form action="/languages/${language.id}/delete" method="post">
		  		<input type="hidden" name="_method" value="delete">
		    	<input type="submit" class="btn btn-danger" value="Delete">
			</form>
		</div>
	</div>
</body>
</html>