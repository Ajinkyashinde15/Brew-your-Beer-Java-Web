<%-- 
    Document   : contact
    Created on : May 5, 2017, 10:28:52 PM
    Author     : Neil Gallagher
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s"  uri="/struts-tags"%>
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
                    <a href="index.html"><img src="images/logo.png" alt=""></a>
                </div>	
                <div class="nav">			
                    <ul><li><a href="index.html">Home</a></li>
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
                <div class="contact">        	
                    <div class="section group">
                        <div class="col_1_of_3 contact_1_of_3">
                            <div class="contact-form">
                                <form method="post" action="sendcontact">
                                    <s:if test="hasActionMessages()"><div class="company_address">
                                            <h6 style="color: white">
                                                <s:actionmessage/></h6>
                                            
                                    </div>
                                    </s:if>

                                    <h3>Get In Touch</h3>
                                    <form>
                                        <div>
                                            <span><input required="" type="text" name="name" class="textbox" value="Name" onFocus="this.value = '';" onBlur="if (this.value == '') {
                                                                this.value = 'Name';
                                                            }"></span>
                                        </div>
                                        <div>
                                            <span><input required="" type="email" name="email" class="textbox" value="Email" onFocus="this.value = '';" onBlur="if (this.value == '') {
                                                                    this.value = 'Email';
                                                                }"></span>
                                        </div>
                                        <div>
                                            <span><textarea required="" value="Message:" name="msg" onFocus="this.value = '';" onBlur="if (this.value == '') {
                                                                    this.value = 'Message';
                                                                }">Message</textarea></span>
                                        </div>
                                        <div>
                                            <span><input type="submit" value="Submit"></span>
                                        </div>
                                    </form>
                            </div>
                        </div>
                        <div class="col_1_of_3 contact_1_of_3">
                            <div class="company_address">
                                <h3>Address</h3>
                                <p>500 Lorem Ipsum Dolor Sit,</p>
                                <p>22-56-2-9 Sit Amet, Lorem,</p>
                                <p>USA</p>
                                <p>Phone:(00) 222 666 444</p>
                                <p>Fax: (000) 000 00 00 0</p>
                                <p>Email: <span>info@mycompany.com</span></p>
                                <p>Follow on: <span>Facebook</span>, <span>Twitter</span></p>
                            </div>
                        </div>
                        <div class="col_1_of_3 contact_1_of_3">
                            <div class="contact_info">
                                <h3>Find Us Here</h3>
                                <div class="map">
                                    <iframe width="100%" height="250" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.in/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=National+College+of+Ireland&amp;aq=4&amp;oq=light&amp;sll=53.3492088,-6.244282&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=National+College+of+Ireland&amp;t=m&amp;z=14&amp;ll=53.3242381,-6.3857877&amp;output=embed"></iframe><br><small><a href="https://maps.google.co.in/maps?f=q&amp;source=embed&amp;hl=en&amp;geocode=&amp;q=National+College+of+Ireland&amp;aq=4&amp;oq=light&amp;sll=53.3492088,-6.244282&amp;sspn=0.04941,0.104628&amp;ie=UTF8&amp;hq=&amp;hnear=National+College+of+Ireland&amp;t=m&amp;z=14&amp;ll=53.3492088,-6.244282" style="color:#666;text-align:left;font-size:12px">View Larger Map</a></small>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
            </div>       
        </div>
        <div class="copy_right">
            <div class="wrap">
             <p>Brew Your Beer � All rights Reseverd | Design by Neil Gallagher </a></p>
            </div>
        </div>
    </body>
</html>

