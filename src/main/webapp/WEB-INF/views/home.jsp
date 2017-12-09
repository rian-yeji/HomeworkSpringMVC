<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>SpringMVC를 활용한 학사관리 웹 사이트</h1>
	<h3>1592022 이예지</h3>
	<hr>
	<p>
		1) <a href="${pageContext.request.contextPath}/showcreditbysemester">학기별 이수 학점 조회</a>
	</p>
	<p>
		2) <a href="${pageContext.request.contextPath}/showcreditbydivision">이수 구분별 학점 조회</a>
	</p>

	<p>
		3) <a href="${pageContext.request.contextPath}/registerforcourses">수강신청</a>
	</p>

	<p>
		4) <a href="${pageContext.request.contextPath}/showregisteredcourses">수강신청 조회</a>
	</p>


	<c:if test="${pageContext.request.userPrincipal.name != null}">
			<a href="javascript:document.getElementById('logout').submit()">Logout</a>
		</c:if>
	
	<form id="logout" action="<c:url value="/logout"/>" method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" />
	</form>
</body>
</html>