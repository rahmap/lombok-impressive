<!DOCTYPE html>
<html lang="en">

<head>
    <?php $this->load->view('home/_partials/header') ?>
</head>

<body>
    <style>
    .hero_in.tours:before {
      background: url(<?= base_url('assets/images/gili-trawangan-photo1.jpg') ?>) center center no-repeat;
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
		
		<section class="hero_in tours">
			<div class="wrapper">
				<div class="container">
					<h1 class="fadeInUp"><span></span>All Amazing Destinations</h1>
				</div>
			</div>
		</section>
		<!--/hero_in-->
		

		<!-- /filters -->
		
		<div class="collapse" id="collapseMap">
			<div id="map" class="map"></div>
		</div>
		<!-- End Map -->

		<div class="container margin_60_35">
			
		<div class="wrapper-grid">
			<div class="row">
        <?php foreach($dests as $tour): ?>
				<div class="col-xl-4 col-lg-6 col-md-6">
        <div class="item">
					<div class="box_grid">
						<figure>
							<!-- <a href="#0" class="wish_bt"></a> -->
							<a href="<?= base_url('destination/'.$tour['slug']) ?>"><img src="<?= base_url('assets/images/destinasi/'.$tour['tumb_pic']) ?>" class="img-fluid" alt="" width="800" height="533"><div class="read_more"><span>Read more</span></div></a>
							<!-- <small>Historic</small> -->
						</figure>
						<div class="wrapper">
							<h3><a href="<?= base_url('destination/'.$tour['slug']) ?>"><?= $tour['name_dest'] ?></a></h3>
						</div>
						
					</div>
				</div>
        </div>
        <?php endforeach; ?>
				<!-- /box_grid -->

			</div>
			<!-- /row -->
			</div>
			<!-- /wrapper-grid -->
			
			<!-- <a class="text-center"><a href="#0" class="btn_1 rounded add_top_30">Load more</a></p> -->
			
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