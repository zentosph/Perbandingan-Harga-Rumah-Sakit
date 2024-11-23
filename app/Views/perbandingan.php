<div class="content-body">
    <div class="container-fluid">
        <h3 class="mb-4">Compare Hospital Prices</h3>
        <form id="compareForm" method="post">
    <div class="row">
        <!-- Pilihan Rumah Sakit Kiri -->
        <div class="col-md-5">
            <h5>Select Hospital 1</h5>
            <select name="id_rs1" class="form-control" required>
                <option value="">-- Select Hospital --</option>
                <?php foreach ($all_rs as $rs): ?>
                    <option value="<?= $rs->id_rs ?>"><?= htmlspecialchars($rs->nama_rs) ?></option>
                <?php endforeach; ?>
            </select>
        </div>

        <!-- Pilihan Rumah Sakit Kanan -->
        <div class="col-md-5">
            <h5>Select Hospital 2</h5>
            <select name="id_rs2" class="form-control" required>
                <option value="">-- Select Hospital --</option>
                <?php foreach ($all_rs as $rs): ?>
                    <option value="<?= $rs->id_rs ?>"><?= htmlspecialchars($rs->nama_rs) ?></option>
                <?php endforeach; ?>
            </select>
        </div>

        <!-- Tombol Bandingkan -->
        <div class="col-md-2 d-flex align-items-end">
            <button type="submit" class="btn btn-primary w-100">Compare</button>
        </div>
    </div>
</form>

<!-- Hasil Perbandingan -->
<div id="comparisonResult" class="mt-5"></div>



        <!-- Hasil Perbandingan -->
       
    </div>
</div>
<script>
   document.getElementById('compareForm').addEventListener('submit', function (e) {
    e.preventDefault(); // Prevent form reload
    const formData = new FormData(this);

    fetch('<?= base_url('home/compareRS') ?>', {
        method: 'POST',
        body: formData
    })
        .then(response => {
            if (!response.ok) {
                throw new Error(`HTTP error! status: ${response.status}`);
            }
            return response.json(); // Try to parse the JSON
        })
        .then(data => {
    if (data.status === 'error') {
        document.getElementById('comparisonResult').innerHTML = `
            <div class="alert alert-danger">${data.message}</div>
        `;
        return;
    }

    const rs1 = data.rs1;
    const rs2 = data.rs2;

    // Gabungkan semua penyakit dan hapus duplikat berdasarkan nama penyakit
    const allConditions = Array.from(
        new Set([...rs1.map(item => item.nama_penyakit), ...rs2.map(item => item.nama_penyakit)])
    );

    // Susun HTML
    let html = `
        <div class="row">
            <div class="col-md-6">
                <h5>${rs1[0]?.nama_rs || 'Hospital 1'}</h5>
            </div>
            <div class="col-md-6">
                <h5>${rs2[0]?.nama_rs || 'Hospital 2'}</h5>
            </div>
        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Condition</th>
                    <th>Price (Rp) - Hospital 1</th>
                    <th>Price (Rp) - Hospital 2</th>
                </tr>
            </thead>
            <tbody>`;

    // Tampilkan data berdasarkan penyakit
    allConditions.forEach(condition => {
        const itemRs1 = rs1.find(item => item.nama_penyakit === condition) || {};
        const itemRs2 = rs2.find(item => item.nama_penyakit === condition) || {};

        html += `
            <tr>
                <td>${condition}</td>
                <td>${itemRs1.biaya_penyakit ? new Intl.NumberFormat('id-ID').format(itemRs1.biaya_penyakit) : '-'}</td>
                <td>${itemRs2.biaya_penyakit ? new Intl.NumberFormat('id-ID').format(itemRs2.biaya_penyakit) : '-'}</td>
            </tr>`;
    });

    html += `
            </tbody>
        </table>`;

    document.getElementById('comparisonResult').innerHTML = html;
})

        .catch(error => {
            console.error('Error:', error);
            document.getElementById('comparisonResult').innerHTML = `
                <div class="alert alert-danger">An error occurred: ${error.message}</div>
            `;
        });
});

</script>
