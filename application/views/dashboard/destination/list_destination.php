<!doctype html>
<html lang="en">

<head>
<?php $this->load->view('dashboard/_partials/header') ?>
<!-- DataTables -->
<link href="<?= base_url('assets/admin/') ?>libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
<link href="<?= base_url('assets/admin/') ?>libs/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
<!-- Responsive datatable examples -->
<link href="<?= base_url('assets/admin/') ?>libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />    
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

                    <!-- start page title -->
                    <div class="row">
                        <div class="col-12">
                            <div class="page-title-box d-flex align-items-center justify-content-between">
                                <h4 class="mb-0 font-size-18"><?= $title ?></h4>

                            </div>
                        </div>
                    </div>
										<!-- end page title -->
                    <?php if ($this->session->flashdata('message')) : ?>
                	<?= $this->session->flashdata('message'); ?>
								<?php endif; ?>
										
						<div class="row">
                            <div class="col-12">
                                <div class="card">
                                    <div class="card-body">
        
                                        <h4 class="header-title">Data Destinations</h4>
                                        <p class="card-title-desc">All data Destinations showed below.
                                        </p>
        
                                        <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Name Destination</th>
                                                <th class="text-center">Action</th>
                                            </tr>
                                            </thead>
        
                                            <tbody>
                                            <?php foreach($dests as $dest): ?>
                                            <tr>
                                                <td><?= $dest['id_dest'] ?></td>
                                                <td><?= $dest['name_dest'] ?></td>
                                                <td class="text-center">
                                                    <!-- <a href=""><button type="button" class="btn btn-primary btn-sm waves-effect waves-light">Detail</button></a> -->
                                                    <!-- <button href="<?= base_url('dashboard/add_prices/'.$dest['slug']) ?>"><button type="button" class="btn btn-secondary btn-sm waves-effect waves-light">Add Prices</button></a> -->
                                                    <a href="<?= base_url('dashboard/add_photos_dest/'.$dest['slug']) ?>"><button type="button" class="btn btn-info btn-sm waves-effect waves-light">Add Photos</button></a>
												</td>
                                            </tr>
                                            <?php endforeach; ?>
                                            </tbody>
                                        </table>
        
                                    </div>
                                </div>
                            </div> <!-- end col -->
                        </div> <!-- end row -->

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
		
		<!-- Required datatable js -->
		<script src="<?= base_url('assets/admin/') ?>libs/datatables.net/js/jquery.dataTables.min.js"></script>
		<script src="<?= base_url('assets/admin/') ?>libs/datatables.net-bs4/js/dataTables.bootstrap4.min.js"></script>
		<!-- Responsive examples -->
		<script src="<?= base_url('assets/admin/') ?>libs/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
		<script src="<?= base_url('assets/admin/') ?>libs/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js"></script>

		<!-- Datatable init js -->
		<script src="<?= base_url('assets/admin/') ?>js/pages/datatables.init.js"></script>
				
    <script src="<?= base_url('assets/admin/') ?>js/app.js"></script>
</body>

</html>