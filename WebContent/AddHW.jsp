<%@ page language="java" contentType="text/html; charset=BIG5"
	pageEncoding="BIG5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=BIG5">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
	<div class="w3-card-4">
		<div class="w3-container w3-teal">
			<h2>增加新作業</h2>
		</div>

		<form class="w3-container">
			<label class="w3-text-teal"><b>作業名稱</b></label> 
			<input class="w3-input w3-border w3-light-grey" type="text"> 
			<label class="w3-text-teal"><b>作業敘述</b></label> 
			<textarea cols="50" rows="5" class="w3-input w3-border w3-light-grey" style = "resize: none;"></textarea>
			<button class="w3-btn w3-blue-grey">Register</button>
		</form>
	</div>


</body>
</html>