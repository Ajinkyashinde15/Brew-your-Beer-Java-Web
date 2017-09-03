
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s"  uri="/struts-tags"%>
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
                    <div class="section group"><div class="col_1_of_3 contact_1_of_3"></div>
                        <div class="col_1_of_3 contact_1_of_3">
                            <div class="contact-form">
                                <h3>Sign Up</h3>
                                <form method="post" action="signup"> 
                                     <s:if test="hasActionMessages()"><div class="company_address">
                                            <h6 style="color: white">
                                                <s:actionmessage/></h6>
                                            
                                    </div>
                                    </s:if>
                                    <div>
                                        <div>
                                            <span><input name="name" required="" type="text" class="textbox" value="Name" onFocus="this.value = '';" onBlur="if (this.value == '') {
                                                                    this.value = 'Name';
                                                                }"></span>
                                        </div>

                                        <div>
                                            <span><textarea required="" name="address" value="Address:" onFocus="this.value = '';" onBlur="if (this.value == '') {
                                                                    this.value = 'Message';
                                                                }">Address</textarea></span>
                                        </div>

                                        <div>
                                            <span><input required="" name="email" type="email" class="textbox" value="Email:" onFocus="this.value = '';" onBlur="if (this.value == '') {
                                                                    this.value = 'Email';
                                                                }"></span>
                                        </div>

                                        <div>
                                            <span><input required="" name="phone" type="text" class="textbox" value="Phone" onFocus="this.value = '';" onBlur="if (this.value == '') {
                                                                    this.value = 'Phone';
                                                                }"></span>
                                        </div >
                                        <div style="background-color:#FFFFFF">Gender
                                            <span>Male<input type="radio" class="textbox" name="gender" value="Male" onFocus="this.value = '';" onBlur="if (this.value == '') {
                                                                    this.value = 'Male';
                                                                }"></span>
                                            <span>Female<input type="radio" name="gender" class="textbox" value="Male" onFocus="this.value = '';" onBlur="if (this.value == '') {
                                                                                    this.value = 'Male';
                                                                                }"></span>
                                        </div>
                                        <br/>
                                        <div style="background-color:#FFFFFF">Date of Birth 
                                            <span><input required="" name="dob" type="date" class="textbox" value="Date" onFocus="this.value = '';" onBlur="if (this.value == '') {
                                                                    this.value = '2017-05-12';
                                                                }"></span>
                                        </div>

                                        <div>
                                            <span><input required="" name="un" type="text" class="textbox" value="UserName" onFocus="this.value = '';" onBlur="if (this.value == '') {
                                                                    this.value = 'Username';
                                                                }"></span>
                                            <br />
                                        </div>



                                        <div>
                                            <span><input required="" name="pass" type="password" class="textbox" value="Password" onFocus="this.value = '';" onBlur="if (this.value == '') {
                                                                    this.value = 'Password';
                                                                }"></span>
                                        </div>

                                        <div>
                                            <span><input type="submit" value="SIgn Up"></span>
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

