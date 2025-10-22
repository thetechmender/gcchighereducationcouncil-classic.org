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


    <section class="hm-banner-section" style="background-image: url(/assets/images/main-banner/contact-us-banner.png)">
        <div class="container">
            <div class="row justify-content-center align-items-center text-center">
                <div class="col-md-12">
                    <h1 class="main-bannerHeading py-lg-5 py-md-4 py-2">Connect With Us — Your Path to Global Accreditation Starts Here</h1>
                </div>
                <div class="col-md-8">
                    <p class="text-white">We’re here to assist you every step of the way. Reach out for expert guidance, support, or any questions you have about our accreditation services.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="space-p-tb">
        <div class="container">
            <div class="row g-0 mt-md-4 mt-3">
                <h2 class="main-heading text-center">Get in Touch</h2>
                <div class="col-lg-6 p-0">
                    <div class="contact-imgDiv">
                        <img src="/assets/images/contact-form-img.png" class="img-fluid" alt="Alternate Text" />
                        
                        <div class="contact-infoMain">
                            <div class="contact-iconCont">
                                <div class="contact-iconDiv">
                                    <i class="fa-solid fa-location-dot"></i>
                                </div>
                                <div class="contact-contDiv">
                                    <h3>Visit Us</h3>
                                    <p><%=brandAddress%></p>
                                </div>
                            </div>
                            <div class="contact-iconCont mt-xl-4 mt-md-3 mt-2">
                                <div class="contact-iconDiv">
                                    <i class="fa-solid fa-envelope"></i>
                                </div>
                                <div class="contact-contDiv">
                                    <h3>Email Us</h3>
                                    <p><%=brandEmail%></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 p-0">
                    <div class="contact-formDiv h-100">
                        <h3>Contact Us</h3>
                        <form class="lead js-leadForm" novalidate>
                            <div class="row">
                                <div class="col-lg-6">
                                    <input type="text" placeholder="Enter Your Name " class="js-name" required>
                                </div>
                                <div class="col-lg-6 ">
                                    <input type="email" placeholder="Enter Your Email " class="js-email" required>
                                </div>
                                <div class="col-lg-12 mt-2">
                                    <div class="mb-2 iti-group">
                                        <input type="hidden" class="countryname js-country">
                                        <input type="hidden" class="js-serverIp" value="<%= ipAddress %>">
                                        <input type="hidden" class="countrycode">
                                        <input type="hidden" class="dialcode">
                                        <input type="tel" class="form-control js-phone" maxlength="10"
                                            placeholder="Phone Number" aria-label="Phone Number" required>
                                    </div>
                                </div>

                                


                                <div class="col-lg-12">
                                    <textarea class="form-control" placeholder="Enter Your Message" id="" rows="5"></textarea>

                                </div>

                                <div class="col-lg-12">
                                    <button type="submit" class="contactForm-btn js-submitBtn">Speak to Consultant</button>
                                    <div class="status js-status" aria-live="polite"></div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="container">
            <div class="row justify-content-center text-center">
                <div class="col-lg-10">
                    <h5 class="main-heading">Student Success Stories</h5>
                </div>
            </div>
            <div class="row">
                <div class="test-slider">
                    <div class="test-item">
                        <div class="test-card">

                            <div class="rating-div">
                                <div class="ratingImg">
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/outline-star.png" />
                                </div>
                                <span>(4.7)</span>
                            </div>

                            <p>“The support team was prompt, clear, and incredibly helpful in guiding us through the accreditation process.”</p>

                            <div class="test-info">
                                <div class="test-img">
                                    <img src="/assets/images/contact-James-O-Reilly.png" />
                                </div>
                                <div class="test-name">
                                    <span>James O’Reilly </span>
                                    <p>Dean, International Programs</p>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="test-item">
                        <div class="test-card">

                            <div class="rating-div">
                                <div class="ratingImg">
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/fill-star.png" />
                                </div>
                                <span>(5)</span>
                            </div>

                            <p>“I submitted a query and got detailed assistance within 24 hours. Exceptional responsiveness and care!”</p>

                            <div class="test-info">
                                <div class="test-img">
                                    <img src="/assets/images/contact-Nabila-Khan.png" />
                                </div>
                                <div class="test-name">
                                    <span>Nabila Khan </span>
                                    <p>Manager, Academic Outreach</p>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="test-item">
                        <div class="test-card">

                            <div class="rating-div">
                                <div class="ratingImg">
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/outline-star.png" />
                                </div>
                                <span>(4)</span>
                            </div>

                            <p>“From scheduling consultations to finalizing documents, their communication and support were top-tier throughout.”</p>

                            <div class="test-info">
                                <div class="test-img">
                                    <img src="/assets/images/contact-Martin-Reyes.png" />
                                </div>
                                <div class="test-name">
                                    <span>Dr. Martin Reyes </span>
                                    <p>Institutional Affairs Coordinator</p>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="test-item">
                        <div class="test-card">

                            <div class="rating-div">
                                <div class="ratingImg">
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/outline-star.png" />
                                </div>
                                <span>(4)</span>
                            </div>

                            <p>“Speaking to their consultants gave us the clarity and confidence we needed to proceed with accreditation.”</p>

                            <div class="test-info">
                                <div class="test-img">
                                    <img src="/assets/images/contact-Kiara-Mensah.png" />
                                </div>
                                <div class="test-name">
                                    <span>Kiara Mensah </span>
                                    <p>Head, Education Quality Control</p>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="test-item">
                        <div class="test-card">

                            <div class="rating-div">
                                <div class="ratingImg">
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/fill-star.png" />
                                    <img src="/assets/images/outline-star.png" />
                                </div>
                                <span>(4)</span>
                            </div>

                            <p>“They truly value your concerns. We felt supported and well-informed at every step of our interaction.”</p>

                            <div class="test-info">
                                <div class="test-img">
                                    <img src="/assets/images/contact-Lucas-Bennett.png" />
                                </div>
                                <div class="test-name">
                                    <span>Lucas Bennett</span>
                                    <p>Program Director, eLearning Academy</p>
                                </div>
                            </div>

                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <!--#include virtual="/includes/footer.asp"-->
    <!--#include virtual="/includes/scripts.asp"-->
</body>

</html>
