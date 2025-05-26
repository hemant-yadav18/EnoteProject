<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Login page</title>
<%@include file="all_component/allcss.jsp"%>
</head>
<body>

	<%@include file="all_component/navbar.jsp"%>
	<div class="continer-fluid div-color">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">
					<div class="card-header text-center text-white bg-custom">
						<i class="fa fa-user-plus fa-3x" aria-hidden="true"></i>
						<h1>Login page</h1>
					</div>


					<%
					String invalidMsg = (String) session.getAttribute("login-failed");
					if (invalidMsg != null) {
					%>
					<div class="alert alert-danger" role="alert"><%= invalidMsg %></div>
					<%
					session.removeAttribute("login-failed");
					}
					%>


                  
                  <%
                  String withoutLogin=(String)session.getAttribute("Login-error");
                  if(withoutLogin!=null){
                	  %>
                	    	<div class="alert alert-danger" role="alert"><%= withoutLogin %></div>
                	  <% 
                		session.removeAttribute("Login-error");
                  }
                  %>
                  
                  <%
                  String lgMsg=(String)session.getAttribute("logoutMsg");
                  if(lgMsg!=null){
                	  %>
                	  <div class="alert alert-success" role="alert"><%= lgMsg %></div>
                	  
                	  <% 
                	  session.removeAttribute("logoutMsg");
                  }
                  %>

					<div class="card-body">
						<form action="loginServlet" method="post">


							<label>Enter Email</label>
							<div class="form-group">
								<input type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" name="uemail">

							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Enter Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									name="upassword">
							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div class="container-fluid bg-dark mt-1">
<p class="text-center text-white">Note :Any Error occur then contact :- Admin  . Designed and devloped by <b style="color: blue;">Hemant yadav</b>
</p>
<p class="text-center text-white">All Reight Reserved:- Hemanty4472@gmail.com 2024-2025</p>
</div>




</body>
</html>