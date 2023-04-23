<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Authorize Ecommerce Users..</title>
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
	color: #333333;
	font-size: 14px;
	}
.style3 {font-size: 14px}
.style4 {color:#990066;
		font-size: 14px}
.style7 {color:#FF3333;
		font-size: 14px}
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
          <h2><span>Authorize Merchants </span>.. </h2>
          <p class="infopost" align="right"><%=new java.util.Date()%> </p>
          <div class="clr"></div>
          
          <div class="rf">
          <table width="650" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="37"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style3">ID</div></td>
                      <td  width="109" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style3">User Name</div></td>
					  <td  width="109" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style3">Merchant Name </div></td>
                      <td  width="116" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style3">Email</div></td>
                      <td  width="100" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style3">Address</div></td>
                      <td  width="81"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style3">Status</div></td>
                    </tr>
                    <%@ include file="connect.jsp" %>
                    <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from euser"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(6);
								s4=rs.getString(10);
								s5=rs.getString(9);
								
								
								
								
							
						
					%>
                    <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style5 style37 style54 style55 style22"><span class="style2">
                        <%out.println(i);%>
                      </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style22">
                            <span class="style4">
                            <strong><%out.println(s1);%></strong>
                            </span></div></td>
					  <td height="0" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style22">
                            <span class="style7">
                            <strong><%out.println(s5);%></strong>
                            </span></div></td>		
                      <td height="0" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style22">
                            <span class="style2">
                            <%out.println(s2);%>
                            </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style5 style20 style37 style54 style55 style22">
                            <span class="style2">
                            <%out.println(s3);%>
                            </span></div></td>
                      <%
						if(s4.equalsIgnoreCase("waiting"))
						{
						
						%>
                      <td valign="middle" height="0" style="color:#000000;"align="center"><div align="center" class="style22 style5 style20 style30 style37">
                          <div align="center" class="style2"><a href="E_UserStatus.jsp?id=<%=i%>" class="style32 style30">waiting</a></div>
                      </div></td>
                      <%
						}
						else
						{
						%>
                      <td width="17" height="0" align="center"  valign="middle"><div align="center" class="style2">
                        <%out.println(s4);%>
                      </div></td>
                      <%
						}
						
						%>
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
				  <p class="style19">&nbsp;</p>
		          <p>&nbsp;</p>
		          <p><a href="AdminMain.jsp" class="style16">Back</a></p>
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
