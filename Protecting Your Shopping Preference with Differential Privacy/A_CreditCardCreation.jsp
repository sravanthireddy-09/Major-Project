<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Credit Card Creation</title>
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
.style9 {font-weight: bold}
.style16 {font-weight: bold}
.style19 {font-weight: bold}
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
          <h2><span>User Credit Card</span> Account Creation.. </h2>
          <p class="infopost" align="right"> </p>
          <div class="clr"></div>
          
          <div class="rf">
          
		  
            <form action="A_CreditCardAuthentication.jsp" method="post" id="" enctype="multipart/form-data">
  <label for="name"><span class="style43 style2"><br />
Credit Card Username </span></label>
  <p class="style2 style43"><strong>
    <input id="cardno" name="uname" class="text" />
  </strong></p>
  <label for="name"><span class="style43 style2">Credit Card Number(required)</span></label>
  <p class="style2 style43"><strong>
    <input id="name" name="cardno" class="text" />
  </strong></p>
  <span class="style2 style43"><strong>
  <label for="bank">Bank (required)</label>
  </strong></span>
  <p class="style2 style43"><strong>
    <input type="text" id="bank" name="bank" class="text" />
  </strong></p>
  <span class="style2 style43"><strong>
  <label for="email">Email Address</label>
  </strong></span>
  <p class="style2 style43"><strong>
    <input id="email" name="email"  />
  </strong></p>
  <span class="style2 style43"><strong>
  <label for="mobile">Mobile Number</label>
  </strong></span>
  <p class="style2 style43"><strong>
    <input id="mobile" name="mobile"  />
  </strong></p>
  <span class="style2 style43"><strong>
  <label for="address">Address</label>
  </strong></span>
  <p class="style2 style43"><strong>
     <textarea name="address" id="address"></textarea>
  </strong></p>
  <p><strong>
    <span class="style2 style42"><strong>
    <label for="amount">Allowed Amount (required)</label>
    </strong></span> </strong></p>
  <p class="style9">
    <input id="amount" name="amount" class="text" />
  </p>
  <p align="left" class="style9"><br />
      <input name="submit" type="submit" value="Create Account" />
  </p>
  </form>
  
					
					<p class="style19">&nbsp;</p>
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
