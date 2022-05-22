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

	<nav class="navbar sticky-top navbar-expand navbar-light bg-light">
		<a class="navbar-brand" href="#">E-Shop</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="home.jsp">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
					role="button" data-toggle="dropdown" aria-haspopup="true"
					aria-expanded="false"> </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="myCart.jsp">My Cart</a> <a
							class="dropdown-item" href="#">My Order</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="logout.jsp">Log out</a>
					</div></li>
				<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
				</li>
			</ul>
			<form class="form-inline my-2 my-lg-0" action="searchHome.jsp" method="post">
				<input class="form-control mr-sm-2" type="text"
					placeholder="Search" aria-label="Search" name="search">
				<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
	</nav>


<div class="topnav sticky">
	<%
	String email = session.getAttribute("email").toString();
	%>
	<h2>
		<a href=""> <%
 out.println(email);
 %> <i class='fas fa-user-alt'></i>
		</a>
	</h2>
	<a href="home.jsp">Home<i class="fa fa-institution"></i></a> <a
		href="myCart.jsp">My Cart<i class='fas fa-cart-arrow-down'></i></a> <a
		href="">My Orders <i class='fab fa-elementor'></i></a> <a href="">Change
		Details <i class="fa fa-edit"></i>
	</a> <a href="">Message Us <i class='fas fa-comment-alt'></i></a> <a
		href="">About <i class="fa fa-address-book"></i></a> <a
		href="logout.jsp">Logout <i class='fas fa-share-square'></i></a>
	<div class="search-container">
		<form action="searchHome.jsp" method="post">
			<input type="text" placeholder="Search" name="search">
			<button type="submit">
				<i class="fa fa-search"></i>
			</button>
		</form>

	</div>
</div>
<br>
<!--table-->