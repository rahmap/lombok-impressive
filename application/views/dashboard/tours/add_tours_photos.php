<!doctype html>
<html lang="en">

<head>
<?php $this->load->view('dashboard/_partials/header') ?>

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
								<?php if ($this->session->flashdata('error_msg')) : ?>
                	<?= $this->session->flashdata('error_msg'); ?>
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

																	<h4 class="header-title">From Add Photos</h4>
																	<p class="card-title-desc">Add tours photos detail.</p>
																	<form action="<?= base_url('dashboard/add_photos/'.$this->uri->segment('3')) ?>" method="POST" enctype="multipart/form-data">	
																	<div class="form-group row">
																			<label for="example-text-input" class="col-md-2 col-form-label">Photo (Max 7 MB)</label>
																			<div class="col-md-10">
																				<input type="file" name="photo" <?= set_value('photo') ?> class="form-control">
																				<?php echo form_error('photo', '<div class="text-danger">', '</div>'); ?>
																			</div>
																	</div>
																	<div class="row">
																		<div class="col-lg-12">
																			<div class="text-center mt-4">
																				<button type="submit" name="submit" class="btn btn-primary waves-effect waves-light">Add Tours Photos</button>
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

    <script src="<?= base_url('assets/admin/') ?>js/app.js"></script>
</body>

</html>