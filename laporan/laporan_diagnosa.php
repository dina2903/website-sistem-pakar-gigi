<style type="text/css">
<!--
.style1 {font-family: Georgia, "Times New Roman", Times, serif}
-->
</style>
<body onLoad="print()">
<?php
session_start();
error_reporting(0);
require_once "../koneksi.php";

?>
<h3 align="center" style="font-family:arial;"></h3>
<td><img src="../gambar/logo3.png"</td><br><br>

<?php
$id=@$_GET[id];
if($id==''){


	if($_SESSION['id_tipe'] == 1) {
	$kueri = mysqli_query($koneksi,"select * from tbhasil_konsultasi,penyakit where tbhasil_konsultasi.id_penyakit=penyakit.id_penyakit;");
	}
	else{
	$kueri = mysqli_query($koneksi,"select * from tbhasil_konsultasi,penyakit where tbhasil_konsultasi.id_penyakit=penyakit.id_penyakit and tbhasil_konsultasi.username='{$_SESSION['username']}' group by tbhasil_konsultasi.tgl_hasil;");
	}
	
	
	}else{
	if($_SESSION['id_tipe'] == 1) {
	$kueri = mysqli_query($koneksi,"select * from tbhasil_konsultasi,penyakit where tbhasil_konsultasi.id_penyakit=penyakit.id_penyakit and tbhasil_konsultasi.tgl_hasil like '$id%' group by tbhasil_konsultasi.tgl_hasil;");
	}
	else{
	$kueri = mysqli_query($koneksi,"select * from tbhasil_konsultasi,penyakit where tbhasil_konsultasi.id_penyakit=penyakit.id_penyakit and tbhasil_konsultasi.username='{$_SESSION['username']}' and tbhasil_konsultasi.tgl_hasil like '$id%' group by tbhasil_konsultasi.tgl_hasil;");
	}
	}
$no=1;
?>

<br>
<table class="table table-condensed table-bordered" width="100%" border="1">
<tr class="info">
	<td><b>No</b></td>
<?php
if($_SESSION['id_tipe'] == 1) echo "<td><b>Username</b></td>";
?>
	<td><b>Nama penyakit</b></td>
	<td><b>Waktu</b></td>
</tr>
<?php
if(mysqli_num_rows($kueri) < 1) echo "<tr><td class='text-center' colspan=3><strong>Data Hasil Konsultasi Kosong...</strong></td></tr>";
		else {
			while ($isi=mysqli_fetch_array($kueri,MYSQLI_BOTH)){
				echo "
				<tr>
				<td>$no</td>";
				if($_SESSION['id_tipe'] == 1) echo "<td>{$isi['username']}</td>";
				echo "
				<td>{$isi['nm_penyakit']}</td>
				<td>{$isi['tgl_hasil']}</td>
				</tr>
				";
				$no++;
				}
			}
?>
</table>

<?php
echo "<table align='right'><br>";
$tgl = date('d-m-Y');
echo "<tr><td>Sijunjung, $tgl</tr></td>";

if($_SESSION['id_tipe'] == 1) {
echo "<tr><td>Dokter Spesialis Paru</tr></td>";
echo "<tr><td><em>&nbsp;</em></tr></td>";
echo "<tr><td><em>&nbsp;</em></tr></td>";
echo "<tr><td>dr. Yeni Putri, Sp.P.</tr></td>";
	}
	else{
	echo "<tr><td>Member,</tr></td>";
echo "<tr><td><em>&nbsp;</em></tr></td>";
echo "<tr><td><em>&nbsp;</em></tr></td>";
echo "<tr><td>$_SESSION[username]</tr></td>";	
	}

echo "</table>";
?>

