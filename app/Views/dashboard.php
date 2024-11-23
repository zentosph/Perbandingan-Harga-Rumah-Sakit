<style>
    .button-tambah-rs{
        margin-bottom: 10px;
    }
</style>
<div class="content-body">
    <div class="container-fluid">
        <div class="row">
            <?php if (session()->get('level')) { ?>
        <a href="<?=base_url('home/TambahRS')?>" class="button-tambah-rs">
                        <button class="btn btn-dark">tambah</button>
                    </a>
            <?php } ?>
            <?php foreach ($rs as $rumah_sakit): ?>
                <div class="col-md-4">
                    <div class="card">
                        <!-- Gambar Rumah Sakit -->
                        <img src=<?=base_url("rs/".$rumah_sakit->foto)?> 
                             class="card-img-top" 
                             alt="Foto <?= htmlspecialchars($rumah_sakit->nama_rs); ?>" 
                             style="height: 200px; object-fit: cover;">
                        <div class="card-body">
                            <!-- Nama Rumah Sakit -->
                            <h5 class="card-title"><?= htmlspecialchars($rumah_sakit->nama_rs); ?></h5>
                            <p class="card-text">
                                <strong>Negara:</strong> <?= htmlspecialchars($rumah_sakit->negara); ?><br>
                                <strong>Kota:</strong> <?= htmlspecialchars($rumah_sakit->kota); ?>
                            </p>
                            <!-- Tombol Detail -->
                            <button type="button" 
                                    class="btn btn-dark btn-detail" 
                                    data-id="<?= $rumah_sakit->id_rs; ?>" 
                                    data-nama="<?= htmlspecialchars($rumah_sakit->nama_rs); ?>" 
                                    data-bs-toggle="modal" 
                                    data-bs-target="#modalDetail">
                                Lihat Detail Harga
                            </button>
                        </div>
                    </div>
                </div>
            <?php endforeach; ?>
        </div>
    </div>
</div>

<!-- Modal Detail Harga -->
<div class="modal fade" id="modalDetail" tabindex="-1" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog modal-xl"> <!-- modal-xl untuk modal lebar penuh -->
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalLabel">Detail Harga Penyakit</h5>
            </div>
            <div class="modal-body">
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama Penyakit</th>
                            <th>Biaya (Rp)</th>
                        </tr>
                    </thead>
                    <tbody id="modalDetailContent">
                        <!-- Data akan dimuat menggunakan JavaScript -->
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<script>
 document.addEventListener("DOMContentLoaded", function () {
    const modalLabel = document.getElementById("modalLabel");
    const modalDetailContent = document.getElementById("modalDetailContent");

    document.querySelectorAll(".btn-detail").forEach(button => {
        button.addEventListener("click", function () {
            const idRs = this.getAttribute("data-id");
            const namaRs = this.getAttribute("data-nama");

            modalLabel.textContent = `Detail Harga Penyakit - ${namaRs}`;
            modalDetailContent.innerHTML = `<tr><td colspan="3">Loading...</td></tr>`;

            fetch(`home/getpenyakit/${idRs}`)
                .then(response => response.json())
                .then(data => {
                    if (data.length > 0) {
                        let rows = "";
                        data.forEach((penyakit, index) => {
                            rows += `
                                <tr>
                                    <td>${index + 1}</td>
                                    <td>${penyakit.nama_penyakit}</td>
                                    <td>${new Intl.NumberFormat('id-ID', { style: 'currency', currency: 'IDR' }).format(penyakit.biaya_penyakit)}</td>
                                </tr>
                            `;
                        });
                        modalDetailContent.innerHTML = rows;
                    } else {
                        modalDetailContent.innerHTML = `<tr><td colspan="3">Tidak ada data penyakit.</td></tr>`;
                    }

                    const modal = new bootstrap.Modal(document.getElementById('modalDetail'));
                    modal.show();
                })
                .catch(error => {
                    console.error("Error fetching data:", error);
                    modalDetailContent.innerHTML = `<tr><td colspan="3">Terjadi kesalahan saat memuat data.</td></tr>`;
                });
        });
    });

});



</script>