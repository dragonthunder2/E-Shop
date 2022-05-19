<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/home-style.css">
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

	<div style="color: white; text-align: center; font-size: 30px;">
		Home <i class="fa fa-institution"></i>
	</div>
	<%
	String msg = request.getParameter("msg");
	if ("added".equals(msg)) {
	%>
	<h3 class="alert">Product added successfully!</h3>
	<%
	}
	%>
	<%
	if ("exist".equals(msg)) {
	%>
	<h3 class="alert">Product already exist in you cart! Quantity
		increased!</h3>
	<%
	}
	%>
	<%
	if ("invalid".equals(msg)) {
	%>
	<h3 class="alert">Something went wrong!</h3>
	<%
	}
	%>

	<div class="container">
		<div class="row">
			<%
			try {
				Connection con = ConnectionProvider.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select* from products where active='Yes'");
				while (rs.next()) {
			%>
			<div class="col-md-3">
				<div class="card w-100" style="width: 18rem;">
					<img class="card-img-top" src=<%=rs.getString(6)%>
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=rs.getString(2)%></h5>
						<h6 class="price"><%=rs.getString(4)%></h6>
						<h6 class="category"><%=rs.getString(3)%></h6>
						<div class="mt-3 d-flex justify-content-between">
							<a href="addToCartAction.jsp?id=<%=rs.getString(1)%>"
								class="btn btn-primary">Add to cart</a>
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
	
	<%@include file="../footer.jsp"%>
</body>
</html>