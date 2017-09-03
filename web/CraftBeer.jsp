<%-- 
    Document   : CraftBeer
    Created on : May 7, 2017, 12:07:49 PM
    Author     : 
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="me.java.app.CraftBeer"%>
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
                    <div class="col_1_of_12 contact_1_of_12">
                        <center>
                            <%
                                ArrayList<CraftBeer> al = (ArrayList) request.getAttribute("cb");
                                int srno = 1;
                                for (CraftBeer cb : al) {
                                    if (srno == 1) {
                            %>
                            <table ><th>Sr No.</th><th>Mash</th><th>Flavours</th><th>Extras</th><th>Bottle Text</th> <th>Bottle Type </th> <th> Logo</th> <th>Place Order</th> <th>Action</th></tr>
                                        <%
                                            }
                                        %>

                            <tr><td ><%=srno%></td><td><%=cb.getMash()%></td><td><%=cb.getFlavours()%></td><td><%=cb.getExtra()%></td><td><%=cb.getBname()%></td> <td><%=cb.getBtype() %></td> <td><img height="100" width="100" src="images/<%=cb.getBlogo()%>.jpg"></td> <td><a class="text" href="AddToCart?id=<%=cb.getId() %>">Add To Cart</a></td>
                                
                                <td>
                                    <%
                                    if(session.getAttribute("un").toString().equals(""+cb.getUn())){
                                    %>
                                    <a href="DCraftBeer?cbid=<%=cb.getId() %>" class="text">Delete</a>
                                <%}%>
                                </td></tr>   
                                        <%
                                                srno++;
                                            }
                                        %>


                            </table></center>
                    </div>            
                    <div class="section group" >


                        <div class="col_1_of_3 contact_1_of_3"> </div>
                        <div class="col_1_of_3 contact_1_of_3">
                            <div class="contact-form">
                                <h3>Craft Beer</h3>

                                <form method="post" action="ACraftBeer"> 
                                    <div class="company_address">
                                        <span><p>Mash: </p><select name="mash" class="select">
                                                <option>Wheat</option><option>Corn</option><option> Sorghum</option><option> Rye</option><option> Malted Barley </option></select></span>

                                    </div>
                                    <div class="company_address">

                                        <span><p>Flavours: </p><select name="flavours" class="select"><option>English-Style Bitter</option> 
                                                <option>Pale Ales</option><option>American Amber Ale</option><option> American Amber Lager</option><option> Blonde Ale</option><option>  English-Style Pale Ale</option></select></span>

                                    </div>
                                    <div class="company_address">

                                        <span><p>Extras: </p><select name="extra" class="select">

                                                <option>Corn Syrup</option><option>Fish Bladder</option><option> Propylene Glycol</option><option> GMO Sugar</option><option>Hops </option><option>Yeast</option></select></span>

                                    </div>

                                    <div class="company_address">

                                        <span><p>Bottle Type: </p><select name="btype" class="select">

                                                <option>Clear Glass</option><option>Red</option><option> Black</option><option> Green</option></select></span>

                                    </div>
                                    
                                    <div class="company_address">

                                        <span><p>Bottle Design N Logo: </p>
                                            <div class="contact_1_of_12 table th">
                                                <table ><tr><th ><input required type="radio" name="blogo" value="11"><img src="images/11.jpg"></th>
                                                        <th><input type="radio" required name="blogo" value="22"><img src="images/22.jpg"></th></tr>
                                                    <tr><th><input required type="radio" name="blogo" value="33"><img src="images/33.jpg"></th> 
                                                        <th><input required type="radio" name="blogo" value="44"><img src="images/44.jpg"></th></tr>
                                                    <tr><th ><input required type="radio" name="blogo" value="55"><img src="images/55.jpg"></th>
                                                        <th><input required type="radio" name="blogo" value="66"><img src="images/66.jpg"></th></tr>
                                                </table></div>
                                        </span>

                                    </div>

                                    <div class="company_address">
                                        <span><p>Bottle Text: </p><input required type="text" name="bname" class="textbox" value="" ></span>

                                    </div>



                                    <div>
                                        <span><input type="submit" value="Craft Beer"></span>
                                    </div> 
                                </form>
                            </div>
                        </div>
                        <div class="col_1_of_3 contact_1_of_3"> </div>

                    </div>

                </div>       
            </div>
            <div class="copy_right">
                <div class="wrap">
                    <p>Brew Your Beer � All rights Reserved| Design by Neil Gallagher </a></p>
                </div>
            </div>
    </body>
</html>

