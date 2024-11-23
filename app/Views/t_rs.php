<div class="content-body">
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Tambah Rumah Sakit</h4>
                    </div>
                    <div class="card-body">
                        <div class="basic-form">
                            <form class="form-valide-with-icon" action="<?= base_url('home/aksi_TambahRS') ?>" method="post" enctype="multipart/form-data">

                                <?php if (session()->getFlashdata('message')): ?>
                                    <div class="alert alert-success" role="alert">
                                        <?= session()->getFlashdata('message') ?>
                                    </div>
                                <?php elseif (session()->getFlashdata('error')): ?>
                                    <div class="alert alert-danger" role="alert">
                                        <?= session()->getFlashdata('error') ?>
                                    </div>
                                <?php endif; ?>

                                <!-- Nama Rumah Sakit -->
                                <div class="form-group">
                                    <h6 class="text-label">Nama Rumah Sakit</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-hospital"></i></span>
                                        </div>
                                        <input type="text" class="form-control" name="nama_rs" placeholder="Masukkan nama rumah sakit" required>
                                    </div>
                                </div>

                                <!-- Foto Rumah Sakit -->
                                <div class="form-group">
                                    <h6 class="text-label">Foto Rumah Sakit</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-image"></i></span>
                                        </div>
                                        <input type="file" class="form-control" name="foto" accept="image/*" required>
                                    </div>
                                </div>

                                <!-- Negara -->
                                <div class="form-group">
                                    <h6 class="text-label">Negara</h6>
                                    <input type="text" class="form-control" name="negara" placeholder="Masukkan negara" required>
                                </div>

                                <!-- Kota -->
                                <div class="form-group">
                                    <h6 class="text-label">Kota</h6>
                                    <input type="text" class="form-control" name="kota" placeholder="Masukkan kota" required>
                                </div>

                                <!-- Nomor Surat -->
                                <div class="form-group">
                                    <h6 class="text-label">Nomor Surat</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-file"></i></span>
                                        </div>
                                        <input type="text" class="form-control" name="nomor_surat" placeholder="Masukkan nomor surat" required>
                                    </div>
                                </div>

                                <!-- Jenis Surat -->
                                <div class="form-group">
                                    <h6 class="text-label">Jenis Surat</h6>
                                    <input type="text" class="form-control" name="jenis_surat" placeholder="Masukkan jenis surat" required>
                                </div>

                                <!-- Submit Button -->
                                <button type="submit" class="btn btn-primary">Tambah Rumah Sakit</button>
                                <button type="button" class="btn btn-light">Batal</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
