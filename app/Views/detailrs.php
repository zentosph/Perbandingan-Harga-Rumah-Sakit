<div class="content-body">
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Edit Data Rumah Sakit</h4>
                    </div>
                    <div class="card-body">
                        <div class="basic-form">
                            <form class="form-valide-with-icon" action="<?= base_url('home/aksi_edit_rs/' . $rs->id_rs) ?>" method="post" enctype="multipart/form-data">

                                <!-- Pesan Notifikasi -->
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
                                        <input type="text" class="form-control" name="nama_rs" value="<?= $rs->nama_rs ?>" placeholder="Masukkan nama rumah sakit" required>
                                    </div>
                                </div>

                                <!-- Negara -->
                                <div class="form-group">
                                    <h6 class="text-label">Negara</h6>
                                    <input type="text" class="form-control" name="negara" value="<?= $rs->negara ?>" placeholder="Masukkan negara" required>
                                </div>

                                <!-- Kota -->
                                <div class="form-group">
                                    <h6 class="text-label">Kota</h6>
                                    <input type="text" class="form-control" name="kota" value="<?= $rs->kota ?>" placeholder="Masukkan kota" required>
                                </div>

                                <!-- Nomor Surat -->
                                <div class="form-group">
                                    <h6 class="text-label">Nomor Surat</h6>
                                    <input type="text" class="form-control" name="nomor_surat" value="<?= $rs->nomor_surat ?>" placeholder="Masukkan nomor surat" required>
                                </div>

                                <!-- Jenis Surat -->
                                <div class="form-group">
                                    <h6 class="text-label">Jenis Surat</h6>
                                    <input type="text" class="form-control" name="jenis_surat" value="<?= $rs->jenis_surat ?>" placeholder="Masukkan jenis surat" required>
                                </div>

                                <!-- Icon/Gambar -->
                                <div class="form-group">
                                    <h6 class="text-label">Icon/Gambar Rumah Sakit</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-image"></i></span>
                                        </div>
                                        <input type="file" class="form-control" name="foto" accept="image/*">
                                    </div>
                                    <?php if (!empty($rs->foto)): ?>
                                        <img src="<?= base_url('rs/' . $rs->foto) ?>" alt="Gambar Rumah Sakit" style="width: 150px; margin-top: 10px;">
                                    <?php endif; ?>
                                </div>
                                        <input type="hidden" value="<?=$rs->id_rs?>" name="id">
                                <!-- Tombol -->
                                <button type="submit" class="btn btn-primary">Simpan Perubahan</button>
                                <a href="<?= base_url('home/data_rs') ?>" class="btn btn-light">Batal</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
