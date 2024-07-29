<?php
session_start();
require_once "koneksi.php";
include "library.php";
head(':: Welcome To Sistem Pakar ::',1);
style(1); ?>
<body>
<?php
menu(1);
?>
<?php
include "template/kiri.php";
?>

<div style=" font-family: comic sans ms;" >
<h1><center><small></small></center></h1>
  <p align='justify'>
<center><strong></strong></center>
  <p align='justify'>
    
  <h4><strong>Salam Kesehatan !</strong></h4>
<br/>
<strong>Kami senang menyambut Anda di Sistem Pakar Penyakit Gigi, platform yang didedikasikan untuk membantu Anda memahami dan merawat kesehatan gigi dan mulut Anda dengan lebih baik. Sistem ini dirancang dengan memanfaatkan teknologi canggih dan pengetahuan dari para ahli kesehatan gigi untuk memberikan informasi yang akurat, diagnosis awal, dan rekomendasi perawatan berdasarkan gejala yang Anda alami.<br/>
<br/>
Dalam pengumpulan data saya mengambil data dari dokter spesialis gigi bernama drg, Agung Diego, Sp.KG. di Klinik GUMI DENTAL CARE, yang beralamat di jalan Sultan Syahrir No.37 Seberang Padang, Kota Padang, Sumatera Barat. 
<br/>
<br/>
Kemampuan dibidang gigi oleh dr. spesialis gigi.
</strong>
</p>
</div>

<?php
include "template/kanan.php";
include "template/footer.php";
?>
