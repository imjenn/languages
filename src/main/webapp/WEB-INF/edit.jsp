<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>${language.name}</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/edit.css">
</head>
<body>
	<nav>
		<a href="/languages">Dashboard</a>
		<form class="delete-btn" action="/languages/${language.id}/delete" method="post">
	  		<input type="hidden" name="_method" value="delete">
	    	<input type="submit" class="btn btn-danger" value="Delete">
		</form>
	</nav>
	<div class="body-content">
		<h1>Edit ${language.name}</h1>
		<form:form action="/languages/${language.id}" method="post" modelAttribute="language">
		    <input type="hidden" name="_method" value="put">
		    <p>
		        <form:label path="name">Name: </form:label>
		        <form:errors path="name"/>
		        <form:input path="name" type="text" class="form-input"/>
		    </p>
		    <p>
		        <form:label path="creator">Creator: </form:label>
		        <form:errors path="creator"/>
		        <form:input path="creator" type="text" class="form-input"/>
		    </p>
		    <p>
		        <form:label path="version">Version: </form:label>
		        <form:errors path="version"/>
		        <form:input path="version" type="text" class="form-input"/>
		    </p>   
		    <button type="submit" class="btn btn-primary">Submit</button>
		</form:form>
	</div>
</body>
</html>