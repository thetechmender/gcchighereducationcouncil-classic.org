<%@ Language="VBScript" %>
    <% ' Capture client IP safely
Dim ipAddress
ipAddress = Request.ServerVariables("HTTP_X_FORWARDED_FOR")
If Len(ipAddress) = 0 Then ipAddress = Request.ServerVariables("REMOTE_ADDR")
If InStr(ipAddress, ",") > 0 Then ipAddress = Trim(Split(ipAddress, ",")(0))
%>
<!DOCTYPE HTML>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<!--#include virtual="/includes/brand-info.asp"-->
	<title>Contact Us | <%=brandName%></title>
	<meta name="description" content="">
	<meta name="keywords" content="">
    <!--#include virtual="/includes/style.asp"-->
</head>

<body>
    <!--#include virtual="/includes/header.asp"-->
   

    

    <section class="main-banner" style="background-image:url('/assets/images/bg/main-banner.png')">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-xl-5 col-md-7">
                    <div class="main-banner-content">
                    <label>Let’s get Started</label>
                       
                        <h1>Global <span>Recognition</span>  Starts Here</h1>
                        <p>Unlock worldwide credibility with our trusted accreditation solutions for educational institutions and specialized programs. Join the network of excellence and elevate your academic standing on a global scale.</p>    
                        <div class="btn-holder">
                        <a href="javascript:;"  class="ctm-btn-yellow">Get Accredited<div class="circle"><i class="fa-solid fa-arrow-right-long"></i></div> </a>
                     <a href="javascript:;"  class="ctm-btn-bdr">Explore Our Program<div class="circle"><i class="fa-solid fa-arrow-right-long"></i></div> </a>       
                    </div>
                    </div>
                </div>
            </div>
        </div>
    </section>



        <section class="space-p-tb contact-sec">
            <div class="container">
                    <h3 class="common-title text-center mb-5">Get in <span>Touch</span> </h3>
                 <div class="row">
                <div class="col-xl-6 col-md-6">
                    <div class="contact-form-box">
                        <h4>Contact Us</h4>

                       <form>
                     <form class="lead js-leadForm" novalidate>
                            <div class="row">
                                <div class="col-lg-6 mb-3">
                                    <label>Enter your Name</label>
                                    <input type="text" placeholder="Enter Your Name " class="js-name" required>
                                </div>
                                <div class="col-lg-6 mb-3">
                                    <label>Enter your Email</label>
                                    <input type="email" placeholder="Enter Your Email " class="js-email" required>
                                </div>
                                <div class="col-lg-12 mb-3">
                                      <label>Enter your Number</label>
                                    <div class="mb-2 iti-group">
                                        <input type="hidden" class="countryname js-country">
                                        <input type="hidden" class="js-serverIp" value="<%= ipAddress %>">
                                        <input type="hidden" class="countrycode">
                                        <input type="hidden" class="dialcode">
                                        <input type="tel" class="form-control js-phone" maxlength="10"
                                            placeholder="Phone Number" aria-label="Phone Number" required>
                                    </div>
                                </div>

                                


                                <div class="col-lg-12 mb-3">
                                    <label>Message</label>
                                    <textarea class="form-control" placeholder="Enter Your Message" id="" rows="5"></textarea>

                                </div>

                                <div class="col-lg-12 mt-3">
                                    <button type="submit"  class="ctm-btn-red js-submitBtn">Talk to an advisor<div class="circle"><i class="fa-solid fa-arrow-right-long"></i></div> </button>     
                                    <!-- <button type="submit" class="contactForm-btn js-submitBtn">Speak to Consultant</button> -->
                                    <div class="status js-status" aria-live="polite"></div>
                                </div>

                            </div>
                        </form>
                       </form> 

                    </div>
                </div>
                <div class="col-xl-6 col-md-6">
                    <div class="contact-img">
                        <img src="/assets/images/contact-img.png" class="img-fluid" alt="contact" >
                    </div>

                    <div class="contact-box-right">
                        <div class="cont-box">
                             <div class="cont-box-icon">
                                <i class="fa-regular fa-envelope"></i>
                             </div>
                               <div class="cont-box-text">  
                                    <span>Email</span>
                                    <a href="mailto:<%=brandEmail%>"><%=brandEmail%></a>
                               </div>
                        </div>


                          <div class="cont-box" style="margin: 0;">
                             <div class="cont-box-icon">
                                <i class="fa-solid fa-location-dot"></i>
                             </div>
                               <div class="cont-box-text">  
                                    <span>Address</span>
                                    <p><%=brandAddress%></p>
                               </div>
                        </div>

                    </div>
                </div>
                    
                </div>
            </div>
        </section>


        <!--#include virtual="/includes/testimonials.asp"-->
    <!--#include virtual="/includes/footer.asp"-->
    <!--#include virtual="/includes/scripts.asp"-->
</body>

</html>