<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html xml:lang="en" lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="<c:url value='/assets/style/css/style-main.css' />"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="http://fonts.googleapis.com/css?family=Open+Sans" media="all" />
<title>MELLO</title>
</head>
<body class="home home-01">
	<!--begin header-->
	<%@include file="/WEB-INF/views/layouts/user/header.jsp"%>
	<!--end header-->
	<!--begin content-->
	<div class="container">
	<decorator:body />
	</div>
	<!--end content-->
	<!--begin footer-->
	<%@include file="/WEB-INF/views/layouts/user/footer.jsp"%>
	<!--end footer-->
	
	<decorator:getProperty property="page.script" />
	
</body>
</html>
