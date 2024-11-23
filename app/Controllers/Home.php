<?php

namespace App\Controllers;
use CodeIgniter\Models\Controller;
use App\Models\M_z;

class Home extends BaseController
{
	public function index()
	{
        $model = new M_z();
        $where = array('deleted' => null);
        $data['rs'] = $model->tampilwhere('rumah_sakit', $where);
        $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $data['menus'] = $model->tampil('menu');
    if(session()->get('level')){
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
    }else{
    $where6 = array('level' => 0);
    $data['menu'] = $model->getwhere('menu', $where6);
    }
		echo view('header',$data);
		echo view('menu',$data);
        echo view('dashboard', $data);
		echo view('footer');
	}

    public function getpenyakit($id_rs) {
        $model = new M_z();
        $where = ['id_rs' => $id_rs];
        $penyakit = $model->tampilwhere('daftar_penyakit', $where);
    
        // Return data sebagai JSON
        return $this->response->setJSON($penyakit);
    }
    
    
	private function log_activity($activity)
    {
		$model = new M_z();
        $data = [
            'id_user'    => session()->get('id'),
            'activity'   => $activity,
			'timestamp' => date('Y-m-d H:i:s'),
			'delete' => Null
        ];

        $model->tambah('activity', $data);
    }

	public function login(){
        $model = new M_z();
        $where5 = array('id_setting' => 1);
        $data['setting'] = $model->getwhere('setting', $where5);
		echo view('header', $data);
		echo view('login');
	}

