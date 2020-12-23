<table style="width: 55%">
	<h2>Invoice Pembayaran Rental Mobil</h2>
		<?php foreach($transaksi as $tr) : ?>
			<tr>
				<td>Nama Customer</td>
				<td>:</td>
				<td><?php echo $tr->nama ?></td>
			</tr>

			<tr>
				<td>Merk Mobil</td>
				<td>:</td>
				<td><?php echo $tr->merk ?></td>
			</tr>

			<tr>
				<td>Tanggal Rental</td>
				<td>:</td>
				<td><?php echo $tr->tanggal_rental ?></td>
			</tr>

			<tr>
				<td>Tanggal Kembali</td>
				<td>:</td>
				<td><?php echo $tr->tanggal_kembali ?></td>
			</tr>

			<tr>
				<td>Biaya Sewa/Hari</td>
				<td>:</td>
				<td>Rp. <?php echo number_format($tr->harga,0,',','.') ?></td>
			</tr>

			<tr>
				<?php 
					$x = strtotime($tr->tanggal_kembali);
					$y = strtotime($tr->tanggal_rental);
					$jmlHari = abs(($x - $y)/(60*60*24));
				 ?>
				<td>Lama Hari Sewa</td>
				<td>:</td>
				<td><?php echo $jmlHari ?> Hari</td>
			</tr>

			<tr>
				<td style="font-weight: bold">Status Pembayaran</td>
				<td>:</td>
				<td><?php 
						if($tr->status_pembayaran == '0') {
						echo "<b>Belum Lunas</b>";
					}else {
						echo "<b>Lunas</b>";
						} 
					?>	
				</td>
			</tr>

			<tr style="font-weight: bold">
				<td>Jumlah Pembayaran</td>
				<td>:</td>
				<td>Rp. <?php echo number_format($tr->harga * $jmlHari,0,',','.') ?></td>
			</tr>

			<tr>
				<td>No Rekening Pembayaran</td>
				<td>:</td>
				<td>
					<ul>
						<li>Bank BCA 1299000011101</li>
						<li>Bank BRI 1000122122321</li>
						<li>Bank BNI 1900150122321</li>
					</ul>
				</td>
			</tr>
		<?php endforeach; ?>	
	</table>

	<script type="text/javascript">
		window.print();
	</script>