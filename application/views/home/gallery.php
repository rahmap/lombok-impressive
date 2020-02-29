<!DOCTYPE html>
<html lang="en">

<head>
    <?php $this->load->view('home/_partials/header') ?>
</head>

<body>
<style>
.hero_in.general:before {
	background: url(<?= base_url('assets/images/destinasi/'.$gallerys[rand(0,46)]['name_photos']) ?>) center center no-repeat;
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
					<h1 class="fadeInUp"><span></span>Tours and Destinations Media Gallery</h1>
				</div>
			</div>
		</section>
		<!--/hero_in-->

		<div class="container margin_60_35">
			<div class="main_title_2">
				<span><em></em></span>
				<h2>Gallery</h2>
				<p>Photos from our tours and destinations.</p>
			</div>
			<div class="grid">
				<ul class="magnific-gallery">
				<?php foreach($gallerys as $gal): ?>
					<li>
						<figure>
							<img src="<?= base_url('assets/images/destinasi/'.$gal['name_photos']) ?>" alt="">
							<figcaption>
								<div class="caption-content">
									<a href="<?= base_url('assets/images/destinasi/'.$gal['name_photos']) ?>" title="<?= ucwords(str_replace('-',' ',$gal['title_photos'])) ?>" data-effect="mfp-zoom-in">
										<i class="pe-7s-albums"></i>
										<p><?= ucwords(str_replace('-',' ',$gal['title_photos'])) ?></p>
									</a>
								</div>
							</figcaption>
						</figure>
					</li>
				<?php endforeach; ?>
				</ul>
			</div>
			<!-- /grid gallery -->
		</div>
		<!-- /container -->
		<div class="bg_color_1">
			<div class="container margin_60_35">
				<div class="row">
					<div class="col-md-12">
						<a target="_blank" href="<?= base_url('/contact') ?>" class="boxed_list">
							<i class="pe-7s-help2"></i>
							<h4>Need Help? Contact us</h4>
							<p>Lombok Impressive.</p>
						</a>
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