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
                    <h4>Halo, selamat datang kembali!</h4>
                    <span class="ml-1">Tabel Data Rumah Sakit</span>
                </div>
            </div>
            <div class="col-sm-6 p-md-0 justify-content-sm-end mt-2 mt-sm-0 d-flex">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">Tabel</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">Data Rumah Sakit</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->

        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Data Rumah Sakit</h4>
                    </div>
                    <div class="card-body">
                    <?php if (session()->getFlashdata('message')): ?>
                                    <div class="alert alert-success" role="alert">
                                        <?= session()->getFlashdata('message') ?>
                                    </div>
                                <?php elseif (session()->getFlashdata('error')): ?>
                                    <div class="alert alert-danger" role="alert">
                                        <?= session()->getFlashdata('error') ?>
                                    </div>
                                <?php endif; ?>
                        <div class="table-responsive">
                            <table id="example" class="display" style="min-width: 845px">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nama Rumah Sakit</th>
                                        <th>Negara</th>
                                        <th>Kota</th>
                                        <th>Nomor Surat</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($rs as $data) { ?>
                                        <tr class="tdcoy">
                                            <td><?= $data->id_rs ?></td>
                                            <td><?= $data->nama_rs ?></td>
                                            <td><?= $data->negara ?></td>
                                            <td><?= $data->kota ?></td>
                                            <td><?= $data->nomor_surat ?></td>
                                            <td>
                                                <a href="<?= base_url('home/detailrs/' . $data->id_rs) ?>">
                                                    <button class="btn btn-primary"><i class="fa fa-eye"></i> </button>
                                                </a>

                                                <a href="<?= base_url('home/editrs/' . $data->id_rs) ?>">
                                                    <button class="btn btn-primary"><i class="fa fa-edit"></i> </button>
                                                </a>

                                                <a href="<?=base_url('home/reseteditrs/'.$data->id_rs)?>">
                                                <button class="btn btn-primary"><i class="far fa-arrow-alt-circle-left"></i></button></a>

                                                <a href="<?= base_url('home/SDRS/' . $data->id_rs) ?>">
                                                    <button class="btn btn-danger"><i class="fa fa-trash"></i> </button>
                                                </a>
                                            </td>
                                        </tr>
                                    <?php } ?>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th>ID</th>
                                        <th>Nama Rumah Sakit</th>
                                        <th>Negara</th>
                                        <th>Kota</th>
                                        <th>Nomor Surat</th>
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
    <script src="<?= base_url('vendor/global/global.min.js') ?>"></script>
    <script src="<?= base_url('js/quixnav-init.js') ?>"></script>
    <script src="<?= base_url('js/custom.min.js') ?>"></script>
    <script src="<?= base_url('vendor/datatables/js/jquery.dataTables.min.js') ?>"></script>
    <script src="<?= base_url('js/plugins-init/datatables.init.js') ?>"></script>
</div>
