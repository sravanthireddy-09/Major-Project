<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>All Products..</title>
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
.style2 {color: #660000}
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
          <h2><span> <span style="color:#FFFF00"><%=(String)application.getAttribute("esite")%>'s </span>All Products.. </h2>
          <p class="infopost" align="right"><%=new java.util.Date()%> </p>
          <div class="clr"></div>
          
          <div class="rf">
          
				   <table width="680" border="1" align="center">
  <tr>
   <td width="140" height="32"><div align="center"><span class="style3" style="color:#660000"><b>Id</b> </span></div></td>
    <td width="178"><div align="center" style="color:#660000"><strong>Product Name</strong></div></td>
   <td width="140" height="32"><div align="center"><strong><span class="style2">Image</span></strong></div></td>
      <td width="293"><div align="center" style="color:#660000"><span class="style3"><b>Manufacture</b> </span></div></td>
    <td width="178"><div align="center" style="color:#660000"><strong>Description</strong></div></td>
	  <td width="205"><div align="center" style="color:#660000"><span class="style3"><b>Date</b></span></div></td>
	  <td width="205"><div align="center"><span class="style3" style="color:#660000"><b>Rank</b></span></div></td>
	  	  <td width="205"><div align="center"><span class="style3" style="color:#660000"><b>Reviews</b></span></div></td>
  </tr>

            <%@ include file="connect.jsp" %>
            <%@ page import="java.io.*"%>
            <%@ page import="java.util.*" %>
            <%@ page import="java.util.Date" %>
            <%@ page import="com.oreilly.servlet.*"%>
            <%@ page import ="java.text.SimpleDateFormat" %>
            <%@ page import ="javax.crypto.Cipher" %>
            <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
            <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
			<%@ page import="org.bouncycastle.util.encoders.Base64"%>

<%

	String site= (String)application.getAttribute("esite");
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0,r=0;

      	try 
	{
        
          
      		
      		
      		String query="select * from products where site='"+site+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(5);
		s4=rs.getString(7);
		s5=rs.getString(8);
		s7=rs.getString(9);
		s9=rs.getString(3);
		s10=rs.getString(11);
		r=rs.getInt(10);
		
					String decryptedDes= new String(Base64.decode(s4.getBytes()));
		
		%>



  <tr>
      <td><div align="center" style="color:#660000"><%=i%></div></td>
    <td><div align="center" style="color:#2c83b0"><strong><%=s2%></strong></div></td>
    <td><div align="center">
      <input  name="image" type="image" src="pimage.jsp?imgid=<%=i%>" width="100" height="100" alt="Submit">
      </input></div>
	 </td>
    <td><div align="center" style="color:#000000"><%=s3%></div></td>
     <td><div align="center" style="color:#000000"><%=decryptedDes%></div></td>
		  	   <td><div align="center" style="color:#000000"><%=s7%></div></td>
			   <td><div align="center" style="color:#000000"><%=r%></div></td>
		  	   <td><div align="center"><a href="reviews.jsp?p_Name=<%= s2%>&amp;p_Category=<%=s9%>&amp;site=<%=s10%>">Reviews</a></div></td>
  </tr>

<%
	   }
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>


</table>
		          <p><a href="EcommerceMain.jsp" class="style16">Back</a></p>
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
          <h2 class="star"><span>Ecommerce</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="EcommerceMain.jsp">Home</a></li>
            <li><a href="EcommerceLogin.jsp">Logout</a></li>
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
