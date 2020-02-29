<!doctype html>
<html lang="en">

<head>
<?php $this->load->view('dashboard/_partials/header') ?>

<!-- Summernote css -->
<link href="<?= base_url('assets/admin/') ?>libs/summernote/summernote-bs4.css" rel="stylesheet" type="text/css" />
<!-- App Css-->
<link href="<?= base_url('assets/admin/') ?>css/app.min.css" rel="stylesheet" type="text/css" />
</head>

<body data-sidebar="dark">
<?php $this->load->view('dashboard/_partials/nav') ?>
    <!-- Begin page -->
    <div id="layout-wrapper">


        <!-- ========== Left Sidebar Start ========== -->
        <?php $this->load->view('dashboard/_partials/sidebar') ?>
        <!-- Left Sidebar End -->

        <!-- ============================================================== -->
        <!-- Start right Content here -->
        <!-- ============================================================== -->
        <div class="main-content">

            <div class="page-content">
                <div class="container-fluid">
								<?php if ($this->session->flashdata('message')) : ?>
                	<?= $this->session->flashdata('message'); ?>
								<?php endif; ?>
                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box d-flex align-items-center justify-content-between">
														<h4 class="mb-0 font-size-18"><?= $title ?></h4>


                            </div>
                        </div>
                    </div>
                    <!-- end page title -->
										<div class="row">
											<div class="col-12">
													<div class="card">
															<div class="card-body">

																	<h4 class="header-title">From Add Tours</h4>
																	<p class="card-title-desc">Add tours prices detail.</p>
																	<form action="<?= base_url('dashboard/add_prices/'.$this->uri->segment('3')) ?>" method="POST">	
																	<div class="form-group row">
																			<label for="example-text-input" class="col-md-2 col-form-label">Title</label>
																			<div class="col-md-10">
																					<input class="form-control" name="title_price" value="<?= set_value('title_price') ?>" type="text" placeholder="2 Persons" >
																					<?php echo form_error('title_price', '<div class="text-danger">', '</div>'); ?>
																			</div>
																	</div>
																	<div class="form-group row">
																			<label for="example-search-input" class="col-md-2 col-form-label">Price From</label>
																			<div class="col-md-10">
																					<input class="form-control" value="<?= set_value('price') ?>" name="price" type="number" placeholder="900000">
																					<?php echo form_error('price', '<div class="text-danger">', '</div>'); ?>
																			</div>
																	</div>
																	<div class="row">
																		<div class="col-lg-12">
																			<div class="text-center mt-4">
																				<button type="submit" name="submit" class="btn btn-primary waves-effect waves-light">Add Tours Prices</button>
																			</div>
																		</div>
																	</form>
																</div>
															</div>
													</div>
											</div>
                            <!-- end col -->
										</div>
										
                </div> <!-- container-fluid -->
            </div>
            <!-- End Page-content -->


            <?php $this->load->view('dashboard/_partials/footer') ?>
        </div>
        <!-- end main content-->

    </div>
    <!-- END layout-wrapper -->

    
    <!-- Right bar overlay-->
    <div class="rightbar-overlay"></div>

    <!-- JAVASCRIPT -->
    
    <?php $this->load->view('dashboard/_partials/js') ?>
    <!-- JS Tambahan di bawah -->
		<!-- Summernote js -->
		<script src="<?= base_url('assets/admin/') ?>libs/summernote/summernote-bs4.min.js"></script>
		<!-- init js -->
		<script src="<?= base_url('assets/admin/') ?>js/pages/summernote.init.js"></script>
    <script src="<?= base_url('assets/admin/') ?>js/app.js"></script>
</body>

</html>