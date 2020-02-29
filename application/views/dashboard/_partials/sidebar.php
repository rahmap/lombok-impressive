<div class="vertical-menu">

<div data-simplebar class="h-100">

    <!--- Sidemenu -->
    <div id="sidebar-menu">
        <!-- Left Menu Start -->
        <ul class="metismenu list-unstyled" id="side-menu">
            <li class="menu-title">Menu</li>

            <li>
                <a href="<?= base_url('dashboard') ?>" class="waves-effect">
                    <i class="mdi mdi-view-dashboard"></i>
                    <!-- <span class="badge badge-pill badge-success float-right">3</span> -->
                    <span>Main</span>
                </a>
            </li>

            <li>
                <a href="javascript: void(0);" class="has-arrow waves-effect">
                    <i class="mdi mdi-email-multiple-outline"></i>
                    <span>Tours</span>
                </a>
                <ul class="sub-menu" aria-expanded="false">
                    <li><a href="<?= base_url('dashboard/list_tours') ?>">List Tours</a></li>
                    <li><a href="<?= base_url('dashboard/add_tours') ?>">Add Tours</a></li>
                    <!-- <li><a href="email-compose.html">Email Compose</a></li> -->
                </ul>
            </li>

            <li>
                <a href="javascript: void(0);" class="has-arrow waves-effect">
                    <i class="mdi mdi-account-group"></i>
                    <span>Destinations</span>
                </a>
                <ul class="sub-menu" aria-expanded="false">
                    <li><a href="<?= base_url('dashboard/list_destinations') ?>">List Destinations</a></li>
                    <li><a href="<?= base_url('dashboard/add_destinations') ?>">Add Destinations</a></li>
                    <!-- <a><a href="auth-recoverpw.html">Recover Password</a></li>
                    <li><a href="auth-lock-screen.html">Lock Screen</a></li> -->
                </ul>
            </li>

            <li>
                <a href="javascript: void(0);" class="has-arrow waves-effect">
                    <i class="mdi mdi-google-pages"></i>
                    <span>Rent</span>
                </a>
                <ul class="sub-menu" aria-expanded="false">
                    <li><a href="pages-starter.html">List Rent</a></li>
                    <li><a href="pages-maintenance.html">Add Rent</a></li>
                    <!-- <li><a href="pages-comingsoon.html">Coming Soon</a></li>
                    <li><a href="pages-timeline.html">Timeline</a></li>
                    <li><a href="pages-gallery.html">Gallery</a></li>
                    <li><a href="pages-faqs.html">FAQs</a></li>
                    <li><a href="pages-pricing.html">Pricing</a></li>
                    <li><a href="pages-404.html">Error 404</a></li>
                    <li><a href="pages-500.html">Error 500</a></li> -->
                </ul>
            </li>

            <li class="menu-title">Gallery</li>

            <li>
                <a href="javascript: void(0);" class="has-arrow waves-effect">
                    <i class="mdi mdi-email-multiple-outline"></i>
                    <span>Photos</span>
                </a>
                <ul class="sub-menu" aria-expanded="false">
                    <li><a href="email-inbox.html">List Photos</a></li>
                    <li><a href="email-read.html">Add Photos</a></li>
                    <!-- <li><a href="email-compose.html">Email Compose</a></li> -->
                </ul>
            </li>

        </ul>

    </div>
    <!-- Sidebar -->
</div>
</div>