<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판 등록 페이지</title>
	</head>
<body>
	<h1>게시판 등록</h1>
	<form action ="/faq/result" method="post">
		<div class ="input_wrap">
			<label>Title</label>
			<input name="title">
		</div>
		<div class="input_wrap">
			<label>Content</label>
			<textarea rows="3" name="content"></textarea>
		</div>
		<div class="input_wrap">
			<label>Answer</label>
			<textarea rows="3" name="answer"></textarea>
		</div>
		<hr/>
		<button class="btn">등록</button>
	</form> 

</body>
</html>