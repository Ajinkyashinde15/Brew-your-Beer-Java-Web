
<%@page import="me.java.app.CraftBeer"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Brew your Beer</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
<link href="css/slider.css" rel="stylesheet" type="text/css" media="all">
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/slidermodernizr.custom.js"></script>
</head>
 <body>
   <!------ Background slider ------->
 	<div class="slider">
 	      <ul id="cbp-bislideshow" class="cbp-bislideshow">
					<li><img src="images/1.jpg" alt="image01"/></li>
					<li><img src="images/2.jpg" alt="image02"/></li>
					<li><img src="images/3.jpg" alt="image03"/></li>
					<li><img src="images/4.jpg" alt="image04"/></li>
					<li><img src="images/5.jpg" alt="image05"/></li>
					<li><img src="images/6.jpg" alt="image06"/></li>
				</ul>    
	   <script src="js/jquery.imagesloaded.min.js"></script>
		<script src="js/cbpBGSlideshow.min.js"></script>
		<script>
			$(function() {
				cbpBGSlideshow.init();
			});
		</script>
	 </div>
	 <!------ End Background slider ------->
	    <div class="header_top">
		 	  <div class="wrap">	 			
				<div class="logo">
					<a href="index.html"><img src="images/logo1.png" alt=""></a>
				</div>	
				<div class="nav">			
				  <ul>
					<li><a href="index.html">Home</a></li>
			    	<li><a href="about.html">About</a></li>
			<li><a href="CraftBeers">Craft Beer</a></li>  
			    	<li><a href="contact.jsp">Contact</a></li>
					<li><a href="SignIn.jsp" target="_blank">Sign In </a></li>
		         <li><a  href="SignUp.jsp" target="_blank">Sign Up</a></li>
			    	  	<div class="clear"></div>
			       </ul>	
			    </div>	 
 				<div class="clear"></div>		   
 	   		</div>
 	     </div>
	       <div class="wrap">
	        <div class="main">	        	
	        		  <div class="col_1_of_12 contact_1_of_12">
                        <center>
                            <%
                                ArrayList<CraftBeer> al = (ArrayList) request.getAttribute("cball");
                                int srno = 1;
                                for (CraftBeer cb : al) {
                                    if (srno == 1) {
                            %>
                            <table ><th>Sr No.</th><th>Mash</th><th>Flavours</th><th>Extras</th><th>Bottle Text</th> <th>Bottle Type</th> <th>Design N Logo</th> </tr>
                                        <%
                                            }
                                        %>

                            <tr><td ><%=srno%></td><td><%=cb.getMash()%></td><td><%=cb.getFlavours()%></td><td><%=cb.getExtra()%></td><td><%=cb.getBname()%></td><td><%=cb.getBtype() %></td> <td><img height="100" width="100" src="images/<%=cb.getBlogo()%>.jpg"></td> </tr>   
                                        <%
                                                srno++;
                                            }
                                        %>


                            </table></center>
                    </div>     
	        </div>
	          <div class="copy_right">
	        	<div class="wrap">
				<p>Brew Your Beer ? All rights Reserved| Design by Neil Gallagher </a></p>
		       </div>
		   </div>
      </body>
 </html>

