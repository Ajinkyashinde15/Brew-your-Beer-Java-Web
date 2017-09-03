
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@page import="me.java.app.DBConnection"%>
<%@page import="java.sql.ResultSet"%>
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
                <div class="blog">
                    <h2>My Orders</h2>
                    <%
                    //call all orders 
                        ResultSet rs=DBConnection.getCon().createStatement().executeQuery("SELECT * FROM purchaseproduct p ,myorder m, craftbeer c where c.cbid=p.cbid and p.orderid=m.orderid and m.un='"+session.getAttribute("un").toString()+"'");
                    while(rs.next())
                    {
                        String oid=rs.getString("orderid");
                        
                        %>
                     <div class="grid blog-desc">
                                <h4>
                                    Order :-----</h4></div>
                    <div class="blog-leftgrids">
                        <div class="image group">
                            <div class="grid images_3_of_1" style="vertical-align: middle; ">
                                <a href="#"><img  src="images/<%=rs.getString("blogo") %>.jpg" alt="" /></a>
                            </div>
                            <div class="grid blog-desc">
                                <h4><span><%=rs.getString("bname")%></span></h4>
                                <h4>Quantity: <%=rs.getString("quantity")%></h4>
                                <h4>Price: <%=rs.getString("price")%></h4>
                                <h4>Date of Order:<%=rs.getString("opdate")%></h4>

                                <h4>Description</h4>
                                <p>	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Mashing : <%=rs.getString("mash")%>

                                </p>
                                <p>	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Flavours :
                                    <%=rs.getString("flavours")%></p>


                                <p>	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Extras   &nbsp;&nbsp;&nbsp;    : 
                                    <%=rs.getString("Extra")%> </p>
                                <%
                                DateFormat df = new SimpleDateFormat("yyyy/MM/dd");
                                Date one=df.parse(rs.getString("opdate"));
                                
                                String t=df.format(new Date());
                                Date two=df.parse(t); 
                                 long days=   (two.getTime()-one.getTime())/86400000;
                                 String status="Order Placed";
                                 if(days==1)
                                 {
                                     status="Order In Shipping";
                                 }
                                 else if(days>1)
                                      status="Order Delivered";
                                %>
                                
                                <a href="#" class="button"><%=status%></a>
                            </div>
                        </div>		  						 
                    </div>
                    
                    <%
                    }
                    %>
                  
                </div>
            </div>
            <div class="copy_right">
                <div class="wrap">
                    <p>Brew Your Beer � All rights Reserved| Design by Neil Gallagher </a></p>
                </div>
            </div>
    </body>
</html>

