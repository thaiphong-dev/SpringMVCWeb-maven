<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form:form action="admin" method="POST" modelAttribute="product">
	<div class="control-group">
		<label class="control-label" for="">id</label>
		<div class="controls">
			<form:input path="id" class="span3" type="text" />
		</div>
	</div> 
	
	<div class="control-group">
		<label class="control-label" for="">name</label>
		<div class="controls">
			<form:input path="name" class="span3" type="text" />
		</div>
	</div> 
	
	<div class="control-group">
		<label class="control-label" for="">image link</label>
		<div class="controls">
			<form:input path="imageLink" class="span3" type="text" />
		</div>
	</div> 
	
	<div class="control-group">
		<label class="control-label" for="">price</label>
		<div class="controls">
			<form:input path="price" class="span3" type="number" />
		</div>
	</div> 
	
	<div class="control-group">
		<label class="control-label" for="">description</label>
		<div class="controls">
			<form:input path="description" class="span3" type="text" />
		</div>
	</div> 
	
	<div class="control-group">
		<label class="control-label" for="">amount</label>
		<div class="controls">
			<form:input path="amount" class="span3" type="number" />
		</div>
	</div> 
	
	<div class="control-group">
		<label class="control-label" for="">id catalog</label>
		<div class="controls">
			<form:input path="catalogId" class="span3" type="text" />
		</div>
	</div> 
	
	<div class="controls">
		<button type="submit" class="btn block">ghi</button>
	</div>
	</form:form>
	
	<h3> ${ status } </h3>
</body>
</html>