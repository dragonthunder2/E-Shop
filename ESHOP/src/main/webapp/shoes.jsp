<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@include file="header.jsp"%>
<%@include file="footer.jsp"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>
	<div style="color: white; text-align: center; font-size: 30px;">
		Home <i class="fa fa-institution"></i>
	</div>

	<div class="container">
		<div class="row">
			<%			
			try {				
				Connection con = ConnectionProvider.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select* from products where category='Shoes' and active='Yes'");
				while (rs.next()) {
			%>
			<div class="col-sm-3">
				<div class="card w-100" style="width: 18rem;">
					<img class="card-img-top" src=<%=rs.getString(6)%>
						alt="Card image cap">
					<div class="card-body">
						<h5 class="card-title"><%=rs.getString(2)%></h5>
						<h6 class="price">
							<i class="fa fa-dollar"></i><%=rs.getString(4)%></h6>
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

	<br>
	<br>
	<br>

</body>
</html>