<!doctype html>
<html lang="en">

<head>
<?php $this->load->view('dashboard/_partials/header') ?>
<!-- Summernote css -->
<link href="<?= base_url('assets/admin/') ?>libs/summernote/summernote-bs4.css" rel="stylesheet" type="text/css" />
<!-- App Css-->
<link href="<?= base_url('assets/admin/') ?>css/app.min.css" rel="stylesheet" type="text/css" />
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
																	<p class="card-title-desc">Add destination photos detail.</p>
																	<form action="<?= base_url('dashboard/add_destinations/') ?>" method="POST" enctype="multipart/form-data">	
																	<div class="form-group row">
                                                                        <label for="example-text-input" class="col-md-2 col-form-label">Name Destinations</label>
                                                                        <div class="col-md-10">
                                                                            <input type="text" name="nama_dest" <?= set_value('nama_dest') ?> class="form-control">
                                                                            <?php echo form_error('nama_dest', '<div class="text-danger">', '</div>'); ?>
                                                                        </div>
																	</div>
																	<div class="form-group row">
                                                                    <div class="col-lg-12">


                                                                                <h4 class="header-title">Desc Tours</h4>
                                                                                <p class="card-title-desc">Super simple wysiwyg editor on bootstrap</p>

                                                                                <textarea name="deskripsi" class="summernote">
                                                                                
                                                                                                                                        
                                                                                

                                                                                </textarea>

                                                                    </div>
                                                                        <!-- <label for="example-text-input" class="col-md-2 col-form-label">Description Destinations</label>
                                                                        <div class="col-md-10">
                                                                            <textarea type="text" name="deskripsi" <?= set_value('deskripsi') ?> class="form-control"></textarea>
                                                                        </div> -->
                                                                            <!-- <?php echo form_error('deskripsi', '<div class="text-danger">', '</div>'); ?> -->
																	</div>
																	<div class="form-group row">
                                                                        <label for="example-text-input" class="col-md-2 col-form-label">Popularity</label>
                                                                        <div class="col-md-10">
                                                                            <input type="number" name="popular" <?= set_value('popular') ?> class="form-control">
                                                                            <?php echo form_error('popular', '<div class="text-danger">', '</div>'); ?>
                                                                        </div>
																	</div>
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
																				<button type="submit" name="submit" class="btn btn-primary waves-effect waves-light">Add Destination Photos</button>
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