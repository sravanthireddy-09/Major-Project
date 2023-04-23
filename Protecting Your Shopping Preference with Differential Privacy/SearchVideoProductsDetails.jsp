<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Video Product Details</title>
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
.style7 {
	color: #330000;
	font-weight: bold;
}
.style8 {color: #003300}
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
          <h2 class="title"><a href="#"><span class="style83 style35 style2">Searched Video Product <%=request.getParameter("p_Name")%> Details.. </span></a></h2>
          <p class="infopost" align="right"><%=new java.util.Date()%> </p>
          <div class="clr"></div>
          
          <div class="rf">
		  <%
					
					try
					{
					String vp_Name=request.getParameter("p_Name");
					String vp_Category=request.getParameter("p_Category");
					String vsite=request.getParameter("vsite");
					
					int rank=Integer.parseInt(request.getParameter("rank"));
					
					int rankup=rank+1;
					
					String uname = (String)application.getAttribute("uname");
					
					String rankUp="update videoproducts set rank="+rankup+" where p_name='"+vp_Name+"' ";
					connection.createStatement().executeUpdate(rankUp);
			
					String str1="select * from videoproducts where p_name='"+vp_Name+"' and category='"+vp_Category+"' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(str1);
					while ( rs1.next() )
					{
						int i=rs1.getInt(1);
				
						String vuses = rs1.getString(6);
						String vdescription = rs1.getString(7);
						String vprice = rs1.getString(4);
						String date = rs1.getString(9);	
						String video= rs1.getString(8);
						String vdecryptedDes= new String(Base64.decode(vdescription.getBytes()));
							
							/*SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							
							Date now = new Date();
							String strDate = sdfDate.format(now);
							
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
									   
							String str2 = "insert into postsearch (user,p_name,categorie,keyword,dt) values('"+uname+"','"+p_Name+"','"+p_Categorie+"','"+keyword+"','"+dt+"')";
							connection.createStatement().executeUpdate(str2);
					*/
						
			%>
			      <table width="598" border="1" align="left" cellpadding="0" cellspacing="0" >
                    <tr >
                      <td width="186" rowspan="6" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                          <div align="center"><a class="#" id="img1" href="#" >
                            <video controls preload="auto" src="./<%=video%>" width="250" height="150"></video>
                          </a> </div>
                      </div></td>
                      <td height="39" ><div align="center" class="style3 style73"><span class="style6">Category </span></div></td>
                      <td width="307"><div align="center" class="style3"><strong><%= vp_Category%></strong></div></td>
                    </tr>
                    <tr >
                      <td height="37" ><div align="center" class="style6"> Price </div></td>
                      <td><div align="center" class="style3"><strong><%= vprice%> Rs/-</strong></div></td>
                    </tr>
                    <tr >
                      <td height="47" ><div align="center" class="style6">Uses</div></td>
                      <td><div align="center" class="style3"></div>
                          <div align="center"><span class="style3">
                            <textarea name="textarea" cols="40" rows="5"><%= vuses%></textarea>
                        </span></div></td>
                    </tr>
                    <tr >
                      <td height="47" ><div align="center" class="style6"> Description </div></td>
                      <td><div align="center" class="style3"></div>
                      
                        
                              <div align="center"><span class="style3">
                              <textarea name="textarea" cols="40" rows="8"><%= vdecryptedDes%></textarea>
                      </span></div></td>
                    </tr>
                    <tr >
                      <td height="46" ><div align="center" class="style6">Date</div></td>
                      <td><div align="center" class="style3"><strong><%= date%></strong></div></td>
                    </tr>
                    <tr >
                      <td width="97" height="56" ></td>
                      <td><br/>
					  <form method="post" action="AddToCart1.jsp"><label>
                 
                    <div align="center">
					    <input type="hidden" value="<%=vp_Name%>" name="p_Name"/>
					    <input type="hidden" value="<%=vp_Category%>" name="p_Category"/>
						<input type="hidden" value="<%=vprice%>" name="vpr"/>
						<input type="hidden" value="<%=vsite%>" name="vsite"/>
				       <input type="submit" name="Submit3" value="Add To Cart" />
                    </div>
                 </label></form><br/></td>
                    </tr>
					 <%
						int a=0;
						String str2="select * from reviews where p_name='"+vp_Name+"'  and category='"+vp_Category+"'"; 
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
                       <td valign="middle" height="24" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                           <div align="center" class="style7">Reviewed By</div>
                       </div></td>
					   <td columnspan="2" valign="middle" height="24" style="color: #2c83b0;"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                           <div align="center" class="style7">Date</div>
					     </div></td>
					   <td height="24" align="center" valign="middle" style="color: #2c83b0;" columnspan="2"><div align="left " class="style15 style11 style71 style77" style="margin-left:20px;">
                           <div align="center" class="style7">Review Details</div>
					     </div></td>
				    </tr>
					   <%a=1;}%>
					   <tr>
                         <td height="49"><div align="center" class="style3" style="color:#FF0099"><strong><%= c_user%></strong></div></td>
					     <td><div align="center" class="style3" style="color:#FF0099"><strong><%= c_date%></strong></div></td>
					     <td><div align="center" class="style3" style="color:#FF0099"><strong><%= c_comment%></strong></div></td>
			        </tr>
					<%}%>
					 <tr>
                       <td height="57"><div align="left " class="style15 style11" style="margin-left:20px;">
                           <div align="center" class="style87 style6 style8">Post Your Review </div>
                       </div></td>
					   <td colspan="2"><form id="form1" method="post" action="SubmitReview.jsp">
                           <input type="text" name="review" size="40" height="30"/>
                           <input type="hidden" name="p_Name" value="<%=vp_Name%>"/>
                           <input type="hidden" name="p_Category" value="<%=vp_Category%>"/>
                           <input type="submit" name="Submit" value="Post" />
                       </form></td>
				    </tr>
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
				   <div align="center">
				     
				     <p>&nbsp;</p>
				     
				     <p><a href="SearchProducts.jsp" class="style11"><strong>Back</strong></a></p>
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