<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
                    <%@ page import="java.io.*"%>
                    <%@ page import="java.util.*" %>
                    <%@ page import="java.util.Date" %>
                    <%@ page import="com.oreilly.servlet.*"%>
                    <%@ page import ="java.text.SimpleDateFormat" %>
                    <%@ page import ="javax.crypto.Cipher" %>
                    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
                    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
                    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Adding Products Status..</title>
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
          <h2><span>Adding </span> Products Status.. </h2>
          <p class="infopost" align="right"><%=new java.util.Date()%> </p>
          <div class="clr"></div>
          
          <div class="rf">
		  
		  
                    <%
			       
   				    String site= (String)application.getAttribute("esite");
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String categoryname=null,name=null,price=null,desc=null,pmfg=null,image=null,bin = "",uses=null, paramname=null;
					
					FileInputStream fs=null;
					
					File file1 = null;	
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("categoryname"))
							{
								categoryname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("name"))
							{
								name=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("price"))
							{
								price=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pmfg"))
							{
								pmfg=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("uses"))
							{
								uses=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("desc"))
							{
								desc=multi.getParameter(paramname);
							}
							
							
							}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								
							}		
						}
						
					if(categoryname.equals("--Select--"))
					{
					%>
                    </p>
					    <p class="style1" style="color:#660000">&nbsp;</p>
					    <p class="style1" style="color:#660000">Please Select  Categoryname..</p>
					    <p class="style41"><a href="E_AddProduct.jsp" class="style7 style46"><strong>Back</strong></a></p>
                  <p class="style41">
                      <%
					}	
		
		            else
					{
						FileInputStream fs1 = null;
			 			String query1="select * from products  where p_name='"+name+"' and categoryname='"+categoryname+"'"; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
                  <p class=" style1" style="color:#660000">&nbsp;</p>
                  <p class=" style1" style="color:#660000">Product Name Already Exist..</p>
                  <p class="style41"><a href="E_AddProduct.jsp" class="style7 style46"><strong>Back</strong></a></p>
                    <span class="style41">
                    <%
				
					   }
					   else
					   {
					   
					   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		   	           SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			           Date now = new Date();

			           String strDate = sdfDate.format(now);
			           String strTime = sdfTime.format(now);
			           String date = strDate + "   " + strTime;
						
					   String encrypteddDesc= new String(Base64.encode(desc.getBytes()));
					    int rank =0;
						

						 
					PreparedStatement ps=connection.prepareStatement("insert into products(p_name,categoryname,p_price,p_mfg,p_uses,p_des,p_image,date,rank,site) values(?,?,?,?,?,?,?,?,?,?)");
						
						ps.setString(1,name);
						ps.setString(2,categoryname);
						ps.setString(3,price);	
						ps.setString(4,pmfg);
						ps.setString(5,uses);	
				        ps.setString(6,encrypteddDesc);	
						ps.setBinaryStream(7,(InputStream)fs, (int)(file1.length()));
						ps.setString(8,date);
						ps.setInt(9,rank);
						ps.setString(10,site);
						
						ps.executeUpdate();
					   
						%>
                    </span>
					 <p class="style1" style="color:#660000">&nbsp;</p>
					 <p class="style1" style="color:#660000">Product Uploaded Successfully..</p>
					 <span class="style41">
                    </p>
                    </span>
<p class="style41">&nbsp; </p>
                    <p class="style41"><a href="E_AddProduct.jsp" class="style7 style46"><strong>Back</strong></a><a href="A_AddPosts.jsp" class="style7 style42"></a></p>
                    <span class="style41">
                    <%
			
					
					
					
					
						}}
					}
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
