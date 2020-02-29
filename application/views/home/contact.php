<!DOCTYPE html>
<html lang="en">

<head>
    <?php $this->load->view('home/_partials/header') ?>
</head>

<body>

<style>
.hero_in.contacts:before {
	background: url(<?= base_url('assets/images/tours/gili-nanggu-1580649526491.jpeg') ?>) center center no-repeat;
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
		<section class="hero_in contacts">
			<div class="wrapper">
				<div class="container">
					<h1 class="fadeInUp"><span></span>Contact Us</h1>
				</div>
			</div>
		</section>
		<!--/hero_in-->

		<div class="contact_info">
			<div class="container">
				<ul class="clearfix">
					<li>
						<i class="pe-7s-map-marker"></i>
						<h4>Address</h4>
						<span>Jl.al ikhlas raya gg.Bouraq no 5.Pejarakan Karya Ampenan ( 83113 ) Mataram.</span>
					</li>
					<li>
						<i class="pe-7s-mail-open-file"></i>
						<h4>Email address</h4>
						<span> impressivelombok@gmail.com</span>

					</li>
					<li>
						<i class="pe-7s-phone"></i>
						<h4>Contact info</h4>
						<span> +62 877-6581-3677</span>
					</li>
				</ul>
			</div>
		</div>
		<!--/contact_info-->

		<div class="bg_color_1">
			<div class="container margin_80_55">
				<div class="row justify-content-between">
					<div class="col-lg-12">
						<div class="map_contact">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d986.3292294110992!2d116.09795030640576!3d-8.565494008956119!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dcdc0f2ee61f4c9%3A0xb805a25355e2b2c2!2sGg.%20Bouraq%2C%20Ampenan%20Utara%2C%20Kec.%20Ampenan%2C%20Kota%20Mataram%2C%20Nusa%20Tenggara%20Bar.%2083123!5e0!3m2!1sid!2sid!4v1581084250616!5m2!1sid!2sid" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
						</div>
						<!-- /map -->
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /bg_color_1 -->
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