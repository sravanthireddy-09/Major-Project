<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Purchase Status..</title>
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
.style2 {color: #330000}
.style3 {color:#FF3300}
.style4 {color: #FFFFFF}
.style5 {color: #660000}
.style6 {
	font-size: 18px;
	color: #FF0000;
}
.style7 {color: #000000}
.style8 {color: #FFFF33}
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
          <h2><span>Purchase  </span> Status.. </h2>
          <p class="infopost" align="right"><%=new java.util.Date()%> </p>
          <div class="clr"></div>
          
          <div class="rf">

<%
   
    try
	{
			int amount1 =0,amount2 =10,pprice=0,uamount=0,sub=0;
  			String s1,s2,s3,s4;
			
			String p_Name=request.getParameter("p_Name");
	
			String p_Category=request.getParameter("p_Category");			
		
			String site=request.getParameter("site");
			
			String user=(String)application.getAttribute("uname");
		
String credit="";
			
			String sql="SELECT card_no,amount FROM creditcard where user='"+user+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next())
			{
								credit=rs.getString(1);
								uamount=Integer.parseInt(rs.getString(2));				
																
								String sql1="SELECT * FROM products where p_name='"+p_Name+"' and categoryname='"+p_Category+"' and site='"+site+"'";
								Statement stmt1 = connection.createStatement();
								ResultSet rs1 =stmt.executeQuery(sql1);
								if(rs1.next()==true)
								{
										pprice=Integer.parseInt(rs1.getString(4));
										if(pprice>uamount)
										{
											 %><br/><%
											out.println("Insufficient Amount");
											 %><br/><br/><a href="MyCartProducts.jsp">Back</a><%
										}
										else
										{
												sub=uamount-pprice;
												String leftamount=String.valueOf(sub);
												String sql2="Update creditcard set amount='"+leftamount+"'  where user='"+user+"' and card_no='"+credit+"'";
												Statement stmt2 = connection.createStatement();
												stmt2.executeUpdate(sql2);
												//ResultSet rs2=
												//if(rs2.next()==true)
									//{
											   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
											   SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
						
											   Date now = new Date();
						
											   String strDate = sdfDate.format(now);
											   String strTime = sdfTime.format(now);
											   String date = strDate + "   " + strTime;
											   
														PreparedStatement ps1=connection.prepareStatement("insert into purchase(card_no,user,p_name,category,date,price,site) values(?,?,?,?,?,?,?)");
														ps1.setString(1,credit);
														ps1.setString(2,user);
														ps1.setString(3,p_Name);
														ps1.setString(4,p_Category);
														ps1.setString(5,date);
														ps1.setInt(6,pprice);
														ps1.setString(7,site);
														
														int k=ps1.executeUpdate();
														if(k>0)
														{
															
															Statement st12=connection.createStatement();
															String strQuery12 = "delete from cart where (p_name='"+p_Name+"'  and category='"+p_Category+"') and (user='"+user+"' and site='"+site+"') ";
															st12.executeUpdate(strQuery12);
																									
															%><br/><%
															out.println("Purchase Successfull..");
															%><br/><br/><a href="MyCartProducts.jsp">Back</a><%

														}																
											}
								
									}
									else
									{
									String sql2="SELECT * FROM videoproducts where p_name='"+p_Name+"' and category='"+p_Category+"' and site='"+site+"'";
								Statement stmt2 = connection.createStatement();
								ResultSet rs2 =stmt2.executeQuery(sql2);
								if(rs2.next()==true)
								{
										pprice=Integer.parseInt(rs2.getString(4));
										if(pprice>uamount)
										{
											 %><br/><%
											out.println("Insufficient Amount");
											 %><br/><br/><a href="MyCartProducts.jsp">Back</a><%
										}
										else
										{
												sub=uamount-pprice;
												String leftamount=String.valueOf(sub);
												String sql22="Update creditcard set amount='"+leftamount+"'  where user='"+user+"' and card_no='"+credit+"'";
												Statement stmt22 = connection.createStatement();
												stmt22.executeUpdate(sql22);
												//ResultSet rs2=
												//if(rs2.next()==true)
									//{
											   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
											   SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
						
											   Date now = new Date();
						
											   String strDate = sdfDate.format(now);
											   String strTime = sdfTime.format(now);
											   String date = strDate + "   " + strTime;
											   
														PreparedStatement ps1=connection.prepareStatement("insert into purchase(card_no,user,p_name,category,date,price,site) values(?,?,?,?,?,?,?)");
														ps1.setString(1,credit);
														ps1.setString(2,user);
														ps1.setString(3,p_Name);
														ps1.setString(4,p_Category);
														ps1.setString(5,date);
														ps1.setInt(6,pprice);
														ps1.setString(7,site);
														
														int k=ps1.executeUpdate();
														if(k>0)
														{
															
															Statement st12=connection.createStatement();
															String strQuery12 = "delete from cart where (p_name='"+p_Name+"'  and category='"+p_Category+"') and (user='"+user+"' and site='"+site+"') ";
															st12.executeUpdate(strQuery12);
																									
															%><br/><%
															out.println("Purchase Successfull..");
															%><br/><br/><a href="MyCartProducts.jsp">Back</a><%

														}																
											}
									}
									else
									{
									
											%><br/><%
											out.print("Product Details Not Found..");
											 %><br/><br/><a href="MyCartProducts.jsp">Back</a><%
									
									}
					}}
					
					else
					{	 
						   					   
						%><br/><%
						out.print("Account Not Found..");
						 %><br/><br/><a href="MyCartProducts.jsp">Back</a><%
						
					}
									
					
		connection.close();
		
	}
	catch(Exception e)
	{
		out.print(e);
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
          <h2 class="star"><span>User</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="UserMain.jsp">Home</a></li>
            <li><a href="UserLogin.jsp">Logout</a></li>
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