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
		<!--/hero_in-->
		<section class="hero_in general">
			<div class="wrapper">
				<div class="container">
					<h1 class="fadeInUp"><span></span><?= $destinations['name_dest'] ?></h1>
				</div>
			</div>
		</section>
		<!--/hero_in-->
		<div class="container margin_60_35">
			<div class="main_title_2">
				<span><em></em></span>
				<h2><?= $destinations['name_dest'] ?></h2>
				<p>Photos collection from <?= $destinations['name_dest'] ?>.</p>
			</div>
			<div class="grid">
				<ul class="magnific-gallery">
        <?php foreach($pics as $pic): ?>
					<li>
						<figure>
							<img src="<?= base_url('assets/images/destinasi/'.$pic['name_photos']) ?>" alt="">
							<figcaption>
								<div class="caption-content">
									<a href="<?= base_url('assets/images/destinasi/'.$pic['name_photos']) ?>" title="" data-effect="mfp-zoom-in">
										<i class="pe-7s-albums"></i>
										<p>View</p>
										<!-- <p><?= str_replace('-',' ',ucwords($pic['title_photos'])) ?></p> -->
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
				<div class="main_title_2">
					<span><em></em></span>
          <h2>About <?= $destinations['name_dest'] ?></h2>
				</div>
          <p><?= $destinations['deskripsi'] ?></p>
				<!-- /grid -->
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