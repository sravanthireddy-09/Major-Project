<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import ="java.util.*"%>
<%@ include file="connect.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Adding Products..</title>
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
.style2 {color: #FFFF00}
.style3 {color: #FFFF00; font-weight: bold; }
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
          <h2><span>Adding </span> Products.. </h2>
          <p class="infopost" align="right"><%=new java.util.Date()%> </p>
          <div class="clr"></div>
          
          <div class="rf">
<form action="E_AddProduct1.jsp" method="post" enctype="multipart/form-data" id="s" ">
			        
                    <p>
                      <%
	
      	
	

      	try 
	{
      		
      		 ArrayList a1=new ArrayList();
      		
      		 
           
           String query="select categoryname FROM categories"; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
          
	   while ( rs.next() )
	   {
			a1.add(rs.getString("categoryname"));
		
	   }
	   
		
		
%>
                      
                    </p>
                    <p>&nbsp;</p>
                    <table width="433" border="0" align="center">
                      <tr>
                        <td width="149" height="33" bgcolor="#FF0000"><div align="justify" class="style3"><span class="style8 style38 style2">Select  Category </span></div></td>
                        <td width="274"><label>
                          <select id="s1" name="categoryname">
                            <option>--Select--</option>
							
                            <% 
							for(int i=0;i<a1.size();i++)
							{
							 
								 %>
								<option><%= a1.get(i)%></option>
								<%
							}
							%>
                          </select>
                        </label></td>
                      </tr>
                      <tr>
                        <td height="36" bgcolor="#FF0000"><div align="justify" class="style3"><span class="style8 style38 style2"> Product Name </span> </div></td>
                        <td><label>
                          <input type="text" id="t1" name="name" />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="35" bgcolor="#FF0000"><div align="justify" class="style3"><span class="style8 style38 style2">Price </span></div></td>
                        <td><label>
                          <input type="text" id="t3" name="price" />
                        </label></td>
                      </tr>
					  <tr>
                        <td height="35" bgcolor="#FF0000"><div align="justify" class="style3"><span class="style8 style38 style2">Product Manufacture </span></div></td>
                        <td><label>
                          <input type="text" id="t3" name="pmfg" />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="53" bgcolor="#FF0000"><div align="justify" class="style3"><span class="style8 style38 style2">Uses</span></div></td>
                        <td><label>
                          <textarea name="uses" cols="40" rows="2" id="textarea"></textarea>
                        </label></td>
                      </tr>
                      <tr>
                        <td height="51" bgcolor="#FF0000"><div align="justify" class="style3"><span class="style8 style38 style2"> Description </span></div></td>
                        <td><label>
                          <textarea name="desc" cols="40" rows="5" id="t2"></textarea>
                        </label></td>
                      </tr>
                      <tr>
                        <td height="38" bgcolor="#FF0000"><div align="justify" class="style3"><span class="style8 style38 style2"> Select Image </span></div></td>
                        <td><input type="file" id="userImage" name="image" style="width:100%" /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="26">&nbsp;</td>
                        <td>
                          
                          <div align="left">
                            <input type="submit" name="Submit" value="Add Product" />
                          </div></td>
                      </tr>
              </table>
		            <p>
		              <%

	   

           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>
		            </p>
</form>
			      <p>&nbsp;</p>
		
					<div align="center"><a href="EcommerceMain.jsp" class="style11"><strong>Back</strong></a></div>
					
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
