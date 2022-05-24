<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@include file="header.jsp"%>

<html>
<head>
<link rel="stylesheet" href="css/card-style.css">
<link rel="canonical"
	href="https://getbootstrap.com/docs/4.0/examples/carousel/">
<link href="css/carousel.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<style>
h3 {
	color: yellow;
	text-align: center;
}
</style>
</head>

<body>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="first-slide"
					src="https://superultrawidewallpaper.com/wp-content/uploads/2020/01/jordan-1-3840x1080.jpg"
					alt="First slide">
				<div class="container">
					<div class="carousel-caption text-left">
						<h1>Welcome to E-SHOP.</h1>
						<p>Online shopping Website made by group 4.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="signup.jsp" role="button">Sign
								up today</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img class="second-slide"
					src="https://images.wallpaperscraft.com/image/single/shirt_bads_jeans_jacket_124486_2560x1024.jpg"
					alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Give us your Feedback</h1>
						<p>We will improve products base on your feedback.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="messageUs.jsp" role="button">Contact Us</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img class="third-slide"
					src="https://wallpaperaccess.com/full/4523682.jpg"
					alt="Third slide">
				<div class="container">
					<div class="carousel-caption text-right">
						<h1>Remember to update your user profile.</h1>
						<p>Update your personal info and password..</p>
						<p>
							<a class="btn btn-lg btn-primary" href="changeDetails.jsp" role="button">Account details</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#myCarousel" role="button"
			data-slide="prev"> <span class="carousel-control-prev-icon"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#myCarousel" role="button"
			data-slide="next"> <span class="carousel-control-next-icon"
			aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
	</div>

	<div class="container mt-100">
		<div style="color: black; text-align: center; font-size: 35px;">
			Popular Categories <i class="fa fa-cart"></i> <br> <br>
		</div>
		<div class="row">
			<div class="col-md-4 col-sm-6">
				<div class="card mb-30">
					<a class="card-img-tiles">
						<div class="inner">
							<div class="main-img">
								<img
									src="https://media.istockphoto.com/vectors/blank-black-tshirt-vector-for-template-vector-id1300124478?k=20&m=1300124478&s=612x612&w=0&h=H9jAqAIN2Jv1kPHFBUfUQ1mE7PniTTe2452HT9UU5YE=">
							</div>
						</div>
					</a>
					<div class="card-body text-center">
						<h4 class="card-title">Shirts</h4>
						<p class="text-muted">Starting from $79</p>
						<a class="btn btn-outline-primary btn-sm" href="shirts.jsp"
							data-abc="true">View Products</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="card mb-30">
					<a class="card-img-tiles">
						<div class="inner">
							<div class="main-img">
								<img
									src="https://media.istockphoto.com/photos/pair-of-stylish-sneakers-isolated-on-white-background-white-casual-picture-id1248566148?k=20&m=1248566148&s=170667a&w=0&h=Lom1xUV8pfz2kFmzepcEzn52mlEzWj5d2TMDFKlhOsc="
									alt="Category">
							</div>
							<div class="thumblist">
								<img
									src="https://img.freepik.com/free-photo/running-shoes-white-background_10541-635.jpg"
									alt="Category"><img
									src="https://c4.wallpaperflare.com/wallpaper/601/305/95/nike-full-hd-wallpaper-preview.jpg"
									alt="Category">
							</div>
						</div>
					</a>
					<div class="card-body text-center">
						<h4 class="card-title">Shoes</h4>
						<p class="text-muted">Starting from $99</p>
						<a class="btn btn-outline-primary btn-sm" href="shoes.jsp"
							data-abc="true">View Products</a>
					</div>
				</div>
			</div>
			<div class="col-md-4 col-sm-6">
				<div class="card mb-30">
					<a class="card-img-tiles">
						<div class="inner">
							<div class="main-img">
								<img
									src="https://thumbs.dreamstime.com/b/school-backpack-white-background-151312141.jpg"
									alt="Category">
							</div>
							<div class="thumblist">
								<img
									src="https://raybansunglassespriceinsaudiarabia.files.wordpress.com/2017/02/sunglasses.jpg"
									alt="Category"><img
									src="https://s3.envato.com/files/243772655/94%20-%2022.10.2017.jpg"
									alt="Category">
							</div>
						</div>
					</a>
					<div class="card-body text-center">
						<h4 class="card-title">Accessories</h4>
						<p class="text-muted">Starting from $59</p>
						<a class="btn btn-outline-primary btn-sm" href="accessories.jsp"
							data-abc="true">View Products</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<hr class="featurette-divider">
		<div style="color: black; text-align: center; font-size: 35px;">
			Popular Products <br> <br>
		</div>
		<div class="row">
			<%
			try {
				Connection con = ConnectionProvider.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select* from products where active='Yes' limit 6");
				while (rs.next()) {
			%>
			<div class="col-12 col-sm-8 col-md-6 col-lg-4">
				<div class="card">
					<img class="card-img" src=<%=rs.getString(6)%> alt="Vans">
					<div class="card-body">
						<h5 class="card-title"><%=rs.getString(2)%></h5>
						<h6 class="card-subtitle mb-2 text-muted">
							Category:
							<%=rs.getString(3)%></h6>
						<p class="card-text"><%=rs.getString(7)%></p>
						<div class="options d-flex flex-fill"></div>
						<div class="buy d-flex justify-content-between align-items-center">
							<div class="price text-success">
								<h5 class="mt-4">
									$<%=rs.getString(4)%></h5>
							</div>
							<a href="addToCartAction.jsp?id=<%=rs.getString(1)%>"
								class="btn btn-primary"><i class="fas fa-shopping-cart"></i>
								Add to Cart</a>
						</div>
					</div>
				</div>
			</div>

			<%
			}
			} catch (Exception e) {
			System.out.println(e);
			}
			%>
		</div>
	</div>
	
	<%@include file="footer.jsp"%>
</body>
</html>