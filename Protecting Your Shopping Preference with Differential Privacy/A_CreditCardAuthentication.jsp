<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Account Creation Status..</title>
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
          <h2><span>Credit Card</span> Account Creation Status.. </h2>
          <p class="infopost" align="right"><%=new java.util.Date()%> </p>
          <div class="clr"></div>
          
          <div class="rf">
          <p>
		   <%
			       
					
				    ArrayList list = new ArrayList();
					ServletContext context = getServletContext();

					String dirName =context.getRealPath("Gallery/");
					
										
								
					String paramname=null,bank=null,email=null,addr=null ,cardno=null,mno=null,amount=null,uname=null;
					 //int initialamount=0;
					
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							
							paramname =  (String)params.nextElement();
							
							if(paramname.equalsIgnoreCase("uname"))
							{
								uname=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("cardno"))
							{
								cardno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("bank"))
							{
								bank=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("amount"))
							{
								amount=multi.getParameter(paramname);
							}
							
						
							
						}
									
								String query1="select * from creditcard  where user='"+uname+"' "; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
									
								if ( rs1.next() )
							   {
							   
												   %>
  </p>
  
  <p>&nbsp;</p>
  <p class="style1 style2">You Have an Account Already, Make Use of It.. </p>
  <br/>
  <p> <a href="AdminMain.jsp" class="style16">Back</a></p>
  <%
							   }
							   else{
				
						
									String query2="select * from creditcard  where card_no='"+cardno+"' "; 
									Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(query2);
									
										
								if ( rs2.next() )
								   {
										%>
  
  
  <p>&nbsp;</p>
  <p class="style1 style2"> Account Number Already Exist.. </p>
  <p> </p>
  <p> <a href="AdminMain.jsp" class="style16">Back</a>
      <%
							
								   }
								   else
								   {
								   
								
			PreparedStatement ps=connection.prepareStatement("insert into creditcard(card_no,user,address,email,mobile,bank,amount) values(?,?,?,?,?,?,?)");
									ps.setString(1,cardno);
									ps.setString(2,uname);
									ps.setString(3,addr);
									ps.setString(4,email);	
									ps.setString(5,mno);
									ps.setString(6,bank);
									ps.setString(7,amount);
								
					
									int x=ps.executeUpdate();
									if(x>0)
									{
									%>
  </p>
  <p class="style1 style2">Account Created Successfully.. </p>
  <p>
    <%	
										
						%>
  </p>
  <p align="left"><a href="AdminMain.jsp" class="style16">Back</a></p>
  <%
						
								}}}}
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
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="AdminMain.jsp">Home</a></li>
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
