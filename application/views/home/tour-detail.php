<!DOCTYPE html>
<html lang="en">

<head>
		<?php $this->load->view('home/_partials/header') ?>
			<!-- SPECIFIC CSS -->
			<link href="<?= base_url('assets/') ?>layerslider/css/layerslider.css" rel="stylesheet">
</head>

<body>
		
	<div id="page">

	<!-- /header -->
	<?php $this->load->view('home/_partials/nav') ?>
	<!-- /header -->
	<main>
	<div id="full-slider-wrapper">
			<div id="layerslider" style="width:100%;height:750px;">
				<!-- first slide -->
				<?php $i=1; foreach($pics as $pic): ?>
				<div class="ls-slide" data-ls="slidedelay: 5000; transition2d:85;">
					<img src="<?= base_url('assets/images/tours/'.$pic['name_pics']) ?>" class="ls-bg" alt="Slide background">
					<?php if($i == 1): ?>
					<h3 class="ls-l slide_typo" style="top: 47%; left: 50%;" data-ls="offsetxin:0;durationin:2000;delayin:1000;easingin:easeOutElastic;rotatexin:90;transformoriginin:50% bottom 0;offsetxout:0;rotatexout:90;transformoriginout:50% bottom 0;"> <strong><?= $tours['title_tour'] ?></strong> </h3>
					<p class="ls-l slide_typo_2" style="top:55%; left:50%;" data-ls="durationin:2000;delayin:1000;easingin:easeOutElastic;">
					<!-- With Us -->
					</p>
					<?php endif; ?>
				</div>
				<?php $i++; endforeach; ?>
				<!-- second slide -->
			</div>
		</div>
		<!--/hero_in-->

		<div class="bg_color_1">
			<nav class="secondary_nav sticky_horizontal">
				<div class="container">
					<ul class="clearfix">
						<li><a href="#description" class="active">Description</a></li>
						<!-- <li><a href="#reviews">Reviews</a></li> -->
						<li><a href="#sidebar">Booking</a></li>
					</ul>
				</div>
			</nav>
			<div class="container margin_60_35">
				<div class="row">
					<div class="col-lg-8">

						<h3><?= $tours['title_tour'] ?> </h3>
						<section id="description">
																		
						<?= $tours['desc_full'] ?>
							<!-- End Map -->
							<!-- <div class="form-group col-md-12 text-center">
								<a href="https://wa.me/6285735501035?text=Hi, i want to know more about Tour : <?= $tours['title_tour'] ?>." class="btn_1">Contact Via WhatsApp</a>
							</div> -->
										
						</section>
						<!-- /section -->
					

						<!-- /section -->

					</div>
					<!-- /col -->
					
					<aside class="col-lg-4" id="sidebar"  style="margin-bottom:30px;">
						<div class="box_detail booking" style="height:220px;">
							<div class="price">
								<span id="price-per-person">IDR 0 </span><small>/person</small>
								<!-- <div class="score"><span>Good<em>350 Reviews</em></span><strong>7.0</strong></div> -->
							</div>

							<!-- <div class="panel-dropdown"> -->
								<!-- <span href="#">2 Persons <span class="qtyTotal"></span></a> -->
								<div class="custom-select-form">
									<select class="wide add_bottom_15" name="persons" id="persons">
									<?php foreach($prices as $price): ?>
										<option value="<?= $price['tours_price'] ?>"><?= $price['desc_price'] ?></option>
									<?php endforeach; ?>
									</select>
									<div class="nice-select wide add_bottom_15" tabindex="0">
										<span class="current">Select Persons</span>
										<ul class="list" id="ullist">
										<li data-value="" class="option selected focus">Select Persons</li>
										<?php foreach($prices as $price): ?>
										<li data-value="<?= $price['tours_price'] ?>" class="option"><?= $price['desc_price'] ?></li>
										<?php endforeach; ?>
										</ul>
									</div>
								</div>
							</div>
									<div class="form-group col-md-12 text-center" style="margin-top:-90px;">
									<a target="_blank" href="https://wa.me/6287765813677?text=Hi, i want to know more about Tour : <?= $tours['title_tour'] ?>." class="btn_1">Contact Via WhatsApp</a>
								</div>
					</aside>
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
	<!-- SPECIFIC SCRIPTS -->
		<script src="<?= base_url('assets/') ?>layerslider/js/greensock.js"></script>
    <script src="<?= base_url('assets/') ?>layerslider/js/layerslider.transitions.js"></script>
    <script src="<?= base_url('assets/') ?>layerslider/js/layerslider.kreaturamedia.jquery.js"></script>
    <script>
			$(document).ready(function(){
        'use strict';
        $('#layerslider').layerSlider({
            autoStart: true,
            navButtons: false,
            navStartStop: false,
            showCircleTimer: false,
            responsive: true,
            responsiveUnder: 1280,
            layersContainer: 1200,
            skinsPath: '<?= base_url('assets/') ?>layerslider/skins/'
                // Please make sure that you didn't forget to add a comma to the line endings
                // except the last line!
        });

				$("#ullist li").click(function() {
					$('#price-per-person').text('IDR ' + formatMoney($(this).data('value')) + ' ')
				});

				$('#description ul').css({'list-style-type':'disc','margin-left':'20px'});

				function formatMoney(amount, decimalCount = 0, decimal = ".", thousands = ".") {
					try {
						decimalCount = Math.abs(decimalCount);
						decimalCount = isNaN(decimalCount) ? 0 : decimalCount;
				
						const negativeSign = amount < 0 ? "-" : "";
				
						let i = parseInt(amount = Math.abs(Number(amount) || 0).toFixed(decimalCount)).toString();
						let j = (i.length > 3) ? i.length % 3 : 0;
				
						return negativeSign + (j ? i.substr(0, j) + thousands : '') + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + thousands) + (decimalCount ? decimal + Math.abs(amount - i).toFixed(decimalCount).slice(2) : "");
					} catch (e) {
						console.log(e)
					}
				};
			})
    </script>
	<script src="<?= base_url('assets/') ?>js/input_qty.js"></script>
	<!-- JS Tambahan di bawah ini -->
	
</body>
</html>