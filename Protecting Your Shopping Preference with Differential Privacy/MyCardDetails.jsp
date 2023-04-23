<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Card Details..</title>
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
.style3 {color: #FFFFFF}
.style5 {color: #333333}
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
          <h2 class="title">User<a href="#"><span class="style2"><span class="style3" style="color:#FF9900"> <%=(String)application.getAttribute("uname")%>'s </span><span class="style3">Credit Card Details..</span></span></a></h2>
          <p class="infopost" align="right"><%=new java.util.Date()%> </p>
          <div class="clr"></div>
          
          <div class="rf">
          <table width="405" border="1" align="center"  cellpadding="0" cellspacing="0"  >
                    
                    <%
						
						String user=(String )application.getAttribute("uname");
						
						String i,s1,s2,s3,s4,s5;
						int s6=0;;
						 
						try 
						{
						   	String query="select * from creditcard where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getString(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getInt(7);
								
								
					%>
                    <tr>
                      <td  width="176" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style41 style5" style="margin-left:20px;"><strong>Credit Card Number </strong></div></td>
                      <td  width="221" valign="middle" height="40" style="color:#FF0000;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(i);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style41 style5" style="margin-left:20px;"><strong>User Name </strong></div></td>
                      <td  width="221" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s1);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style41 style5" style="margin-left:20px;"><strong>Address</strong></div></td>
                      <td  width="221" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s2);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style41 style5" style="margin-left:20px;"><strong>Email</strong></div></td>
                      <td  width="221" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s3);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style41 style5" style="margin-left:20px;"><strong>Mobile</strong></div></td>
                      <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s4);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style41 style5" style="margin-left:20px;"><strong>Branch</strong></div></td>
                      <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <%out.println(s5);%>
                      </div></td>
                    </tr>
                    <tr>
                      <td   width="176" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style5 style14 style7 style15 style9 style41" style="margin-left:20px;"><strong>Amount</strong></div></td>
                      <td  width="221" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left">
                          <div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                            <%out.println(s6);%>Rs/-
                      </div></td>
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

<p>&nbsp;</p>
		<div align="center" class="style22"><a href="CreditCard.jsp" class="style11">Back</a></div>
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
