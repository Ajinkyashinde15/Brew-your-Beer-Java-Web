
<%@page import="java.util.ArrayList"%>
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
					<a href="Profile"><img src="images/logo1.png" alt=""></a>
				</div>	
				<div class="nav">			
				 <ul><li><a href="Profile">Home</a></li> 
                        <li><a href="AllCraftBeer">Craft Beer</a></li>  
                        <li><a href="myorders.jsp">My Orders</a></li>
                        <%
                        ArrayList<String> al1=(ArrayList<String>)session.getAttribute("cart");
                        
                        if(!al1.isEmpty()){
                            System.out.println(al1.size());
                        
                        %>
                        <li><a href="mycart.jsp">My Cart(<%=al1.size() %>)</a></li>
                        <%
                        }else{
                        %>
                        <li><a href="mycart.jsp">My Cart</a></li>
                        <%}%>
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
				  	<h3>My Profile</h3>
                                        <%
                                        User u=(User)request.getAttribute("p");
                                        
                                        
                                        %>
                                        <form method="post" action="updateP">
					    	<div>
							<div>
                                                            <span><input type="text" name="name" class="textbox" value="<%= u.getName() %>" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Name';}"></span>
						    </div>
						     
						    <div>
						    	<span><textarea name="address" value="" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Message';}"><%= u.getAddress()%></textarea></span>
						    </div>
							
							<div>
						    	<span><input type="text" name="email" class="textbox" value="<%= u.getEmail()%>" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Email';}"></span>
						    </div>
						     
						  	<div>
                                                            <span><input type="text" name="phone" class="textbox" value="<%= u.getPhone()%>" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Phone';}"></span>
						    </div >
								<div style="background-color:#FFFFFF">Gender
                                                                    <%
                                                                    if(u.getGender().equals("Male")){
                                                                    %>
						    	<span>Male<input type="radio" checked class="textbox" name="gender" value="Male" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Male';}"></span>
                                                        <span>Female<input  type="radio" name="gender" class="textbox" value="Female" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Female';}"></span>
                                                        <%}else{%>
                                                        <span>Male<input type="radio"  class="textbox" name="gender" value="Male" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Male';}"></span>
									<span>Female<input checked type="radio" name="gender" class="textbox" value="Female" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Female';}"></span>
                                                                        <%}%>
						    </div>
							<br/>
							 <div style="background-color:#FFFFFF">Date of Birth 
						    	<span><input type="date" name="dob"  class="textbox" value="<%= u.getDob() %>" onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'date';}"></span>
							 </div>
							
							<div>
						    	<span><input type="text" name="un" readonly class="textbox" value="<%= u.getUn()%>" ></span>
							 
						    </div>
							 
							 
						 
						    
						   <div>
						   		<span><input type="submit" value="Update"></span>
						  </div>
					    </form>
				  </div>
                                                        <div class="col_1_of_3 contact_1_of_3">
                                                            
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