	public function generateCaptcha()
{
    // Create a string of possible characters
    $characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    $captcha_code = '';
    
    // Generate a random CAPTCHA code with letters and numbers
    for ($i = 0; $i < 6; $i++) {
        $captcha_code .= $characters[rand(0, strlen($characters) - 1)];
    }
    
    // Store CAPTCHA code in session
    session()->set('captcha_code', $captcha_code);
    
    // Create an image for CAPTCHA
    $image = imagecreate(120, 40); // Increased size for better readability
    $background = imagecolorallocate($image, 200, 200, 200);
    $text_color = imagecolorallocate($image, 0, 0, 0);
    $line_color = imagecolorallocate($image, 64, 64, 64);
    
    imagefilledrectangle($image, 0, 0, 120, 40, $background);
    
    // Add some random lines to the CAPTCHA image for added complexity
    for ($i = 0; $i < 5; $i++) {
        imageline($image, rand(0, 120), rand(0, 40), rand(0, 120), rand(0, 40), $line_color);
    }
    
    // Add the CAPTCHA code to the image
    imagestring($image, 5, 20, 10, $captcha_code, $text_color);
    
    // Output the CAPTCHA image
    header('Content-type: image/png');
    imagepng($image);
    imagedestroy($image);
}


public function aksi_login()
{
    // Periksa koneksi internet
    if (!$this->checkInternetConnection()) {
        // Jika tidak ada koneksi, cek CAPTCHA gambar
        $captcha_code = $this->request->getPost('captcha_code');
        if (session()->get('captcha_code') !== $captcha_code) {
            session()->setFlashdata('toast_message', 'Invalid CAPTCHA');
            session()->setFlashdata('toast_type', 'danger');
            return redirect()->to('home/login');
        }
    } else {
        // Jika ada koneksi, cek Google reCAPTCHA
        $recaptchaResponse = trim($this->request->getPost('g-recaptcha-response'));
        $secret = '6LeKfiAqAAAAAFkFzd_B9MmWjX76dhdJmJFb6_Vi'; // Ganti dengan Secret Key Anda
        $credential = array(
            'secret' => $secret,
            'response' => $recaptchaResponse
        );

        $verify = curl_init();
        curl_setopt($verify, CURLOPT_URL, "https://www.google.com/recaptcha/api/siteverify");
        curl_setopt($verify, CURLOPT_POST, true);
        curl_setopt($verify, CURLOPT_POSTFIELDS, http_build_query($credential));
        curl_setopt($verify, CURLOPT_SSL_VERIFYPEER, false);
        curl_setopt($verify, CURLOPT_RETURNTRANSFER, true);
        $response = curl_exec($verify);
        curl_close($verify);

        $status = json_decode($response, true);

        if (!$status['success']) {
            session()->setFlashdata('toast_message', 'Captcha validation failed');
            session()->setFlashdata('toast_type', 'danger');
            return redirect()->to('home/login');
        }
    }

    // Proses login seperti biasa
    $u = $this->request->getPost('username');
    $p = $this->request->getPost('password');

    $where = array(
        'username' => $u,
        'password' => md5($p),
    );
    $model = new M_z;
    $cek = $model->getWhere('user', $where);

    if ($cek) {
        // $this->log_activitys('User Mel$where5 = array('id_setting' => 1);
        session()->set('nama', $cek->username);
        session()->set('id', $cek->id_user);
        session()->set('level', $cek->level);
        return redirect()->to('home/');
    } else {
        session()->setFlashdata('toast_message', 'Invalid login credentials');
        session()->setFlashdata('toast_type', 'danger');
        return redirect()->to('home/login');
    }
}

public function checkInternetConnection()
{
    $connected = @fsockopen("www.google.com", 80);
    if ($connected) {
        fclose($connected);
        return true;
    } else {
        return false;
    }
}

public function aksi_t_folder(){
    $model = new M_z();
    $nama = $this->request->getPost('nama_folder');
    $level = $this->request->getPost('level');
    $file = $this->request->getFile('icon_gambar');

    if ($file && $file->isValid()) {
        // Panggil fungsi upload untuk meng-upload file
        $uploadedFileName = $file->getName();
        $model->upload2($file);  // Upload the file
    }
    $data = [
        'nama_folder' => $nama, 
        'level' => $level, 
        'icon' => $uploadedFileName
    ];

    $model->tambah('folder', $data);
    return redirect()->to('home/Folder_Dokumen');
}



public function updateMenuVisibilityAjax()
{
    // Get data from the AJAX request
    $menu = $this->request->getPost('menu'); // e.g., 'data', 'dashboard'
    $level = $this->request->getPost('level'); // e.g., 1, 2, 3
    $visibility = $this->request->getPost('visibility'); // 1 or 0

    // Logging the data received from AJAX request
    log_message('debug', 'Received data from AJAX - Menu: ' . $menu . ', Level: ' . $level . ', Visibility: ' . $visibility);

    // Prepare data for the update
    $updateData = [$menu => $visibility];
    $whereCondition = ['level' => $level];

    // Logging the prepared data for the update
    log_message('debug', 'Update Data: ' . json_encode($updateData));
    log_message('debug', 'Where Condition: ' . json_encode($whereCondition));

    // Initialize the model
    $menuModel = new M_z();

    // Call the model method to update the menu visibility
    $result = $menuModel->updateMenuVisibility('menu', $updateData, $whereCondition);

    // Check if the update was successful and log the result
    if ($result) {
        log_message('debug', 'Menu visibility updated successfully.');
        return $this->response->setJSON(['status' => 'success', 'message' => 'Menu visibility updated successfully.']);
    } else {
        log_message('error', 'Failed to update menu visibility.');
        return $this->response->setJSON(['status' => 'error', 'message' => 'Failed to update menu visibility.']);
    }
}

public function aksi_edit_website()
{
    // Load the model that interacts with your settings
    $model = new M_z(); // Replace M_p with the actual model name

    // Retrieve the settings from the database
    $where5 = array('id_setting' => 1);
    $setting = $model->getwhere('setting',$where5); // Assuming you have a method to get current settings

    // Get the name from the request
    $name = $this->request->getPost('name');

    $icon = $this->request->getFile('icon');
    $menu = $this->request->getFile('menu');

    // Array to hold image names
    $images = [];

    // Check and upload icon
    if ($icon && $icon->isValid()) {
        $images['icon'] = $icon->getName();
        $model->uploadimages($icon); // Call uploadimages from the model
    } else {
        // Keep the existing icon name if no new file is uploaded
        $images['icon'] = $setting->icon;
    }

    // Check and upload menu image
    if ($menu && $menu->isValid()) {
        $images['menu'] = $menu->getName();
        $model->uploadimages($menu); // Call uploadimages from the model
    } else {
        // Keep the existing menu image name if no new file is uploaded
        $images['menu'] = $setting->menu;
    }



    // Update the settings in the database with the new image names and the new name
    $model->updateSettings($name, $images['icon'], $images['menu']); // Corrected parameter usage

    return redirect()->to('home/Website'); // Redirect after processing
}

public function filteruserlog() {
    $model = new M_z(); // Make sure to replace with your actual model for logs
    $idUser = $this->request->getGet('id_user'); // Get the selected user ID from the query string

    // Fetch users for the filter dropdown
    $data['users'] = $model->tampil('user'); // Adjust this method based on how you retrieve users

    // Get logs based on user filter
    if ($idUser) {
        $where = array('activity.id_user' => $idUser, 'activity.delete' => Null);
        $data['log'] = $model->join1where1('activity','user','activity.id_User = user.id_user',$where); // Method to get logs for a specific user
    } else {
        $data['log'] = $model->join1('activity','user','activity.id_User = user.id_user'); // Fetch all logs if no user is selected
    }
    $data['logss'] = $model->join1('activity','user','activity.id_User = user.id_user'); // Fetch all logs if no user is selected
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        if ($data['menu']->data == 1) {
    echo view('header',$data);
    echo view('menu',$data);
    echo view('activitylog', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function LogActivity(){
    $model = new M_z();
    $where1 = array('activity.delete' => '0');
    $data['log'] = $model->join1where1('activity','user','activity.id_user = user.id_user',$where1);
    $data['menus'] = $model->tampil('menu');
    $data['users'] = $model->tampil('user');
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        $this->log_activity('User membuka Setting Website');
        if ($data['menu']->data == 1) {
    echo view('header', $data);
    echo view('menu', $data);
    echo view('activitylog', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function Website(){
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        $this->log_activity('User membuka Setting Website');
        if ($data['menu']->setting == 1) {
    echo view('header', $data);
    echo view('menu', $data);
    echo view('website', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function MenuManage(){
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        $this->log_activity('User membuka Manage Menu');
        if ($data['menu']->setting == 1) {
    echo view('header', $data);
    echo view('menu', $data);
    echo view('menu_manage', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function TambahRS(){
    $model = new M_z();
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        $this->log_activity('User membuka Manage Menu');
    echo view('header', $data);
    echo view('menu', $data);
    echo view('t_rs');
    echo view('footer');
}

public function aksi_TambahRS()
{
    $model = new M_z(); // Asumsikan model `M_z` menangani operasi database
    $nama_rs = $this->request->getPost('nama_rs');
    $negara = $this->request->getPost('negara');
    $kota = $this->request->getPost('kota');
    $nomor_surat = $this->request->getPost('nomor_surat');
    $jenis_surat = $this->request->getPost('jenis_surat');
    $file = $this->request->getFile('foto');

    // Validasi file upload
    $uploadedFileName = null;
    if ($file && $file->isValid()) {
        $uploadedFileName = $file->getName();
        $file->move(FCPATH . 'rs', $uploadedFileName); // Mengunggah file ke folder `uploads`
    }

    // Data yang akan disimpan
    $data = [
        'nama_rs' => $nama_rs,
        'foto' => $uploadedFileName,
        'negara' => $negara,
        'kota' => $kota,
        'nomor_surat' => $nomor_surat,
        'jenis_surat' => $jenis_surat,
        'created_by' => session()->get('id'),
        'id_user' => session()->get('id')
    ];

    // Menyimpan data ke tabel rumah sakit
    $model->tambah('rumah_sakit', $data);
// print_r($data);
    // Redirect ke halaman utama dengan pesan sukses
    return redirect()->to('home')->with('message', 'Rumah sakit berhasil ditambahkan.');
}

public function PerbandinganRS(){
    $model = new M_z();
    $where = array('deleted' => null);
        $data['all_rs'] = $model->tampilwhere('rumah_sakit', $where);
        $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    echo view('header',$data);
    echo view('menu',$data);
    echo view('perbandingan', $data);
    echo view('footer');
}

public function compareRS()
{
    // Log atau tampilkan data yang diterima
    log_message('debug', 'POST Data: ' . json_encode($this->request->getPost()));

    $id_rs1 = $this->request->getPost('id_rs1');
    $id_rs2 = $this->request->getPost('id_rs2');

    if (!$id_rs1 || !$id_rs2) {
        log_message('error', 'Missing hospital IDs: id_rs1=' . $id_rs1 . ', id_rs2=' . $id_rs2);

        return $this->response->setJSON([
            'status' => 'error',
            'message' => 'Please select both hospitals.'
        ])->setStatusCode(400);
    }

    // Fetch hospital data
    $model = new M_z();
    $rs1 = $model->getDetailRS($id_rs1);
    $rs2 = $model->getDetailRS($id_rs2);

    log_message('debug', 'Data for RS1: ' . json_encode($rs1));
    log_message('debug', 'Data for RS2: ' . json_encode($rs2));

    if (!$rs1 || !$rs2) {
        return $this->response->setJSON([
            'status' => 'error',
            'message' => 'Data not found for one or both hospitals.'
        ])->setStatusCode(400);
    }

    // Return data
    return $this->response->setJSON([
        'status' => 'success',
        'rs1' => $rs1,
        'rs2' => $rs2
    ]);
}

public function RS(){
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        $this->log_activity('User membuka Setting Website');
        $where7 = array('deleted' => Null);
        $data['rs'] = $model->tampilwhere('rumah_sakit', $where7);
        if ($data['menu']->data == 1) {
    echo view('header', $data);
    echo view('menu', $data);
    echo view('rs', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function RRS(){
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        $this->log_activity('User membuka Setting Website');
        $where7 = "deleted is not null";
        $data['rs'] = $model->tampilwhere('rumah_sakit', $where7);
        if ($data['menu']->data == 1) {
    echo view('header', $data);
    echo view('menu', $data);
    echo view('rrs', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function RumahSakit(){
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        $this->log_activity('User membuka Setting Website');
        $where7 = array('deleted' => Null);
        $where8 = array('id_user' => session()->get('id'));
        $data['rs'] = $model->tampilwhere2('rumah_sakit', $where7, $where8);
        if (session()->get('level')) {
    echo view('header', $data);
    echo view('menu', $data);
    echo view('rs', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function tambah_penyakit()
{
    $model = new M_z();
    $id = $this->request->getPost('id_rs');
    $nama_penyakit = $this->request->getPost('nama_penyakit');
    $biaya_penyakit = $this->request->getPost('biaya_penyakit');

    // Validasi input
    if (empty($nama_penyakit) || empty($biaya_penyakit)) {
        return $this->response->setJSON(['status' => 'error', 'message' => 'Semua field wajib diisi.']);
    }

    // Insert ke database
    $data = [
        'id_rs' => $id,
        'nama_penyakit' => $nama_penyakit,
        'biaya_penyakit' => $biaya_penyakit,
    ];
    $model->tambah('daftar_penyakit', $data);

    // Ambil ID penyakit yang baru ditambahkan
    $id_penyakit = $model->InsertID();

    return $this->response->setJSON([
        'status' => 'success',
        'penyakit' => [
            'id_penyakit' => $id_penyakit,
            'nama_penyakit' => $nama_penyakit,
            'biaya_penyakit' => $biaya_penyakit,
            'id_rs' => $id
        ]
    ]);
}




public function editrs($id){
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        $this->log_activity('User membuka Setting Website');
        $where7 = array('id_rs' => $id);
        $data['rs'] = $model->getwhere('rumah_sakit', $where7);
        if ($data['menu']->setting == 1) {
    echo view('header', $data);
    echo view('menu', $data);
    echo view('detailrs', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function detailrs($id){
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        $this->log_activity('User membuka Setting Website');
        $where7 = array('id_rs' => $id);
        $data['rs'] = $model->getwhere('rumah_sakit', $where7);
        $where7 = array('id_rs' => $id);
        $data['penyakit'] = $model->tampilwhere('daftar_penyakit', $where7);
        if ($data['menu']->setting == 1) {
    echo view('header', $data);
    echo view('menu', $data);
    echo view('details', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function edit_penyakit($id){
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        $this->log_activity('User membuka Setting Website');
        $where7 = array('id_penyakit' => $id);
        $data['penyakit'] = $model->getwhere('daftar_penyakit', $where7);
    echo view('header', $data);
    echo view('menu', $data);
    echo view('e_penyakit', $data);
    echo view('footer');

}

public function aksi_edit_penyakit()
{
    $model = new M_z(); // Inisialisasi model (sesuaikan dengan model Anda)

    // Ambil data dari form
    $nama_penyakit = $this->request->getPost('nama_penyakit');
    $biaya_penyakit = str_replace('.', '', $this->request->getPost('biaya_penyakit')); // Hilangkan format IDR (pemisah ribuan)
    $id = $this->request->getPost('id');
    // Siapkan array data untuk update
    $data = [
        'nama_penyakit' => $nama_penyakit,
        'biaya_penyakit' => $biaya_penyakit,
    ];

    // Tentukan kondisi update berdasarkan ID penyakit
    $where = array('id_penyakit' => $id);
    $result = $model->getWhere('daftar_penyakit', $where);
    $id_rs = $result->id_rs;
    // Lakukan update data menggunakan model
    if ($model->edit('daftar_penyakit', $data, $where)) {
        return redirect()->to('home/detailrs/'.$id_rs)->with('message', 'Data penyakit berhasil diperbarui.');
    } else {
        return redirect()->back()->with('error', 'Gagal memperbarui data penyakit.');
    }
}

public function aksi_edit_rs()
{
    // Load model untuk mengakses database
    $rsModel = new M_z();
    $id = $this->request->getPost('id');

    // Ambil data dari form
    $data = [
        'nama_rs' => $this->request->getPost('nama_rs'),
        'negara' => $this->request->getPost('negara'),
        'kota' => $this->request->getPost('kota'),
        'nomor_surat' => $this->request->getPost('nomor_surat'),
        'jenis_surat' => $this->request->getPost('jenis_surat'),
    ];
    $where = ['id_rs' => $id];

    // Ambil data rumah sakit yang ada di database sebelum edit
    $existingData = $rsModel->getWherearray('rumah_sakit', $where);

    // Cek apakah data baru berbeda dengan data yang ada di database
    if ($existingData != $data) {
        // Ambil data rumah sakit yang ada di backup
        $backupData = [
            'id_rs' => $existingData['id_rs'],
            'nama_rs' => $existingData['nama_rs'],
            'negara' => $existingData['negara'],
            'kota' => $existingData['kota'],
            'nomor_surat' => $existingData['nomor_surat'],
            'jenis_surat' => $existingData['jenis_surat'],
            'foto' => $existingData['foto']
        ];

        // Cek apakah data sudah ada di tabel rumah_sakit_backup
        $backupExists = $rsModel->getWherearray('rumah_sakit_backup', ['id_rs' => $id]);

        if ($backupExists) {
            // Jika data sudah ada, lakukan edit (update) di tabel rumah_sakit_backup
            $rsModel->edit('rumah_sakit_backup', $backupData, ['id_rs' => $id]);
        } else {
            // Jika data belum ada, lakukan insert ke tabel rumah_sakit_backup
            $rsModel->tambah('rumah_sakit_backup', $backupData);
        }
    }

    // Cek apakah ada file yang diunggah
    $file = $this->request->getFile('foto');
    if ($file && $file->isValid() && !$file->hasMoved()) {
        // Tentukan lokasi upload
        $uploadPath = FCPATH . 'rs/';

        // Pastikan folder ada
        if (!is_dir($uploadPath)) {
            mkdir($uploadPath, 0777, true);
        }

        // Generate nama file baru
        $newFileName = $file->getRandomName();
        $file->move($uploadPath, $newFileName);

        // Tambahkan nama file ke data
        $data['foto'] = $newFileName;

        // Hapus file lama jika ada
        if (isset($existingData['foto']) && file_exists($uploadPath . $existingData['foto'])) {
            unlink($uploadPath . $existingData['foto']);
        }
    }

    // Update data di database
    if ($rsModel->edit('rumah_sakit', $data, $where)) {
        // Set pesan sukses
        session()->setFlashdata('message', 'Data rumah sakit berhasil diperbarui.');
    } else {
        // Set pesan error
        session()->setFlashdata('error', 'Terjadi kesalahan saat memperbarui data.');
    }

    // Redirect ke halaman data_rs
    return redirect()->to(base_url('home/rs'));
}

public function delete_penyakit($id){
    $model = new M_z();
    $where = array('id_penyakit' => $id);
    $result = $model->getWhere('daftar_penyakit', $where);
    $id_rs = $result->id_rs;
    $model->hapus('daftar_penyakit', $where);

    return redirect()->to('home/detailrs/'.$id_rs);
}

public function SDRS($id){
    $model = new M_z();
    $data = [
        'deleted' => date('Y-m-d H:i:s')
    ];
    $where = array('id_rs' => $id);
    $model->edit('rumah_sakit', $data, $where);
    return redirect()->to('home/rs');
}

public function RDRS($id){
    $model = new M_z();
    $data = [
        'deleted' => NULL
    ];
    $where = array('id_rs' => $id);
    $model->edit('rumah_sakit', $data, $where);
    return redirect()->to('home/RRS');
}
public function DRS($id){
    $model = new M_z();
    $where = array('id_rs' => $id);
    $model->hapus('rumah_sakit', $where);
    return redirect()->to('home/RRS');
}
public function reseteditrs($id){
    $model = new M_z();


    $this->log_activity('User Restore Update User');
    $model->restoreProduct('rumah_sakit_backup', 'id_rs', $id);

    return redirect()->to('home/RS');
}
public function User(){
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        $this->log_activity('User membuka Setting Website');
        $where7 = array('deleted' => Null);
        $data['user'] = $model->join1where1('user', 'level','user.level = level.id_level',$where7);
        if ($data['menu']->data == 1) {
    echo view('header', $data);
    echo view('menu', $data);
    echo view('user', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function t_user(){
    $model = new M_z();
    $data['level'] = $model->tampil('level');
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        $this->log_activity('User membuka Form User');
        if ($data['menu']->data == 1) {
    echo view('header', $data);
    echo view('menu', $data);
    echo view('t_user', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}
public function aksi_t_user() {
    $model = new M_z();

    // Retrieve form data
    $username = $this->request->getPost('username');
    $email = $this->request->getPost('email');
    $level = $this->request->getPost('level');

    // Additional validation
    if (empty($username) || empty($email) || empty($level)) {
        return redirect()->back()->with('error', 'All fields are required.');
    }

    // Prepare data array for insertion
    $data = [
        'username' => $username,
        'password' => md5('sph'),
        'email' => $email,
        'level' => $level,
        'created_at' => date('Y-m-d H:i:s'),
    ];

    if ($model->tambah('user', $data)) {
        return redirect()->to('home/User')->with('message', 'User added successfully.');
    } else {
        return redirect()->back()->with('error', 'Failed to add user.');
    }
}

public function RUser(){
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        $this->log_activity('User membuka Setting Website');
        $where7 = "deleted is not null";
        $data['user'] = $model->join1where1('user', 'level','user.level = level.id_level',$where7);
        if ($data['menu']->data == 1) {
    echo view('header', $data);
    echo view('menu', $data);
    echo view('ruser', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function SDuser($id){
    $model = new M_z();
    $data = [
        'deleted' => date('Y-m-d H:i:s')
    ];
    $where = array('id_user' => $id);
    $model->edit('user', $data, $where);
    return redirect()->to('home/user');
}

public function RDuser($id){
    $model = new M_z();
    $data = [
        'deleted' => NULL
    ];
    $where = array('id_user' => $id);
    $model->edit('user', $data, $where);
    return redirect()->to('home/RUser');
}

public function Duser($id){
    $model = new M_z();
    $where = array('id_user' => $id);
    $model->hapus('user',  $where);
    return redirect()->to('home/RUser');
}
public function EditUser($id){
    $model = new M_z();
    $data['menus'] = $model->tampil('menu');
    $where5 = array('id_setting' => 1);
    $data['setting'] = $model->getwhere('setting', $where5);
    $where6 = array('level' => session()->get('level'));
        $data['menu'] = $model->getwhere('menu', $where6);
        $this->log_activity('User membuka Setting Website');
        $where7 = array('id_user' => $id);
        $data['user'] = $model->getwhere('user', $where7);
        $data['level'] = $model->tampil('level');
        if ($data['menu']->data == 1) {
    echo view('header', $data);
    echo view('menu', $data);
    echo view('e_user', $data);
    echo view('footer');
}else{
    return redirect()->to('home/login');
}
}

public function aksi_edit_user(){
    {
        $model = new M_z();
    
        // Retrieve form data
        $username = $this->request->getPost('username');
        $email = $this->request->getPost('email');
        $level = $this->request->getPost('level');
        $password = $this->request->getPost('password'); // Optional field for password
        $id = $this->request->getPost('id');
    
        // Additional validation
        if (empty($username) || empty($email) || empty($level)) {
            return redirect()->back()->with('error', 'All fields are required.');
        }
    
        // Prepare data array for update
        $data = [
            'username' => $username,
            'email' => $email,
            'level' => $level,
        ];
    
        // Only update the password if a new password is provided
        if (!empty($password)) {
            $data['password'] = md5($password); // Encrypt the new password
        }
        $where = ['id_user' => $id];
    
        // Ambil data user yang ada di database
        $existingData = $model->getWherearray('user', $where);
    
        // Cek apakah data baru berbeda dengan data yang ada di database
        if ($existingData != $data) {
            // Backup data sebelum perubahan
            $backupData = [
                'id_user' => $existingData['id_user'],
                'username' => $existingData['username'],
                'email' => $existingData['email'],
                'level' => $existingData['level'],
                'password' => $existingData['password'], // Menyertakan password lama untuk backup
            ];
    
            // Cek apakah data sudah ada di tabel user_backup
            $backupExists = $model->getWherearray('user_backup', ['id_user' => $id]);
    
            if ($backupExists) {
                // Jika data sudah ada, lakukan edit (update) di tabel user_backup
                $model->edit('user_backup', $backupData, ['id_user' => $id]);
            } else {
                // Jika data belum ada, lakukan insert ke tabel user_backup
                $model->tambah('user_backup', $backupData);
            }
        }
    
        // Update data di tabel user
        if ($model->edit('user', $data, $where)) {
            return redirect()->to('home/user')->with('message', 'User updated successfully.');
        } else {
            return redirect()->back()->with('error', 'Failed to update user.');
        }
    }
    
}
public function resetpassword($id){
    $model = new M_z();
    $data = [
        'password' => md5('sph')
    ];
    $where = array('id_user' => $id);
    $model->edit('user', $data, $where);
    return redirect()->to('home/User');
}

public function resetedituser($id)
{
    $model = new M_z();

    // Get the current data from the barang table
    $currentData = $model->getWherearray('user', ['id_user' => $id]);

    // Get the backup data from the barang_backup table
    $backupData = $model->getWherearray('user_backup', ['id_user' => $id]);

    // Restore product data from backup
    $this->log_activity('User Restore Update User');
    $model->restoreProduct('user_backup', 'id_user', $id);

    return redirect()->to('home/User');
}
}
