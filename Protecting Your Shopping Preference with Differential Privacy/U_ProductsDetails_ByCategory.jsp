<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Products Details By Category</title>
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
.style2 {color: #FFFFFF}
.style3 {color:#FF3300}
.style4 {color:#000000}
.style5 {font-weight: bold}
.style6 {color: #000000; font-weight: bold; }
.style8 {color: #003300}
.style9 {color: #FFFF33}
.style10 {color: #FF0000}
.style11 {font-weight: bold}
.style12 {color: #FFFF00}
.style14 {color: #FFFF00; font-weight: bold; }
.style15 {font-weight: bold}
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
          <h2 class="title"><a href="#"><span class="style2">Products Details_By Category </span><span class="style9">  </span><span class="style2">Details..</span></a></h2>
          <p class="infopost" align="right"><%=new java.util.Date()%> </p>
          <div class="clr"></div>
          
          <div class="rf">
		          <p>&nbsp;            </p>
				  
				   <form action="U_ProductsDetails_ByCategory.jsp" method="post" id="leavereply">
		          <table width="513" border="2">
                    <tr>
                      <td width="181" height="39" bgcolor="#FF0000"><span class="style14">Select Category </span></td>
                      <td width="314" bgcolor="#FF0000"><select name="p_Category">
                        <option>---Select---</option>
                        <option>Electronics</option>
                        <option>Home Appliances</option>
                        <option>Kitchen</option>
                      </select>
                      </td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                      <td><input type="submit" name="Submit2" value="View Products" /></td>
                    </tr>
                  </table>
				  </form>
		          <p>&nbsp;</p>
          <p>
		            <%
					
					try
					{
					
					String p_Category=request.getParameter("p_Category");
					
					String uname = (String)application.getAttribute("uname");
					
					
					String str1="select * from products where categoryname='"+p_Category+"' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(str1);
					while ( rs1.next() )
					{
						int i=rs1.getInt(1);
				
						String pname = rs1.getString(2);
						String uses = rs1.getString(6);
						String description = rs1.getString(7);
						String price = rs1.getString(4);
						String date = rs1.getString(9);	
						String es = rs1.getString(11);	
						String decryptedDes= new String(Base64.decode(description.getBytes()));
							
							
						
			%>
                              </p>
		          <table width="598" border="1" align="left" cellpadding="0" cellspacing="0" >
                    <tr >
                      <td width="186" rowspan="6" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                          <div align="center"><a class="#" id="img1" href="#" >
                            <input  name="image" type="image" src="images1.jsp?imgid=<%=i%>" style="width:160px; height:250px;" />
                          </a> </div>
                      </div></td>
                      <td height="39" bgcolor="#FF0000" ><div align="center" class="style73 style2"><strong>Category </strong></div></td>
                      <td width="307"><div align="center" class="style3"><strong><%= p_Category%></strong></div></td>
                    </tr>
					 <tr >
                      <td height="37" bgcolor="#000000" ><div align="center" class="style6 style12"> Product Name</div></td>
                      <td><div align="center" class="style3"><strong><%= pname%></strong></div></td>
                    </tr>
                    <tr >
                      <td height="37" bgcolor="#000000" ><div align="center" class="style6 style12"> Price </div></td>
                      <td><div align="center" class="style3"><strong><%= price%> Rs/-</strong></div></td>
                    </tr>
                    <tr >
                      <td height="47" bgcolor="#000000" ><div align="center" class="style6 style12">Uses</div></td>
                      <td><div align="center" class="style3"></div>
                          <div align="center"><span class="style3">
                            <textarea name="textarea" cols="40" rows="5"><%= uses%></textarea>
                        </span></div></td>
                    </tr>
                    <tr >
                      <td height="47" bgcolor="#000000" ><div align="center" class="style6 style12"> Description </div></td>
                      <td><div align="center" class="style3"></div>
                      
                        
                              <div align="center"><span class="style3">
                              <textarea name="textarea" cols="40" rows="8"><%= decryptedDes%></textarea>
                      </span></div></td>
                    </tr>
                    <tr >
                      <td height="46" bgcolor="#FF0000" ><div align="center" class="style6 style12">Date</div></td>
                      <td><div align="center" class="style3"><strong><%= date%></strong></div></td>
                    </tr>
					<tr >
                      <td height="46" bgcolor="#FF0000" ><div align="center" class="style6 style12">Merchant</div></td>
                      <td><div align="center" class="style3"><strong><%= es%></strong></div></td>
                    </tr>
					
					
                    <tr >
                      <td width="186" height="56" ></td>
                      <td><br/>
					  <form method="post" action="AddToCart.jsp"><label>
                 
                    <div align="center">
					    <input type="hidden" value="<%=pname%>" name="p_Name"/>
					    <input type="hidden" value="<%=p_Category%>" name="p_Category"/>
						<input type="hidden" value="<%=price%>" name="pr"/>
						<input type="hidden" value="<%=es%>" name="site"/>
				       <input type="submit" name="Submit3" value="Add To Cart" />
                    </div>
                 </label></form><br/></td>
                    </tr>
					 <%
						int a=0;
						String str2="select * from reviews where p_name='"+pname+"'  and category='"+p_Category+"'"; 
						Statement st2=connection.createStatement();
						ResultSet rs2=st2.executeQuery(str2);
						while ( rs2.next() )
						{
							String c_user = rs2.getString(4);
							String c_comment = rs2.getString(5);
							String c_date = rs2.getString(6);
							
							
								if(a==0){
					%>
					 <tr>
                       <td height="24" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77 style10" style="margin-left:20px;">
                           <div align="center"><strong>Reviewed By</strong></div>
                       </div></td>
					   <td height="24" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;" columnspan="2"><div align="left " class="style15 style11 style71 style77 style10" style="margin-left:20px;">
                           <div align="center"><strong>Date</strong></div>
					     </div></td>
					   <td height="24" align="center" valign="middle" bgcolor="#FFFF00" style="color: #2c83b0;" columnspan="2"><div align="left " class="style15 style11 style71 style77 style10" style="margin-left:20px;">
                           <div align="center"><strong>Review Details</strong></div>
					     </div></td>
				    </tr>
					   <%a=1;}%>
					   <tr>
                         <td height="49"><div align="center" class="style3" style="color:#FF0099"><strong><%= c_user%></strong></div></td>
					     <td><div align="center" class="style3" style="color:#FF0099"><strong><%= c_date%></strong></div></td>
					     <td><div align="center" class="style3" style="color:#FF0099"><strong><%= c_comment%></strong></div></td>
			        </tr>
					<%}%>
            </table>
			   
			      <p>&nbsp;</p>
			      <p>
			       <%
		}
		connection.close();
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
%>
	             </p>
				   <div align="left">
				     <p><a href="UserMain.jsp" class="style11"></a></p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p>&nbsp;</p>
				     <p align="center"><a href="SearchProducts.jsp" class="style11"><strong>Back</strong></a></p>
				   </div>
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