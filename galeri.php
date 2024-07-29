<?php
session_start();
require_once "koneksi.php";
include "library.php";
head(':: Welcome To Sistem Pakar ::',1);
style(1); ?>
<style type="text/css">
<!--
.style1 {font-family: Georgia, Times New Roman, Times, serif
}
-->
</style>
<body>
<?php
menu();
include "template/kiri.php";
?>
<h3 class="style1">Galeri</h3>
<td><img src="gambar/gusi.jpg" class='gm'</td> &nbsp; &nbsp; &nbsp;
<td><img src="gambar/gigiig.jpg" class='gm'</td><br><br>
<td><img src="gambar/berlubang.jpg" class='gm'</td> &nbsp; &nbsp; &nbsp;
<td><img src="gambar/abses.jpg" class='gm'</td><br><br>

<?php
include "template/kanan.php";
include "template/footer.php";
?>
