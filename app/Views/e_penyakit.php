<div class="content-body">
    <div class="container-fluid">
        <div class="row page-titles mx-0">
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-header">
                        <h4 class="card-title">Edit Penyakit</h4>
                    </div>
                    <div class="card-body">
                        <div class="basic-form">
                            <form class="form-valide-with-icon" action="<?= base_url('home/aksi_edit_penyakit') ?>" method="post" enctype="multipart/form-data">
                                <!-- ID Penyakit (Hidden) -->
                                <input type="hidden" class="form-control" name="id" value="<?= $penyakit->id_penyakit ?>">

                                <?php if (session()->getFlashdata('message')): ?>
                                    <div class="alert alert-success" role="alert">
                                        <?= session()->getFlashdata('message') ?>
                                    </div>
                                <?php elseif (session()->getFlashdata('error')): ?>
                                    <div class="alert alert-danger" role="alert">
                                        <?= session()->getFlashdata('error') ?>
                                    </div>
                                <?php endif; ?>

                                <!-- Nama Penyakit -->
                                <div class="form-group">
                                    <h6 class="text-label">Nama Penyakit</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-clipboard"></i></span>
                                        </div>
                                        <input type="text" class="form-control" name="nama_penyakit" value="<?= $penyakit->nama_penyakit ?>" placeholder="Masukkan nama penyakit" required>
                                    </div>
                                </div>

                                <!-- Biaya Penyakit -->
                                <div class="form-group">
                                    <h6 class="text-label">Biaya Penyakit (IDR)</h6>
                                    <div class="input-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fa fa-money"></i></span>
                                        </div>
                                        <input type="text" class="form-control" name="biaya_penyakit" value="<?= number_format($penyakit->biaya_penyakit, 0, ',', '.') ?>" placeholder="Masukkan biaya penyakit" required>
                                    </div>
                                </div>

                                <!-- Submit Button -->
                                <button type="submit" class="btn btn-primary">Update Penyakit</button>
                                <a href="<?= base_url('home/penyakit') ?>"><button type="button" class="btn btn-light">Batal</button></a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
