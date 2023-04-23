<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
                  <%@ page import="java.io.*" %>
                  <%@ page import="java.util.*" %>
                  <%@ page import="com.oreilly.servlet.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Ecommerce Registration Status..</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/cufon-aller.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {
	color: #FFFFFF;
	font-size: 24px;
}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html" class="style1">Protecting Your Shopping Preference with Differential Privacy</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html"><span>Home Page</span></a></li>
          <li><a href="AdminLogin.jsp"><span>Admin</span></a></li>
          <li><a href="EcommerceLogin.jsp"><span>Merchant</span></a></li>
          <li><a href="UserLogin.jsp"><span>User</span></a></li>
          <li><a href="#"><span></span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide2.jpg" width="960" height="320" alt="" /> </a> <a href="#"><img src="images/slide3.jpg" width="960" height="320" alt="" /> </a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2><span>MerchantUser </span>  Registration Status </h2>
          
          <div class="clr"></div>
          
          <div class="rf">
          <%			
						
					String	uname=request.getParameter("userid");
					String	pass=request.getParameter("pass");
					String	email=request.getParameter("email");
					String	mno=request.getParameter("mobile");
					String	addr=request.getParameter("address");
					String	dob=request.getParameter("dob");
					String	gender=request.getParameter("gender");
					String	esite=request.getParameter("Esite");
					
					try {
								
														
						
		
						
			 			String query1="select * from euser  where username='"+uname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
                  </p>
                  </label>
            
		          <p class="style18 style24">&nbsp;</p>
		          <p class="style1" style="color:#660000">User Name Already Exist..</p>
		          <p align="left"><a href="EcommerceRegister.jsp" class="style5 style16 style35">Back</a></p>
            <p>&nbsp;            </p>
		          <p>
		            <%
				
					   }
					   else
					   {
					   
					  String status = "Waiting";
					  
PreparedStatement ps=connection.prepareStatement("insert into euser(username,password,email,mobile,address,dob,gender,esite,status) values(?,?,?,?,?,?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,pass);
						ps.setString(3,email);	
						ps.setString(4,mno);
						ps.setString(5,addr);
						ps.setString(6,dob);
						ps.setString(7,gender);
						ps.setString(8,esite);
						ps.setString(9,status);
				
						
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                  </p>
		          <p class="style23">&nbsp;</p>
		          <p class="style1" style="color:#660000">Registration Successfull.</p>
		          <p class="style19">&nbsp;</p>
		          <p><a href="EcommerceLogin.jsp" class="style16">Back</a></p>
		          <%
			
					}}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
          </div>
          <div class="clr"></div>
        </div>
        </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
        <div class="clr"></div>
        <div class="gadget">
          <h2 class="star"><span>Home</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="#">Home</a></li>
            <li><a href="AdminLogin.jsp">Admin</a></li>
            <li><a href="EcommerceLogin.jsp">Merchant</a></li>
            <li><a href="UserLogin.jsp">User</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr"></div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
