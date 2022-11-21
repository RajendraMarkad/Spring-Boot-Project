<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Recommendations</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
	integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<style type="text/css">
#error {
	color: red;
}
</style>
</head>
<style>
      body {
        background-image: url('https://image.shutterstock.com/image-vector/green-color-abstract-healthy-medical-260nw-1393364825.jpg');
        background-repeat: no-repeat;
background-attachment: fixed;
background-size: cover;
      }
      h1 {
        margin: auto;
text-align: center;
color: whitesmoke;

}
.container {
margin-top: 200px;
width: 300px;
height: 300px;
display: grid;
}
.btn{
 margin-top: 5px;
}
.btn a{
 text-decoration: none;
 color: whitesmoke;
}

      </style>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-dark">
		<h3 style="color: white;">View Diet/Exercise Recommendations</h3>
		<form:form action="/patientLogin" method="get" modelAttribute="patient">
			<div style="margin-left: 40rem">
				<input name="login" id="login" class="btn btn-primary" type="submit"
					value="Logoff">
			</div>
		</form:form>
	</nav>
	
	<div class="container" style="margin-left:10%; margin-top:5%;font-size=2rem;float:left">
	  <table border=2 align="center">
	   <tr>
	   <td>Patient Id:&nbsp;&nbsp;&nbsp;</td>
	   <td>${patient.patientId}<td></tr>
	   <tr>
	   <td>Patient Name:&nbsp;&nbsp;&nbsp;</td>
	   <td>${patient.firstName}<td></tr>
	   <tr>
	   <td>Diet:&nbsp;&nbsp;&nbsp;</td>
	   <td>${patient.diet}<td></tr>
	   <tr>
	   <td>Execrise:&nbsp;&nbsp;&nbsp;</td>
	   <td>${patient.execrise}<td></tr>
	   
<%-- <tr><th>Patient Id</th>
<th>Patient Name</th>
<th>Diet</th>
<th>Execrise</th>


<tr>

<td><c:out value="${patient.patientId}"></c:out></td>
<td><c:out value="${patient.firstName}"></c:out></td>
<td><c:out value="${patient.diet}"></c:out></td>
<td><c:out value="${patient.execrise}" ></c:out></td>
</tr>--%>
</table>
 <a href="/">Go back to Patient Home</a>
	</div>
  
</body>
</html>