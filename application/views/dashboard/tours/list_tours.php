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
        
                                        <h4 class="header-title">Data Tours</h4>
                                        <p class="card-title-desc">All data Tours showed below.
                                        </p>
        
                                        <table id="datatable" class="table table-bordered dt-responsive nowrap" style="border-collapse: collapse; border-spacing: 0; width: 100%;">
                                            <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Name Tour</th>
                                                <th>Duration</th>
                                                <th>Price (start)</th>
                                                <th>Create Date</th>
                                                <th class="text-center">Active</th>
                                                <th class="text-center">Action</th>
                                            </tr>
                                            </thead>
        
                                            <tbody>
                                            <?php foreach($tours as $tour): ?>
                                            <tr>
                                                <td><?= $tour['id_tour'] ?></td>
                                                <td><?= $tour['title_tour'] ?></td>
                                                <td><?= $tour['duration'] ?></td>
                                                <td>IDR <?= number_format($tour['price_desc'], 0, ',', '.') ?></td>
                                                <td><?= date('d/m/Y H:i',$tour['create_date']) ?></td>
                                                <td class="text-center">
                                                  <?= ($tour['is_active'] == 1)? '<span class="badge badge-success">activated</span>' : '<span class="badge badge-light">deactivated</span>';?>
                                                </td>
                                                <td class="text-center">
                                                    <a href=""><button type="button" class="btn btn-primary btn-sm waves-effect waves-light">Detail</button></a>
                                                    <a href="<?= base_url('dashboard/add_prices/'.$tour['slug']) ?>"><button type="button" class="btn btn-secondary btn-sm waves-effect waves-light">Add Prices</button></a>
                                                    <a href="<?= base_url('dashboard/add_photos/'.$tour['slug']) ?>"><button type="button" class="btn btn-info btn-sm waves-effect waves-light">Add Photos</button></a>
                                                    <?php if($tour['is_active'] == 0){ ?>
                                                    <a href="<?= base_url('dashboard/activeDeactive/'.$tour['slug'].'/'.'1') ?>"><button type="button" class="btn btn-success btn-sm waves-effect waves-light">Activate</button></a>
                                                  <?php } else { ?>
                                                    <a href="<?= base_url('dashboard/activeDeactive/'.$tour['slug'].'/'.'0') ?>"><button type="button" class="btn btn-warning btn-sm waves-effect waves-light">Deactivate</button></a>
                                                  <?php } ?>
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