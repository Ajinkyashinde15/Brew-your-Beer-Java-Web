
<%@page import="me.java.app.User"%>
<!DOCTYPE HTML>
<html>
<head>

<title>Brew your Beer</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all">
</head>
 <body>
	    <div class="header_top">
		 	  <div class="wrap">	 			
				<div class="logo">
					<a href="index.html"><img src="images/logo1.png" alt=""></a>
				</div>	
				<div class="nav">			
				  <ul><li><a href="Profile">Home</a></li> 
			    	<li><a href="CraftBeer.jsp">Craft Beer</a></li>  
			    	<li><a href="myorder.jsp">My Orders</a></li>
					<li><a href="cp.jsp">Change Password</a></li>
					
		         <li><a  href="logout" target="_blank">Logout</a></li>
			    	<div class="clear"></div>
			       </ul>	
			    </div>	 
 				<div class="clear"></div>		   
 	   		</div>
 	     </div>
	       <div class="wrap">
	        <div class="main">	
                     <div class="contact">     
	                                    
	        		<div class="section group" >
                                    <div class="col_1_of_3 contact_1_of_3"></div>
				
<div class="col_1_of_3 contact_1_of_3">
					<div class="contact-form">
				  	<h3>Change Password</h3>
                                        <%
                                        User u=(User)request.getAttribute("p");
                                        
                                        
                                        %>
                                        <form method="post" action="updateP">
					    	<div>
							 
						    
							<div>
						    	<span><input type="text" name="un" readonly class="textbox" value="vinayak" ></span>
							 
						    </div>
                                                        
                                                        
							<div>
						    	<span><input type="password" name="npass" readonly class="textbox" value="" ></span>
							 
						    </div>
                                                        
                                                        
							<div>
						    	<span><input type="password" name="rpass" readonly class="textbox" value="" ></span>
							 
						    </div>
							 
							 
						 
						    
						   <div>
						   		<span><input type="submit" value="Update"></span>
						  </div>
					    </form>
				  </div>
				</div>
				 
	       </div>       
	      </div>
	      <div class="copy_right">
	        	<div class="wrap">
				  <p>Brew Your Beer ? All rights Reserved| Design by Neil Gallagher </a></p>
		       </div>
		   </div>
      </body>
 </html>

