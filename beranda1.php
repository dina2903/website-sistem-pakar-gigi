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
include "sidebar/kiri1a.php";
?>

<div style=" font-family: comic sans ms;" >
<h1><center><small></small></center></h1>
  <p align='justify'>
<center><strong></strong></center>
  <p align='justify'>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<h1><strong>==========SELAMAT DATANG ADMIN========== </strong></h1>
<br/>
</strong>
</p>
</div>

<?php
include "template/kanan.php";
include "template/footer.php";
?>
