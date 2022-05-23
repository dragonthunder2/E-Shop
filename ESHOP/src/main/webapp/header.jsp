<%@page errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/home-style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<!--Header-->
<br>
<%
String email = session.getAttribute("email").toString();
%>

<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
	<a class="navbar-brand" href="#">E-SHOP</a>
	<div class="collapse navbar-collapse" id="navbarsExample06">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="home.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="messageUs.jsp">Contact</a></li>
			<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
			</li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="http://example.com"
				id="dropdown06" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false">Account</a>
				<div class="dropdown-menu" aria-labelledby="dropdown06">
					<a class="dropdown-item"> <%
 out.println(email);
 %>
					</a> <a class="dropdown-item" href="myCart.jsp">My Cart</a> <a
						class="dropdown-item" href="myOrders.jsp">My Order</a> <a
						class="dropdown-item" href="changeDetails.jsp">Account Details</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="logout.jsp">Log out</a>
				</div></li>
		</ul>
		<form class="form-inline my-2 my-md-0" action="searchHome.jsp"
			method="post">
			<input class="form-control mr-sm-2" type="text" placeholder="Search"
				aria-label="Search" name="search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">
				<i class="fa fa-search"></i>
			</button>
		</form>
	</div>
</nav>

<br>
<!--table-->