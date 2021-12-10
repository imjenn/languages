<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>All Languages</title>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
	<link rel="stylesheet" type="text/css" href="/css/index.css">
</head>
<body>
	<div>
		<h1>All Languages</h1>
		<table class="table table-striped table-bordered table-hover">
			<thead>
				<tr>
					<th scope="col">Language</th>
					<th scope="col">Creator</th>
					<th scope="col">Version</th>
					<th scope="col">Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="languages" items="${languages}">
				<tr> 
					<td class="align-middle"><a href="/languages/${languages.id}"><c:out value="${languages.name}"></c:out></a></td>
					<td class="align-middle"><c:out value="${languages.creator}"></c:out></td>
					<td class="align-middle"><c:out value="${languages.version}"></c:out></td>
					<td class="align-middle">
						<div class="table-actions">
							<a class="middle" href="/languages/${languages.id}/edit">edit</a>
							<form class="delete-btn" action="/languages/${languages.id}/delete" method="post">
    							<input type="hidden" name="_method" value="delete">
    							<input type="submit" class="btn btn-danger" value="Delete">
							</form>
						</div>
						</td>
					</tr>
					</c:forEach>
			</tbody>
		</table>
		<div class="form-body">
			<h2>Add a new language:</h2>
			<form:form class="form" action="/languages" method="post" modelAttribute="language">
	   	 		<p>
	        		<form:label path="name">Name: </form:label>
	        		<form:errors style="color:red" path="name"/>
	        		<form:input class="form-control" type="text" name="name" path="name"/>
	    		</p>
	    		<p>
			        <form:label path="creator">Creator: </form:label>
			        <form:errors style="color:red" path="creator"/>
			        <form:input class="form-control" type="text" path="creator"/>
			    </p>
			    <p>
			        <form:label path="version">Version: </form:label>
			        <form:errors style="color:red" path="version"/>
			        <form:input class="form-control" type="number" step="0.01" path="version"/>
			    </p> 
			    <input type="submit" class="btn btn-primary" value="Submit"/>
			</form:form>   
		</div>
	</div>
</body>
</html>