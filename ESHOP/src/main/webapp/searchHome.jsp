<%@ page import="project.ConnectionProvider"%>
<%@ page import="java.sql.*"%>
<%@include file="header.jsp"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
<br>
	<br>
	<br>
	<div style="color: white; text-align: center; font-size: 30px;">
		Search result: <i></i>
	</div>

	<div class="container">
		<div class="row">
			<%
			int z = 0;
			try {
				String search = request.getParameter("search");
				Connection con = ConnectionProvider.getCon();
				Statement st = con.createStatement();
				ResultSet rs = st.executeQuery("select* from products where name like '%" + search + "%' or category like '%"
				+ search + "%' and active='Yes'");
				while (rs.next()) {
					z = 1;
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
	<%
	if (z == 0) {
	%>
	<h1 style="color: white; text-align: center;">Nothing to show</h1>
	<%
	}
	%>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<%@include file="footer.jsp"%>
</body>
</html>