<!DOCTYPE html>
<html lang="en">

<head>
    <?php $this->load->view('home/_partials/header') ?>
</head>

<body>
		
	<div id="page">

	<!-- /header -->
	<?php $this->load->view('home/_partials/nav') ?>
	<!-- /header -->
	
	<main>
		<section class="hero_single version_2">
			<div class="wrapper">
				<div class="container">
					<h3>Gets unique experiences</h3>
					<p>Expolore top rated tours around Lombok Island</p>
				</div>
			</div>
		</section>
		<!-- /hero_single -->

		<div class="container container-custom margin_80_0">
			<div class="main_title_2">
				<span><em></em></span>
				<h2>Pick Up and Drop Off Point</h2>
				<p>Pick up and drop off point is in Senggigi and Mataram city area, there will be <br> additional charge accordingly for other location.</p>
			</div>
			<div id="reccomended" class="owl-carousel owl-theme">
			<?php foreach($tours as $tour): ?>
				<div class="item">
					<div class="box_grid">
						<figure>
							<!-- <a href="#0" class="wish_bt"></a> -->
							<a href="<?= base_url('tour/'.$tour['slug']) ?>"><img src="<?= base_url('assets/images/tours/'.$tour['tumb_pic']) ?>" class="img-fluid" alt="" width="800" height="533"><div class="read_more"><span>Read more</span></div></a>
							<!-- <small>Historic</small> -->
						</figure>
						<div class="wrapper">
							<h3><a href="<?= base_url('tour/'.$tour['slug']) ?>"><?= $tour['title_tour'] ?></a></h3>
							<p><?= $tour['tumb_desc'] ?></p>
							<span class="price">Up To <strong>IDR <?= number_format($tour['price_desc'], 0, ',', '.') ?></strong> / person</span>
						</div>
						<ul>
							<li><i class="icon_clock_alt"></i> <?= $tour['duration'] ?></li>
							<li><div class="score"></li>
						</ul>
					</div>
				</div>
			<?php endforeach; ?>


				<!-- /item -->
			</div>
			<!-- /carousel -->
			<p class="btn_home_align"><a href="<?= base_url('tours') ?>" class="btn_1 rounded">View all Tours</a></p>
			<hr class="large">
		</div>
		<!-- /container -->
		
		<div class="container container-custom margin_30_95">
			<section class="add_bottom_45">
				<div class="main_title_3">
					<span><em></em></span>
					<h2>Popular Destinations</h2>
					<p>Detail destinations from tours package.</p>
				</div>
				<div class="row">
				<?php foreach($destinations as $dest): ?>
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="<?= base_url('destination/'.$dest['slug']) ?>" class="grid_item">
							<figure>
								<div class="score"></div>
								<img src="<?= base_url('assets/images/destinasi/'.$dest['tumb_pic']) ?>" class="img-fluid" alt="">
								<div class="info">
									<div class="cat_star"></div>
									<h3><?= $dest['name_dest'] ?></h3>
								</div>
							</figure>
						</a>
					</div>
				<?php endforeach; ?>
					<!-- /grid_item -->
				</div>
				<!-- /row -->
				<a href="<?= base_url('destinations') ?>"><strong>View all (<?= $jmlDests['jmlDest'] ?>) <i class="arrow_carrot-right"></i></strong></a>
			</section>
			<!-- /section -->
			
			<section class="add_bottom_45">
				<div class="main_title_3">
					<span><em></em></span>
					<h2>Need Some Transportations ?</h2>
					<!-- <p>Cum doctus civibus efficiantur in imperdiet deterruisset.</p> -->
				</div>
				<div class="row">
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="#" class="grid_item">
							<figure>
								<div class="score"></div>
								<img src="<?= base_url('assets/images/cars/Toyota-Hiace.jpg') ?>" class="img-fluid" alt="">
								<div class="info">
									<h3>Toyota Hiace</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="#" class="grid_item">
							<figure>
								<div class="score"></div>
								<img src="<?= base_url('assets/images/cars/toyota-reborn.jpg') ?>" class="img-fluid" alt="">
								<div class="info">
									<h3>Toyota Kijang Reborn</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
					<div class="col-xl-3 col-lg-6 col-md-6">
						<a href="#" class="grid_item">
							<figure>
								<div class="score"></div>
								<img src="<?= base_url('assets/images/cars/avanza.jpg') ?>" class="img-fluid" alt="">
								<div class="info">
									<h3>Toyota avanza</h3>
								</div>
							</figure>
						</a>
					</div>
					<!-- /grid_item -->
					<!-- /grid_item -->
				</div>
				<!-- /row -->
				<a href="<?= base_url('/cars') ?>"><strong>View all (3) <i class="arrow_carrot-right"></i></strong></a>
			</section>
			<!-- /section -->
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

		<!--/call_section-->
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