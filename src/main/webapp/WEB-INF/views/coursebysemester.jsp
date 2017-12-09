<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<title></title>
</head>
<body>

	<table class="showTable">
		<tr>
			<th>년도</th>
			<th>학기</th>
			<th>교과코드</th>
			<th>교과목명</th>
			<th>구분</th>
			<th>학점</th>
		</tr>
		<c:forEach var="course" items="${courses}">
			<tr>
				<td>${course.year}</td>
				<td>${course.semester}</td>
				<td>${course.course_id}</td>
				<td>${course.title}</td>
				<td>${course.division}</td>
				<td>${course.credit}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>