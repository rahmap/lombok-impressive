<!DOCTYPE html>
<html lang="en">

<head>
    <?php $this->load->view('home/_partials/header') ?>
</head>

<body>

<style>
.hero_in.general:before {
	background: url(<?= base_url('assets/images/destinasi/'.$pics[0]['name_photos']) ?>) center center no-repeat;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
}
</style>
		
	<div id="page">

	<!-- /header -->
	<?php $this->load->view('home/_partials/nav') ?>
	<!-- /header -->
	
	<main>
		
		<section class="hero_in general">
			<div class="wrapper">
				<div class="container">
					<h1 class="fadeInUp"><span></span>About Lombok Impressive</h1>
				</div>
			</div>
		</section>
		<!--/hero_in-->

		<!-- /container -->

		<div class="bg_color_1">
			<div class="container margin_80_55">
				<div class="main_title_2">
					<span><em></em></span>
					<h2>Our Origins and Story</h2>
					<!-- <p>Cum doctus civibus efficiantur in imperdiet deterruisset.</p> -->
				</div>
				<div class="row justify-content-between">
					<div class="col-lg-6 wow" data-wow-offset="150">
						<figure class="block-reveal">
							<div class="block-horizzontal"></div>
							<img src="<?= base_url('assets/images/about.jpg') ?>" class="img-fluid" alt="">
						</figure>
					</div>
					<div class="col-lg-5">
						<p>
            Lombok Impressive is a Tour operator, presents the offer to become your creative partner in Lombok for group & individual holiday makers, honeymooners, adventures, Incentive groups & M.I.C.E. or car hire.
            <br><br>
            Lombok Island is an ideal location to host Meetings, Incentives, Team Building & Training Programs, Product Launches and other business events which can be combined with leisure..Lombok offers many leisure, spectacular beaches, beautiful nature and etc.
            <br><br>
            Our team has the ability to create a number of interesting programs. Program proposals and quotations are tailored made to suit the clients’ specific requirements and budget. We have our own highly maintained vehicles that are regularly used to cater for all our clients’ transportation needs.
            <br><br>
            Our well trained staff and experienced guides are available when required to help organize special tour packages, re-schedule flights and oversee any other details.
            <br><br>
            Tour Operator specialized in one day little trips, authentic small group activities and customized multiday travels all around the island,
            Thank you for trusting us! Together with our professional team, we promise to do our very best. It is our desire to keep you satisfied with our services.

            </p>
					</div>
				</div>
				<!--/row-->
			</div>
			<!--/container-->
		</div>
		<!--/bg_color_1-->

		<!--/container-->
	</main>
	<!-- /main -->

	<?php $this->load->view('home/_partials/footer') ?>
	<!--/footer-->
	</div>
	<!-- page -->
	
	
	<div id="toTop"></div><!-- Back to top button -->

	<?php $this->load->view('home/_partials/js') ?>
	<!-- INPUT QUANTITY  -->
	<script src="<?= base_url('assets/') ?>js/input_qty.js"></script>
	<!-- JS Tambahan di bawah ini -->
	
</body>
</html>