<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Bank Main Page..</title>
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
          <li><a href="AdminLogin.jsp"><span>Bank Admin</span></a></li>
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
          <h2><span> Welcome To </span> Bank Main.. </h2>
          <p class="infopost" align="right"><%=new java.util.Date()%></p>
          <p class="infopost" align="right">&nbsp;</p>
          <p class="infopost" align="right"><img src="images/Admin.png" width="624" height="431" /></p>
          <div class="clr"></div>
          
          <div class="rf">
          
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
          <h2 class="star"><span>Bank</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
		   <li><a href="AdminMain.jsp"><strong>Home</strong></a></li>
           <li><a href="A_AuthorizeUsers.jsp"><strong>View Users and Authorize</strong></a></li>
           <li><a href="E_AuthorizeUsers.jsp"><strong>View All Merchants and Authorize</strong></a></li>
		   <li><a href="A_CardDetails.jsp"><strong>View All Card Details</strong></a></li>
		   
		   
		  <li><a href="A_CreditCardCreation.jsp"><strong>Add Credit Card Details</strong></a></li>
		  <li><a href="A_AddMoney.jsp"><strong>Add Money</strong></a></li>
		 
	 	<li><a href="A_ViewProducts.jsp"><strong>View All products </strong> </a></li>
         
	 	<li><a href="A_TraceFraud.jsp"><strong>View All Differential Privacy Detection</strong></a></li>
	 	<li><a href="A_InterCCfraud.jsp"><strong>View Analysis Of Differential Privacy Detection</strong></a></li>
       	 <li><a href="ProductRankChart.jsp"><strong>Show Product Rank Results</strong></a></li>
		 
	 <li><a href="ProductSearchRatioChart.jsp"><strong>Show Product Search Ratio Result</strong></a></li>
           
            <li><a href="AdminLogin.jsp"><strong>Logout</strong></a></li>
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
