<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Ecommerce User Register Page</title>
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
	color: #FF0000;
	font-weight: bold;
}
.style11 {font-weight: bold}
.style14 {font-weight: bold}
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
          <h2><span>Welcome To Merchant</span> User Registration </h2>
          <p class="infopost" align="right"><%=new java.util.Date()%> </p>
          <div class="clr"></div>
          
          <div class="rf">
          <form action="EcommerceRegisterAuthentication.jsp" method="post" >
                    <label for="name"><span class="style33 style2">
					
					<br />
					<img src="images/Register.png" width="186" height="114" /><br />
					<br />
					User Name (required)</span></label>
                    <p class="style2 style33"><strong>
                    <input id="name" name="userid" class="text" />
                    </strong></p>
			        <span class="style2 style33"><strong>
			        <label for="password">Password (required)</label>
                    </strong></span>
			        <p class="style2 style33"><strong>
                    <input type="password" id="password" name="pass" class="text" />
                    </strong></p>
			        <span class="style2 style33"><strong>
			        <label for="email">Email Address (required)</label>
                    </strong></span>
			        <p class="style2 style33"><strong>
                    <input id="email" name="email" class="text" />
                    </strong></p>
			        <span class="style2 style33"><strong>
			        <label for="mobile">Mobile Number (required)</label>
                    </strong></span>
			        <p class="style2 style33"><strong>
                    <input id="mobile" name="mobile" class="text" />
                    </strong></p>
			        <span class="style2 style33"><strong>
			        <label for="address">Your Address</label>
                    </strong></span>
			        <p class="style2 style33"><strong>
                    <textarea id="address" name="address" rows="3" cols="50"></textarea>
                    </strong></p>
			        <span class="style2 style33"><strong>
			        <label for="dob">Date of Birth (required)<br />
                    </label>
                    </strong></span>
			        <p class="style2 style33"><strong>
                    <input id="dob" name="dob" class="text" />
                    </strong></p>
			        <span class="style2 style33"><strong>
			        <label for="gender">Select Gender (required)</label>
                    </strong></span>
			        <p class="style2 style33"><strong>
                    <select id="s1" name="gender" style="width:480px;" class="text">
                      <option>--Select--</option>
                      <option>MALE</option>
                      <option>FEMALE</option>
                    </select>
                    </strong></p>
					<span class="style2 style33"><strong>
			        <label for="gender">Select MerchantSite (required)</label>
                    </strong></span>
					 <p class="style33">
                      <select id="s2" name="Esite" style="width:480px;" class="text">
                        <option>--Select--</option>
                        <option>Flipkart</option>
                        <option>Amazon</option>
						<option>ebay</option>
						<option>Snapdeal</option>
                      </select>
                    </p>
			       <br />
                      <input name="submit" type="submit" value="REGISTER" />
                    </p>
                    <p>&nbsp;</p>
			        <p align="left" class="style14"><a href="EcommerceLogin.jsp" class="style11">Back</a></p>
            </form>
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
          <h2 class="star"><span>Home</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="AdminLogin.jsp">Admin</a></li>
            <li><a href="EcommerceLogin.jsp">Merchant</a></li>
            <li><a href="UserLogin.jsp">User</a></li>
            
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
