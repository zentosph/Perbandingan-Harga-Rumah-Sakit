<style>
    .tdcoy > td {
        color: black;
    }
</style>

<div class="content-body">
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-sm-6 p-md-0">
                <div class="welcome-text">
                    <h4>Daftar Dokumen</h4>
                    <span class="ml-1">Datatable</span>
                </div>
            </div>
            <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">Table</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">Datatable</a></li>
                </ol>
            </div>
        </div>

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <!-- Display success or error messages -->
                        <?php if (session()->getFlashdata('message')): ?>
                            <div class="alert alert-success" role="alert">
                                <?= session()->getFlashdata('message') ?>
                            </div>
                        <?php elseif (session()->getFlashdata('error')): ?>
                            <div class="alert alert-danger" role="alert">
                                <?= session()->getFlashdata('error') ?>
                            </div>
                        <?php endif; ?>
                        
                        <a href="<?= base_url('home/t_user') ?>"><button class="btn btn-success">Tambah</button></a>    
                        <div class="table-responsive">
                            <table id="example" class="display" style="min-width: 845px">
                                <thead>
                                    <tr>
                                        <th>Nama</th>
                                        <th>Email</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($user as $use): ?>
                                    <tr class="tdcoy">
                                        <td><?= $use->username ?></td>
                                        <td><?= $use->email ?></td>
                                        <td><a href="<?=base_url('home/resetpassword/'.$use->id_user)?>">
                                            <button class="btn btn-dark"><i class="fa fa-undo"></i></button></a>
                                        
                                        <a href="<?=base_url('home/EditUser/'.$use->id_user)?>">
                                            <button class="btn btn-dark"><i class="fa fa-edit"></i></button></a>
                                        
                                        <a href="<?=base_url('home/SDuser/'.$use->id_user)?>">
                                            <button class="btn btn-dark"><i class="fa fa-trash"></i></button></a>
                                            
                                        <a href="<?=base_url('home/resetedituser/'.$use->id_user)?>">
                                            <button class="btn btn-dark"><i class="far fa-arrow-alt-circle-left"></i></button></a>
                                        
                                        </td>
                                        
                                    </tr>
                                    <?php endforeach; ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>Nama</th>
                                        <th>Email</th>
                                        <th>Aksi</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="<?=base_url('vendor/global/global.min.js')?>"></script>
<script src="<?=base_url('js/quixnav-init.js')?>"></script>
<script src="<?=base_url('js/custom.min.js')?>"></script>
<script src="<?=base_url('vendor/datatables/js/jquery.dataTables.min.js')?>"></script>
<script src="<?=base_url('js/plugins-init/datatables.init.js')?>"></script>
