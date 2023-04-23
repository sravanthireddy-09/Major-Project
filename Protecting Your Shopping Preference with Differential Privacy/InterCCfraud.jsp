<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
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
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
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
          <h2><span>Differential Privacy Detection</span> Detection </h2>
          <p class="infopost" align="right"><%=new java.util.Date()%> </p>
          <div class="clr"></div>
          
          <div class="rf">
            <p align="center" class="style5">Transaction declined due to fraud activity </p>
            <table width="592" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="37"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">ID</div></td>
                      <td  width="109" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Fraud Name</div></td>
                      <td  width="116" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Details</div></td>
                      <td  width="100" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Amount</div></td>
					  <td  width="100" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Ecommerce Website</div></td>
					  
                      <td  width="81"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Date</div></td>
                    </tr>
                    
                    <%
					  
					  	String site = (String)application.getAttribute("esite");
						String s1,s2,s3,s4,s5,s6,s7,ss3;
						int i=0;
						try 
						{
						   	String query="select * from ifraud "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								ss3=rs.getString(5);
								s4=rs.getString(6);		
						
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
                            <span class="style3">
                            <%out.println(ss3);%>
                            </span></div></td>
       				  <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style3">
                            <%out.println(s4);%>
                            </span></div></td>
              </tr>
                    <%
						}
						
					
				
					
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
            </table>
			
			
			
			
				  <p class="style19">&nbsp;</p>
		          <p>&nbsp;</p>
		          <p>&nbsp;</p>
		          
		          <p align="left">&nbsp;</p>
		          <p align="left"><a href="EcommerceMain.jsp" class="style16">Back</a></p>
		          <p align="center">&nbsp;</p>
		          <p align="center" class="style5">Entered Wrong Credit Card Credentials</p>
          </div>
		  
		  
		  
		    <table width="592" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="37"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">ID</div></td>
                      <td  width="109" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Fraud Name</div></td>
                      <td  width="116" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Details</div></td>
                      <td  width="100" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Amount</div></td>
					     <td  width="100" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Ecommerce Website</div></td>
                      <td  width="81"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2">Date</div></td>
                    </tr>
                    
                    <%
					  
					  
						String s11,s22,s33,s44,s55,s66,s77,ss33;
						int i1=0;
						try 
						{
						   	String query1="select * from fraud "; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		while ( rs1.next() )
					   		{
								i1=rs1.getInt(1);
								s11=rs1.getString(2);
								s22=rs1.getString(4);
								s33=rs1.getString(5);
								ss33=rs1.getString(6);
								s44=rs1.getString(7);
							
								
							
						
					%>
                    <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3"><span class="style3">
                        <%out.println(i1);%>
                      </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style3">
                            <%out.println(s11);%>
                            </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style4">
                            <%out.println(s22);%>
                            </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style3">
                            <%out.println(s33);%>
                            </span></div></td>
							
							<td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style3">
                            <%out.println(ss33);%>
                            </span></div></td>
							
       				  <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style3">
                            <%out.println(s44);%>
                            </span></div></td>
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
