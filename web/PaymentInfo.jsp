<%-- 
    Document   : PaymentInfo
    Created on : May 7, 2017, 11:16:11 AM
    Author     : 
--%>

<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                                ArrayList<String> al1 = (ArrayList<String>) session.getAttribute("cart");

                                if (!al1.isEmpty()) {
                                    System.out.println(al1.size());

                            %>
                        <li><a href="mycart.jsp">My Cart(<%=al1.size()%>)</a></li>
                            <%
                            } else {
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
                                <h3>Payment Information</h3>

                                <form method="post" action="makePayment">
                                    <div style="background-color:#FFFFFF">Select: &nbsp;

                                        <span>Master<input type="radio" class="textbox" required name="card" value="Master" onFocus="this.value = '';" onBlur="if (this.value == '') {
                                                    this.value = 'Master';
                                                }"></span>
                                        <span>Visa<input  type="radio" name="card" required class="textbox" value="Visa" onFocus="this.value = '';" onBlur="if (this.value == '') {
                                                    this.value = 'Visa';
                                                }"></span>



                                    </div>
                                    <div>
                                        <div class="company_address">
                                            <span><p>Card Number: </p><input type="text" required name="cardno" class="textbox" value="" onFocus="this.value = '';" onBlur="if (this.value == '') {
                                                        this.value = 'Card Number';
                                                    }"></span>
                                        </div>



                                        <div class="company_address">
                                            <span><p>Expiry Date(MM): </p><input type="date" required name="expdate" class="textbox" value="" ></span>
                                        </div>

                                        <div class="company_address">
                                            <span><p>CVV: </p><input type="text" name="cvv" required class="textbox" value=""></span>
                                        </div >



                                        <div class="company_address">
                                            <span><p>Name on Card: </p><input type="text" name="noncard" required  class="textbox" value="" ></span>

                                        </div>

                                        <div class="company_address">
                                            <span><p>Country: </p><input type="text" name="country" required  class="textbox" value="" ></span>

                                        </div>
                                        <div class="company_address">
                                            <span><p>Address 1: </p><textarea name="add1" required  class="textbox" value="" ></textarea></span>

                                        </div>
                                        <div class="company_address">
                                            <span><p>Address 2: </p><textarea name="add2"  required class="textbox"  ></textarea></span>

                                        </div>
                                        <div class="company_address">
                                            <span><p>City: </p><input type="text" name="city" required  class="textbox" value="" ></span>

                                        </div>
                                        <div class="company_address">
                                            <span><p>Postal Code: </p><input type="text" name="pincode" required  class="textbox" value="" ></span>

                                        </div>
                                        <div class="company_address">
                                            <span><p>COntact No: </p><input type="text" name="phone"  required class="textbox" value="" ></span>

                                        </div>



                                        <div>
                                            <span><input type="submit" value="Make Payment"></span>
                                        </div>
                                </form>
                            </div>
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

