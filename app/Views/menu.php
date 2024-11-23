<style>
    .nav-label{
        color: white;
    }
</style>

<div class="nav-header">
            <a href="index.html" class="brand-logo">
                <img class="logo-abbr" src="<?=base_url('images/')?>" alt="">
                <img class="logo-compact" src="<?=base_url('images/logo-text.png')?>" alt="">
                <img class="brand-title" src="<?=base_url('images/logo-text.png')?>" alt="">
            </a>

            <div class="nav-control">
                <div class="hamburger">
                    <span class="line"></span><span class="line"></span><span class="line"></span>
                </div>
            </div>
        </div>
        <!--**********************************
            Nav header end
        ***********************************-->

        <!--**********************************
            Header start
        ***********************************-->
        <div class="header">
            <div class="header-content">
                <nav class="navbar navbar-expand">
                    <div class="collapse navbar-collapse justify-content-between">
                        <div class="header-left">
                            <div class="search_bar dropdown">
                                <span class="search_icon p-3 c-pointer" data-toggle="dropdown">
                                    <i class="mdi mdi-magnify"></i>
                                </span>
                                <div class="dropdown-menu p-0 m-0">
                                    <form>
                                        <input class="form-control" type="search" placeholder="Search" aria-label="Search">
                                    </form>
                                </div>
                            </div>
                        </div>

                        <ul class="navbar-nav header-right">

                            <li class="nav-item dropdown header-profile">
                       
                            <?php if (session()->get('nama')) { ?>  
    <span class="namauser"><?= session()->get('nama') ?></span>
    <a class="nav-link" href="" role="button" data-toggle="dropdown">
        <i class="mdi mdi-account"></i>
    </a>
    <div class="dropdown-menu dropdown-menu-right">
        <a href="./app-profile.html" class="dropdown-item">
            <i class="icon-user"></i>
            <span class="ml-2">Profile</span>
        </a>
        <a href="./email-inbox.html" class="dropdown-item">
            <i class="icon-envelope-open"></i>
            <span class="ml-2">Inbox</span>
        </a>
        <a href="<?= base_url('home/logout') ?>" class="dropdown-item">
            <i class="icon-key"></i>
            <span class="ml-2">Logout</span>
        </a>
    </div>
<?php } else { ?>
    <a href="<?= base_url('home/login') ?>" class="btn btn-dark">
        Login
    </a>
<?php } ?>


                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <!--**********************************
            Header end ti-comment-alt
        ***********************************-->

        <!--**********************************
            Sidebar start
        ***********************************-->
        <div class="quixnav">
            <div class="quixnav-scroll">
                <ul class="metismenu" id="menu">
                    
                    <li class="nav-label first">Main Menu</li>

                    <li><a href="<?=base_url('home')?>" aria-expanded="false"><i class="fa fa-home"></i><span
                                class="nav-text">Dashboard</span></a></li> 

                    <li><a href="<?=base_url('home/PerbandinganRS')?>" aria-expanded="false"><i class="fa fa-exchange-alt"></i>
                    <span
                                class="nav-text">Banding</span></a></li> 
                                
                                <?php if (session()->get('id')) { ?>
                    <li><a href="<?=base_url('home/RumahSakit')?>" aria-expanded="false"><i class="fa fa-hospital"></i>
                    <span
                                class="nav-text">Manage RS</span></a></li> 
                                <?php } ?>

                                <?php if ($menu->data == 1) { ?>
                                    <li class="nav-label first">Data</li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="fas fa-file-alt"></i><span class="nav-text">Database</span></a>
                        <ul aria-expanded="false">
                            <li><a href="<?=base_url('home/RS')?>">Rumah Sakit</a></li>
                            <li><a href="<?=base_url('home/User')?>">User</a></li>
                        </ul>

                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="fas fa-file-alt"></i><span class="nav-text">Recycle Bin</span></a>
                        <ul aria-expanded="false">
                        <li><a href="<?=base_url('home/RRS')?>">Rumah Sakit</a></li>
                            <li><a href="<?=base_url('home/Ruser')?>">User</a></li>
                        </ul>
                        

                    <li><a href="<?=base_url('home/LogActivity')?>" aria-expanded="false"><i class="fas fa-history"></i><span
                                class="nav-text">Log Activity</span></a></li>
                                <?php } ?>
                    
                                <?php if ($menu->setting == 1) { ?>
                                    <li class="nav-label first">Website</li>
                    <li><a class="has-arrow" href="javascript:void()" aria-expanded="false"><i
                                class="fas fa-cogs"></i><span class="nav-text">Setting</span></a>
                        <ul aria-expanded="false">
                            <li><a href="<?=base_url('home/Website')?>">Website</a></li>
                            <li><a href="<?=base_url('home/MenuManage')?>">Menu Manage</a></li>
                        </ul>
                    </li> 
                    <?php } ?>
                    </li>
                </ul>
            </div>


        </div>