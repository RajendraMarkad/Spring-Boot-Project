<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>       
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Clerk Registration</title>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"> </script> 
</head>
<body>
<div id="wrapper">
  <nav class="navbar navbar-expand-lg navbar-light bg-dark">
		<h3 style="color: white;">Clerk Registration</h3>
		<form:form action="/clerkLogin" method="get" modelAttribute="clerk">
				<div style="margin-left: 60rem">
					<input name="login" id="login" class="btn btn-primary"
						type="submit"  value="Login">
				</div>
				</form:form>
	</nav>
	<h2 style="text-align:center">Clerk Registration</h2>
	
  <form:form action="/cregSuccess" method="post" modelAttribute="clerk">
    <table style="margin-left: 42%; margin-top: 5%; font-size=40px;">
  <tr>
       <td>
         <label for="fname">First Name</label>
       </td>
       <td>  
         <form:input path="firstName" size="25" id="fname" placeholder="Enter the first Name" autocomplete="off" oninvalid="alert('You must fill first name!');" required="true" />
       </td>
     </tr>     
         
     <tr>
       <td>
         <label for="lname">Last Name</label>
       </td>
       <td>  
         <form:input path="lastName" size="25" id="lname" placeholder="Enter the last Name" autocomplete="off" oninvalid="alert('You must fill last name!');" required="true" />
       </td>
     </tr> 
     <tr>
       <td>
         <label for="dob">DOB</label>
       </td>
       <td>  
        <form:input path="dob" size="25" id="dob" type="date" placeholder="Enter the date of birth" class="date" autocomplete="off" oninvalid="alert('You must fill DOB!');" required="true" />
       </td>
     </tr> 
      <tr>
			    <td>Gender</td>
			    <td>
			    <form:select path="gender">  
			       <form:option value="--select--" label="--select--"/>
                   <form:option value="Male" label="Male"/>  
                    <form:option value="Female" label="Female"/>  
                    <form:option value="Other" label="Other"/>   
                  </form:select>  
               </td>
			</tr>           
      <tr>
      
       <tr>
       <td>
         <label for="contactNo">Contact No</label>
       </td>
       <td>  
         <form:input path="contactNo" size="25" id="cntNo" placeholder="Enter the contactNo" autocomplete="off" oninvalid="alert('You must fill Contact Number!');" required="true" pattern="[789][0-9]{9}" />
       </td>
     </tr> 
      <tr>
					<td><label for="clerkId">Clerk Id</label></td>
					<td><form:input path="clerkId" size="25" id="clerkId" placeholder="Enter the clerk Id" autocomplete="off" oninvalid="alert('You must fill  Id!');" required="true"/></td>
	 </tr>
      <tr>
       <td>
         <label for="password">Password</label>
       </td>
       <td>  
         <form:password path="password" size="25" id="psswrd" placeholder="Enter the password" autocomplete="off" oninvalid="alert('You must fill Password with atleast 6 charcters, one number and special characters(@#!)!');" required="true" pattern="((?=.*\d)(?=.*[!@#$%]).{6,})" />
       </td>
     </tr>
     
     <tr>
       <td>
         <label for="qualification">Qualification</label>
       </td>
       <td>  
         <form:input path="qualification" size="25" id="qualification" placeholder="Enter the Qualification" autocomplete="off" oninvalid="alert('You must fill Qualification!');" required="true" />
       </td>
     </tr> 
      <tr>
       <td>
         <label for="address">Address</label>
       </td>
       <td>  
          <form:textarea path="address" placeholder="address"/>
       </td>
     </tr>
     
				<tr>
					<td>Secret Question&nbsp;&nbsp;</td>
					<td><form:select path="secretQ">
							<form:option value="What is your childhood name"
								label="What is your childhood name" />
							<form:option value="What is your pet name"
								label="What is your pet name" />
							<form:option value="Who is your childhood friend"
								label="Who is your childhood friend" />
						</form:select></td>
				</tr>
				<tr>
					<td><label for="answer">Answer:</label></td>
					<td><form:input path="answer" size="25" id="answer"
							placeholder="Enter the Answer" autocomplete="off"
							oninvalid="alert('You must fill Answer for the Secret Question');" required="true" /></td>
				</tr>  
     <tr>
         <td colspan=2 align=center><input class="btn btn-primary" type=submit value="Sign Up" style="width:40%"/>
         </td>
      </tr>
    </table>
  </form:form> 
  </div>
  <br>
  <br>
  
  <script> 
        $(document).ready(function() { 
            $("input").focusout(function() { 
                if($(this).val()=='') { 
                    $(this).css('border', 'solid 2px red'); 
                } 
                else
            	{
            	$(this).css('border', 'solid 2px black');
            	}
            }) .trigger("focusin");
        }); 
    </script> >
</body>
</html>