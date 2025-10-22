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
	<title>Scholarship Application | <%=brandName%></title>
	<meta name="description" content="">
	<meta name="keywords" content="">
    <!--#include virtual="/includes/style.asp"-->
</head>


<body>
    <!--#include virtual="/includes/header.asp"-->
    <section class="hm-banner-section" style="background-image: url(/assets/images/main-banner/scholarships-application.png)">
        <div class="container">
            <div class="row justify-content-center align-items-center text-center">
                <div class="col-md-12">
                    <h1 class="main-bannerHeading  py-md-5 py-2">Take the First Step Toward a Brighter Future</h1>
                </div>
                <div class="col-md-8">
                    <p class="text-white">Start your scholarship journey today and unlock new opportunities for academic growth, institutional development, and global recognition.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="space-p-tb">
        <div class="container">
            <div class="text-center">
                <h5 class="main-heading mb-4 mb-md-5">Dedicated Student Support Services
                </h5>
                <div class="row support-timelineDive sch-appDiv text-center">
                    <div class="col-lg-4">
                        <div class="sup-service-div">

                        <div class="sup-serviceNumb">
                            <span>1</span>
                        </div>

                        <h5 class="text-dark">Academic Counseling</h5>
                        <p class="text-dark">We help students choose accredited programs that match their goals, strengths, and career aspirations.</p>

                    </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="sup-service-div">

                        <div class="sup-serviceNumb">
                            <span>2</span>
                        </div>

                        <h5 class="text-dark">Career Placement Assistance</h5>
                        <p class="text-dark">We connect students with hiring partners and internship programs to ensure real-world career pathways.</p>

                    </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="sup-service-div">

                            <div class="sup-serviceNumb">
                                <span>3</span>
                            </div>

                            <h5 class="text-dark">Scholarship Guidance</h5>
                            <p class="text-dark">Our counselors assist students in identifying and applying for financial aid and scholarship opportunities.</p>

                        </div>
                    </div>
                    
                </div>

                <div class="row support-timelineDive sch-appDiv text-center mt-md-4 mt-2">

                    <div class="col-lg-4">
                        <div class="sup-service-div">

                            <div class="sup-serviceNumb">
                                <span>4</span>
                            </div>

                            <h5 class="text-dark">Create Your Application Profile</h5>
                            <p class="text-dark">Register or log in to your account to begin the secure application process.</p>

                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="sup-service-div">

                            <div class="sup-serviceNumb">
                                <span>5</span>
                            </div>

                            <h5 class="text-dark">Complete and Submit Application</h5>
                            <p class="text-dark">Fill in the application form accurately and upload all required documents.</p>

                        </div>
                    </div>                    
                    
                    <div class="col-lg-4">
                        <div class="sup-service-div">

                            <div class="sup-serviceNumb">
                                <span>6</span>
                            </div>

                            <h5 class="text-dark">Track Application Status</h5>
                            <p class="text-dark">Receive confirmation via email and monitor your application's progress through your dashboard.</p>

                        </div>
                    </div>

                </div>

            </div>
        </div>
    </section>

    <section class="space-p-tb bg-gray sch-renewalDiv">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-lg-6">
                    <h4 class="main-heading">Scholarship Renewal Process</h4>
                    <p>Renewing your scholarship allows you to maintain vital financial support for continued academic or institutional success. Applicants must show consistent performance, meet eligibility criteria, and submit updated documentation like transcripts or progress reports. The renewal process is quick and transparent, ensuring your goals stay on track without interruption. Submit your renewal application on time to continue benefiting from our global scholarship programs.</p>
                </div>
                <div class="col-lg-5">
                    <div class="sch-renewalForm">
                        <form class="lead js-leadForm" novalidate>
                            <div class="row">
                                <h4>Study on a 80% scholarship</h4>

                                <div class="col-lg-12 ps-0">
                                    <input type="text" placeholder="Enter Your Name " class="js-name" required>
                                </div>

                                <div class="col-lg-12 ps-0">
                                    <input type="email" placeholder="Enter Your Email " class="js-email" required>
                                </div>

                                <div class="col-lg-12 ps-0">
                                    <div class="mb-2 iti-group">
                                        <input type="hidden" class="countryname js-country">
                                        <input type="hidden" class="js-serverIp" value="<%= ipAddress %>">
                                        <input type="hidden" class="countrycode">
                                        <input type="hidden" class="dialcode">
                                        <input type="tel" class="form-control js-phone" maxlength="10"
                                            placeholder="Phone Number" aria-label="Phone Number" required>
                                    </div>
                                </div>

                                <div class="col-lg-12 ps-0">
                                    <textarea class="form-control" placeholder="Enter Your Message" id="" rows="3"></textarea>
                                    
                                </div>

                                <div class="col-lg-12 ps-0">
                                    <button type="submit" class="sch-form-btn js-submitBtn">Send</button>
                                    <div class="status js-status" aria-live="polite"></div>
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="space-p-t">
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

                            <p class="testi-p">"The scholarship program helped us fund critical research and faculty training. Renewing it was straightforward and ensured our continued academic growth."</p>

                            <div class="test-info">
                                <div class="test-img">
                                    <img src="/assets/images/current-Dr-Amina-Reyes.png" />
                                </div>
                                <div class="test-name">
                                    <span>Dr. Amina Reyes</span>
                                    <p>Director of Academic Affairs, Bright Future University</p>
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

                            <p class="testi-p">"Thanks to this scholarship, I completed my first year without financial stress. The renewal process was simple and timely."</p>

                            <div class="test-info">
                                <div class="test-img">
                                    <img src="/assets/images/current-Samuel-Okoro.png" />
                                </div>
                                <div class="test-name">
                                    <span>Samuel Okoro</span>
                                    <p>Master’s Student in Engineering</p>
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

                            <p class="testi-p">"We received a development grant that transformed our curriculum. The renewal extended our impact beyond expectations."</p>

                            <div class="test-info">
                                <div class="test-img">
                                    <img src="/assets/images/current-Linda-Chen.png" />
                                </div>
                                <div class="test-name">
                                    <span>Prof. Linda Chen</span>
                                    <p>Head of International Programs, Greenleaf Institute</p>
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

                            <p class="testi-p">"This scholarship opened doors I never imagined. The renewal application was efficient and showed their ongoing commitment to my success."</p>

                            <div class="test-info">
                                <div class="test-img">
                                    <img src="/assets/images/current-Fatima-Al-Mansoori.png" />
                                </div>
                                <div class="test-name">
                                    <span>Fatima Al-Mansoori</span>
                                    <p>Public Health Scholar</p>
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

                            <p class="testi-p">"Our institution has benefited immensely. The renewal support helped us continue offering world-class programs and expanding our outreach.”</p>

                            <div class="test-info">
                                <div class="test-img">
                                    <img src="/assets/images/current-Jason-Wright.png" />
                                </div>
                                <div class="test-name">
                                    <span>Jason Wright</span>
                                    <p>Scholarship Coordinator, Horizon Learning Center</p>
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





