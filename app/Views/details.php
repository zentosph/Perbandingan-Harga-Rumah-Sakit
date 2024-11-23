<div class="content-body">
    <div class="container-fluid">
<div class="container mt-5">
    <div class="card">
        <div class="card-header">
            <h4>Detail Rumah Sakit</h4>
        </div>
        <div class="card-body">
            <!-- Detail Rumah Sakit -->
            <h5>Nama Rumah Sakit:</h5>
            <p><?= $rs->nama_rs ?></p>

            <h5>Negara:</h5>
            <p><?= $rs->negara ?></p>

            <h5>Kota:</h5>
            <p><?= $rs->kota ?></p>

            <hr>

            <!-- Daftar Penyakit -->
            <h4>Daftar Penyakit</h4>
            <table class="table table-bordered" id="tabelPenyakit">
    <thead>
        <tr>
            <th>No</th>
            <th>Nama Penyakit</th>
            <th>Biaya Penyakit</th>
            <th>Aksi</th>
        </tr>
    </thead>
    <tbody>
        <?php if (!empty($penyakit)) : ?>
            <?php $no = 1; foreach ($penyakit as $p) : ?>
                <tr>
                    <td><?= $no++ ?></td>
                    <td><?= $p->nama_penyakit ?></td>
                    <td>Rp <?= number_format($p->biaya_penyakit, 2, ',', '.') ?></td>
                    <td>
                        <a href="<?= base_url('home/edit_penyakit/' . $p->id_penyakit) ?>" class="btn btn-warning btn-sm">Edit</a>
                        <a href="<?= base_url('home/delete_penyakit/' . $p->id_penyakit) ?>" class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">Hapus</a>
                    </td>
                </tr>
            <?php endforeach; ?>
        <?php else : ?>
            <tr>
                <td colspan="4" class="text-center">Tidak ada data penyakit.</td>
            </tr>
        <?php endif; ?>
    </tbody>
</table>

            <!-- Tambah Penyakit -->
            <h4>Tambah Penyakit</h4>
<form id="formTambahPenyakit" method="post">
    <input type="hidden" name="id_rs" value="<?= $rs->id_rs ?>">
    <div class="form-group">
        <label for="nama_penyakit">Nama Penyakit</label>
        <input type="text" class="form-control" id="nama_penyakit" name="nama_penyakit" placeholder="Masukkan nama penyakit" required>
    </div>
    <div class="form-group">
        <label for="biaya_penyakit">Biaya Penyakit</label>
        <input type="number" class="form-control" id="biaya_penyakit" name="biaya_penyakit" placeholder="Masukkan biaya penyakit" step="0.01" required>
    </div>
    <button type="submit" class="btn btn-success">Tambah Penyakit</button>
</form>
        </div>
    </div>
</div>
</div>
</div>
<script>
   document.getElementById('formTambahPenyakit').addEventListener('submit', function (e) {
    e.preventDefault(); // Mencegah reload halaman

    const form = this;
    const formData = new FormData(form);

    // Kirim data ke server
    fetch('<?= base_url('home/tambah_penyakit') ?>', {
        method: 'POST',
        body: formData
    })
    .then(response => response.json())
    .then(data => {
        if (data.status === 'success') {
            // Hapus pesan 'Tidak ada data penyakit.' jika ada
            const noDataMessage = document.querySelector('#tabelPenyakit tbody tr');
            if (noDataMessage && noDataMessage.querySelector('td').textContent === 'Tidak ada data penyakit.') {
                noDataMessage.remove();
            }

            // Tambahkan baris baru ke tabel
            const tableBody = document.querySelector('#tabelPenyakit tbody');
            const newRow = document.createElement('tr');
            
            newRow.innerHTML = `
                <td>${tableBody.rows.length + 1}</td>
                <td>${data.penyakit.nama_penyakit}</td>
                <td>${new Intl.NumberFormat('id-ID', { style: 'currency', currency: 'IDR' }).format(data.penyakit.biaya_penyakit)}</td>
                <td>
                    <a href="<?= base_url('home/edit_penyakit/') ?>/${data.penyakit.id_penyakit}" class="btn btn-warning btn-sm">Edit</a>
                    <a href="<?= base_url('home/delete_penyakit/') ?>/${data.penyakit.id_penyakit}" class="btn btn-danger btn-sm" onclick="return confirm('Apakah Anda yakin ingin menghapus data ini?')">Hapus</a>
                </td>
            `;
            tableBody.appendChild(newRow);

            // Reset form
            form.reset();
        } else {
            alert('Gagal menambahkan penyakit: ' + data.message);
        }
    })
    .catch(error => {
        console.error('Error:', error);
        alert('Terjadi kesalahan. Silakan coba lagi.');
    });
});


</script>