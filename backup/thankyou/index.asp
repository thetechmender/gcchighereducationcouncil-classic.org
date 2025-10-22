<!DOCTYPE HTML>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="x-ua-compatible" content="ie=edge">
	<!--#include virtual="/includes/brand-info.asp"-->
	<title> Thank You | <%=brandName%></title>
	<meta name="description"
		content="">
	<meta name="keywords"
		content="">
	<!--#include virtual="/includes/style.asp"-->
	
</head>
<body>

	<style>
		.navigation {
			display: none;
		}

		.thanks-bg {
			height: 100vh;
			padding-top: 57px;
			    background-repeat: no-repeat;
    background-size: cover;
		}

		.banner-content {
			text-align: center;
		}

		.banner-content span {
			color: white;
			font-family: 'Poppins';
			display: inline-block;
			font-weight: 600;
			font-size: calc(18px + (30 - 18) * (100vw - 320px) / (1920 - 320));
			margin-bottom: 10px;
			line-height: 1.2;
			text-transform: uppercase;
		}

		.banner-content h1 {
			color: white;
			font-weight: 800;
			font-size: calc(22px + (45 - 22) * (100vw - 320px) / (1920 - 320));
			text-transform: uppercase;
		}

		.banner-content p {
			color: white;
			font-weight: 400;
			margin-bottom: 0;
			font-size: calc(16px + (22 - 16) * (100vw - 320px) / (1920 - 320));
		}
	</style>
	<!--#include virtual="/includes/header.asp" -->

	<section class="thanks-bg bg-detail" style="background-image: url(/assets/images/main-banner/contact-us-banner.png);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="banner-content">
						<span>Thankyou For Your Information</span>
						<h1>YOUR INFORMATION HAS SUCCESSFULLY ADDED TO OUR DATABASE</h1>
						<p>Our student counsellor will get in touch with you to guide you further on the process.</p>
					</div>
				</div>
			</div>
		</div>
		</div>
	</section>

	<!--#include virtual="/includes/scripts.asp" -->
</body>

</html>