<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 class="text-center">${Header}</h1>
<p class="text-center">${desc}</p>

<h1 style="color:green">${msg }</h1>
<div class="form-row">
      <div class="form-group col-md-6">
<h1 > Welcome,First Name ${student.firstName }</h1>
<h1>Last Name : ${student.lastName}</h1>
</div>
</div>
<div class="form-row">
      <div class="form-group col-md-6">
<h1>Branch : ${student.branch}</h1>
<h1>percentage : ${student.percentage}</h1>
</div>
</div>
<div class="form-row">
      <div class="form-group col-md-6">
<h1>DOB: ${student.DOB}</h1>
<h1>batch: ${student.batch}</h1>
</div></div>
<h1>college: ${student.collegeName}</h1>
<h1>skills: ${student.skills}</h1>
<h1>project : ${student.projects}</h1>
<h1>mode : ${student.mode}</h1>

<h1>${ filename}</h1>
<img alt="profile image" src="<c:url value="WEB-INF/image/${filename}"/>"/>


</body>
</html>