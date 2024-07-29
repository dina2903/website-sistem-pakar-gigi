<body onLoad="print()">

<td><img src="gambar/logo2.png"</td><br><br><br>
<?php

error_reporting(0);
include "koneksi.php";
$h=mysqli_query($koneksi,"select * from tbhasil_konsultasi where id_hasil='$_GET[id]'");
$hasil=mysqli_fetch_array($h);
$quser=mysqli_query($koneksi,"select * from tbuser where id_user='$_GET[id_u]'");
$user=mysqli_fetch_array($quser);

echo"<strong> Data Diri :</strong>";
echo"<br><table class='table table-condensed table-bordered' border=1>
<tr><th>Tgl. Konsultasi</th><td>".date('d-m-Y')."</td></tr>
<tr><th>Nama Lengkap</th> <td>$user[nm_pengguna] </td></tr>
<tr><th>Nohp</th> <td>$user[nohp] </td></tr>
<tr><th>Email</th> <td>$user[email] </td></tr>
</table><br>";
echo"<strong></strong>

<tr><th></th> <th></th></tr>";
$s="$_GET[gjl]";
$pecahgp=explode(",",$s);
foreach($pecahgp as $gejd => $value2){

	$b=mysqli_fetch_array($qb);
	
}
echo"</table><br>";

$p=mysqli_query($koneksi,"select * from penyakit order by id_penyakit");
while($rp=mysqli_fetch_array($p)){
	$atas=0;
	$bawah=0;
$jb=mysqli_query($koneksi,"select * from rule where id_penyakit='$rp[id_penyakit]'");
$bawah=mysqli_num_rows($jb);
	$pecahgp=explode(",",$s);
foreach($pecahgp as $gejd => $value){
	$qrule=mysqli_query($koneksi,"select * from rule where id_penyakit='$rp[id_penyakit]'");
	while($rule=mysqli_fetch_array($qrule)){
		if($value=="$rule[id_gejala]"){
			$atas=$atas+1;
		}
	}
}	

$idk="$rp[id_penyakit]";
$hp[$idk]=$atas/$bawah;
//echo"$atas/$bawah<br/>";
}

$max=max($hp);
$p2=mysqli_query($koneksi,"select * from penyakit order by id_penyakit");
while($h2=mysqli_fetch_array($p2)){
	$idk="$h2[id_penyakit]";
	
	if($max==$hp[$idk] and $max==1){
		echo"<div align='justify'>Hasil Diagnosa : Anda Terdiagnosa Penyakit $h2[nm_penyakit]</br><br>";
		echo"Keterangan : $h2[keterangan]</div></br>";
		//mysqli_query($koneksi,"insert into tbhasil_konsultasi values('','$_SESSION[username]','$h2[id_penyakit]',now(),'$s')");
		
		$terdeteksi="ya";
	}
}

if($terdeteksi!="ya"){
	echo"penyakit tidak terdeteksi!!";
}

?>
</body>
</table>

<?php
echo "<table align='right'><br>";
$tgl = date('d-m-Y');
echo "<tr><td>Sijunjung, $tgl</tr></td>";

if($_SESSION['id_tipe'] == 1) {
echo "<tr><td>Dokter Spesialis Paru</tr></td>";
echo "<tr><td><em>&nbsp;</em></tr></td>";
echo "<tr><td><em>&nbsp;</em></tr></td>";
echo "<tr><td><em>&nbsp;</em></tr></td>";
echo "<tr><td>dr. Yeni Putri, Sp.P.</tr></td>";
	}
	else{
echo "<tr><td>Dokter Spesialis Paru</tr></td>";
echo "<tr><td><em>&nbsp;</em></tr></td>";
echo "<tr><td><em>&nbsp;</em></tr></td>";
echo "<tr><td>dr. Yeni Putri, Sp.P.</tr></td>";	
	}

echo "</table>";
?>
