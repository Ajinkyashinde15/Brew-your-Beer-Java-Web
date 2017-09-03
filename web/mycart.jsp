<%-- 
    Document   : mycart
    Created on : May 7, 2017, 4:34:17 PM
    
--%>

<%@page import="me.java.app.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="me.java.app.CraftBeer"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
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
                    <form method="post" action="GoToPayment">
                     <div class="contact">    
	                        <div class="col_1_of_12 contact_1_of_12">
							 <div class="contact-form">
				  	<h3>My Cart </h3></div>
                                    <%
                                    
                        if(al1.isEmpty()){
                            System.out.println(al1.size());
                            out.println("<h3>- - - - - - - - Cart is Empty - - - - - - - - </h3>");
                        }
                        else{
                            %>
                                              <center>
                            <%
                                //fetch each element from db
                            ResultSet rs;
                            
                                 int srno = 1;
                                for (String cbid : al1) {
                                    if (srno == 1) {
                            %>
                            <table ><th>Sr No.</th><th>Mash</th><th>Flavours</th><th>Extras</th><th>Bottle Text</th> <th>Bottle Type</th> <th>Design N Logo</th> <th>Quantity</th> <th>Price/Unit</th><th>Action</th></tr>
                                        <%
                                            }
                                    rs=DBConnection.getCon().createStatement().executeQuery("select * from craftbeer where cbid="+cbid);
                                    if(rs.next()){
                                        %>

                            <tr><td ><%=srno%></td><td><%=rs.getString("mash") %></td>
                                <td><%=rs.getString("flavours")%></td><td><%=rs.getString("extra")%></td><td><%=rs.getString("bname")%></td><td><%=rs.getString("btype")%></td> <td><img height="100" width="100" src="images/<%=rs.getString("blogo")%>.jpg"></td>  <td><input type="text" name="cartno"></td><td>10Euro</td><td><a href="rFromCart?id=<%=rs.getString("cbid") %>">Remove</a></td></tr>   
                                        <%
                                    }  srno++;
                                            }
                                        %>


                            </table></center>                  
                                  
                                     
				   <div class="contact-form">
				     <div>
                                        <span><input type="submit" value="Make Payment"></span>
                                    </div> 
						  <%
                        }
                                    
                                    %>			</div>
				   </div>            
	        		       
	      </div>
                    </form></div></div>
	      <div class="copy_right">
	        	<div class="wrap">
			<p>Brew Your Beer � All rights Reserved| Design by Neil Gallagher </a></p>
		       </div>
		   </div>
      </body>
 </html>


