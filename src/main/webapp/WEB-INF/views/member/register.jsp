<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Toy Project</title>
<%@ include file="/WEB-INF/inc/asset.jsp" %>
<style>
	
</style>
</head>
<body>

	<!-- template.jsp > register.jsp -->

	<main>
		
		
		<section>
			
			<h2>Register</h2>
			
			<form method="POST" action="/toy/member/registerok.do" 
								enctype="multipart/form-data">
								
			<table>
				<tr>
					<th>아이디</th>
					<td><input type="text" name="id" id="id" class="short" required></td>
				</tr>
				<tr>
					<th>암호</th>
					<td><input type="password" name="pw" id="pw" class="short" required></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" name="name" id="name" class="short" required></td>
				</tr>
				<tr>
					<th>사진</th>
					<td><input type="file" name="pic" id="pic"></td>
				</tr>
			</table>
			
			<div class="btns">
				<input type="button" value="돌아가기" onclick="location.href='/toy/index.do';">
				<button type="submit">
					<i class="fas fa-marker"></i>
					등록하기
				</button>
			</div>
			
			</form>
			
			
		</section>
		
	</main>
	<script>
		
	</script>
</body>
</html>


































