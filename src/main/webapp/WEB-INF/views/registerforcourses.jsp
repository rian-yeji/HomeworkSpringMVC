<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/main.css">
<title>Register for courses</title>
</head>
<body>

	<sf:form method="get" action="${pageContext.request.contextPath}/doregister" modelAttribute="course">
		<table class="formtable">
			<tr>
				<td class="label">�����⵵ :</td>
				<td>
				<select class="select" name="year">
					<option value="2018">2018</option>
				</select>
				</td>
			</tr>
			<tr>
				<td class="label">�б� :</td>
				<td>
				<select class="select" name="semester">
					<option value="1">1</option>
				</select>
				</td>
			</tr>
			<tr>
				<td class="label">�����ڵ� :</td>
				<td><sf:input path="course_id" type="text"/><br>
				<sf:errors cssClass="error" path="course_id"></sf:errors></td>
			</tr>
			<tr>
				<td class="label">������� :</td>
				<td><sf:input path="title" type="text"/><br>
				<sf:errors cssClass="error" path="title"></sf:errors></td>
			</tr>
			<tr>
				<td class="label">���� :</td>
				<td>
				<sf:select class="select" path="division">
					<sf:option value="����">����</sf:option>
					<sf:option value="����">����</sf:option>
					<sf:option value="����">����</sf:option>
					<sf:option value="����">����</sf:option>
					<sf:option value="�ٱ�A">�ٱ�A</sf:option>
					<sf:option value="�ٱ�B">�ٱ�B</sf:option>
					<sf:option value="�ϱ�">�ϱ�</sf:option>
				</sf:select>
				</td>
			</tr>
			<tr>
				<td class="label">���� :</td>
				<td>
				<sf:select class="select" path="credit">
					<sf:option value="1">1</sf:option>
					<sf:option value="2">2</sf:option>
					<sf:option value="3">3</sf:option>
				</sf:select>
				</td>
			</tr>
			<tr>
				<td></td>
				<td><input value="Ȯ��" type="submit"/></td>
			</tr>
		</table>
	</sf:form>

</body>
</html>