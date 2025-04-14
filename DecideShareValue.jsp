<%-- 
    Document   : StockHome
    Created on : 22 Feb, 2018, 1:49:28 PM
    Author     : VENKAT
--%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Stock Home</title>
<meta charset="utf-8">
<link rel="stylesheet" href="css/reset.css" type="text/css" media="all">
<link rel="stylesheet" href="css/layout.css" type="text/css" media="all">
<link rel="stylesheet" href="css/style.css" type="text/css" media="all">
<script type="text/javascript" src="js/jquery-1.4.2.js" ></script>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-replace.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_400.font.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_700.font.js"></script>
<script type="text/javascript" src="js/Myriad_Pro_600.font.js"></script>
</head>
<body id="page1">
<div class="main">
<!-- header -->
	<header>
		<div class="wrapper">
			<h1><a href="index.html" id="logo"><image src="images/Designer.png" height="100px" width="850px" alt="Designer.png"/></a></h1>
			
				<div class="bg">
					
				</div>
			
		</div>
		<nav>
			<ul id="menu">
				<li class="alpha" id="menu_active"><a href="StockHome.jsp"><span><span>Home</span></span></a></li>
				<li><a href="CompanyDetails.jsp"><span><span>Company</span></span> </a></li>
				<li class="omega"><a href="UserDetails.jsp"><span><span>User</span></span></a></li>
				<li><a href="ArticalsDetails.jsp"><span><span>Articles</span></span></a></li>
				<li class="omega"><a href="StockLogin.jsp"><span><span>LogOut</span></span></a></li>
			</ul>
		</nav>
		
	</header><div class="ic">More Website Templates at TemplateMonster.com!</div>
<!-- / header -->
<!-- content -->
	<section id="content">
		<div class="wrapper">
			<div class="wrapper">
				<ul class="banners">
					<li>
						<a href="#"><img src="https://th.bing.com/th/id/OIP.xEMMQRS8xcLyx02aEuyRKwHaHa?rs=1&pid=ImgDetMain" height="100px" width="100px" alt=""></a>
						<div class="pad">
							<p class="font1"> View Company Details</p>
							
							<a href="#" class="marker"></a>
						</div>
					</li>
					<li>
						<a href="#"><img src="https://th.bing.com/th/id/OIP.tu5yvoyO5oYFWYzLVOf-BwHaHa?rs=1&pid=ImgDetMain" height="100px" width="100px"  alt=""></a>
						<div class="pad">
							<p class="font1">Our Capabilities</p>
							<p></p>
							<a href="#" class="marker"></a>
						</div>
					</li>
					<li>
						<a href="#"><img src="https://th.bing.com/th/id/OIP._PMxkPJYBC77m89Q_XV4pgHaEK?rs=1&pid=ImgDetMain" height="100px" width="200px" alt=""></a>
						<div class="pad">
							<p class="font1">Where We Deliver</p>
							<p></p>
							<a href="#" class="marker"></a>
						</div>
					</li>
					<li>
						<a href="#"><img src="https://cdn-icons-png.flaticon.com/512/337/337118.png" height="100px" width="200px" alt=""></a>
						<div class="pad">
							<p class="font1">Operations Consulting</p>
							<p></p>
							<a href="#" class="marker"></a>
						</div>
					</li>
				</ul>
			</div>
			<div class="wrapper">
				<div class="box bot pad_bot2">
					<div class="pad">
                                           
						<article class="col1">
                                                    <form action="ShareValue.jsp" name="share" method="post">
                                                    <table border="1" cellpadding="10" width="800" style="border:1px solid black;">
                                                        <h1><center>Company Details</center></h1>
                                                       
 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="databaseconnection.databasecon" %>
<%@page import="java.sql.*"%>
     <%String companyname=request.getParameter("companyname");%>  
<%String id=request.getParameter("id");%> 
     <%
     
         try{                                                   
Connection con=databasecon.getconnection();
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from comregister where companyname='"+companyname+"'and companyid='"+id+"'");
while(rs.next()){
     String status=rs.getString("status");%>
     <tr><th>Company Name</th><td><input type="text" name="name" value="<%=rs.getString(1)%>"readonly></td></tr>
     <tr><th>Company ID</th><td><input type="text" name="id" value="<%=rs.getString(2)%>"readonly></td></tr>
     <tr><th>Company Type</th><td><input type="text" name="type" value="<%=rs.getString(4)%>"readonly></td></tr>
     <tr><th>Company TurnOver</th><td><input type="text" name="turnover" value="<%=rs.getString(8)%>"readonly></td></tr>
     <tr><th>Decide Share Value</th><td><input type="text" name="shares"></td></tr>
     <tr><th></th><td><input type="submit" Value="Share Value"></td></tr>
                                                        
                                                        
<%}
}catch(Exception e){
    out.println(e);
}%>
                                                    </table>
                                                    </form>
							</div>
							<div class="wrapper line1">
                                                            
                                                            </div>
						
						
					</div>
				</div>
			</div>
		</div>
	</section>
<!-- / content -->
<!-- footer -->
	<footer>
		<a href="#" target="_blank">Designed By</a> Something
	</footer>
<!-- / footer -->
</div>
<script type="text/javascript"> Cufon.now(); </script>
</body>
</html>