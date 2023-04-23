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
<title>Inter CC Fraud..</title>
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
.style2 {
	color: #660000;
	font-size: 16px;
	}
.style3 {color: #000000;
font-size: 14px}
.style4 {color: #FF3300;
font-size: 14px}
.style5 {
	color: #FF3300;
	font-weight: bold;
	font-size: 16px;
}
.style6 {color: #FF6600}
.style7 {
	color: #FF6600;
	font-size: 16px;
	font-weight: bold;
}
.style8 {color: #FF0066}
.style9 {color: #660000}
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
          <h2><span>Analysis Inter Group CC </span> Fraud Detection </h2>
          <p class="infopost" align="right"><%=new java.util.Date()%> </p>
          <div class="clr"></div>
          
          <div class="rf">
          
	  
	  	    
	  	    <p>
	  	      <%
	String s11="",s12="",s0="",s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="";
	int i=0,j=0,count=0,rank=0,k=0;
	try
	{
			String sql3="select distinct site from ifraud";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s11=rs3.getString(1);
			   
			 String sql5="select distinct site from fraud";
			Statement st5=connection.createStatement();
			  ResultSet rs5=st5.executeQuery(sql5);
			while ( rs5.next() )
			   {
			   s12=rs5.getString(1);  
			 
			%>
            </p>
			<p class="style5 style8">	Transaction declined due to fraud activity </p>
	  	    <table width="572" border="1">
				  <tr bgcolor="#FFFFFF">
				    <td colspan="8" ><h2 class="style6" style="color:#336600" ><span class="style9">Site Name :</span> 
				      <%out.println(s11);%> 
                     </h2></td>
			      </tr>
				 
                      <td  width="40"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">ID</div></td>
                      <td  width="105" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Fraud Name</div></td>
                      <td  width="163" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Details</div></td>
                      <td  width="109" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Amount</div></td>
					  <td  width="104" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Site</div></td>
                      <td  width="74"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Date</div></td>
                    </tr>
				 
				  <%
					  
					  	
						   	String query="select * from ifraud where site='"+s11+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);				
						
							
						
						count++;
			   
					 %>
							   <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3"><span class="style3">
                        <%out.println(i);%>
                      </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style3">
                            <%out.println(s1);%>
                            </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style4">
                            <%out.println(s2);%>
                            </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style3">
                            <%out.println(s3);%>
                            </span></div></td>
       				  <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style4">
                            <strong><%out.println(s4);%></strong>
                            </span></div></td>
 					 <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style3">
                            <%out.println(s5);%>
                            </span></div></td>
              </tr>
							
	     <%
					 }
			
			       %></table> 				   
	<p>&nbsp;</p>
	<p class="style7">Entered Wrong Credit Card Credentials </p>
	<table width="572" border="1">
				  <tr bgcolor="#FFFFFF">
				    <td colspan="8" ><h2 class="style6" style="color:#336600" ><span class="style9">Site Name :</span> 
				      <%out.println(s12);%> 
                     </h2></td>
			      </tr>
				 
                      <td  width="40"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">ID</div></td>
                      <td  width="105" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Fraud Name</div></td>
                      <td  width="163" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Details</div></td>
                      <td  width="109" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Amount</div></td>
					  <td  width="104" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Site</div></td>
                      <td  width="74"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Date</div></td>
                    </tr>
				 
				  <%
					  
					  	
						   	String query1="select * from fraud where site='"+s12+"'"; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		while ( rs1.next() )
					   		{
								j=rs1.getInt(1);
								s6=rs1.getString(2);
								s7=rs1.getString(4);
								s8=rs1.getString(5);
								s9=rs1.getString(6);
								s10=rs1.getString(7);				
						
							
						
						count++;
			   
					 %>
							   <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3"><span class="style3">
                        <%out.println(j);%>
                      </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style3">
                            <%out.println(s6);%>
                            </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style4">
                            <%out.println(s7);%>
                            </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style3">
                            <%out.println(s8);%>
                            </span></div></td>
       				  <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style4">
                            <strong><%out.println(s9);%></strong>
                            </span></div></td>
 					 <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style3">
                            <%out.println(s10);%>
                            </span></div></td>
              </tr>
			  <%
					 }
			
			       %></table> 				   
	<p>&nbsp;</p>
				<%
			}}
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table><p>&nbsp;</p>
					
					
        	
		<p align="left"><a href="AdminMain.jsp" class="style2">Back</a></p>
		
		
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
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="AdminMain.jsp">Home</a></li>
            <li><a href="AdminLogin.jsp">Logout</a></li>
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
