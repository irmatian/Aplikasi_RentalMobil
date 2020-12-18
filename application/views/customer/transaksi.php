<div class="container">
	<div class="card mx-auto" style="margin-top: 170px; width: 75%">
		<div class="card-header">
			Data Transaksi Anda
		</div>
		<div class="card-body">
			<table class="table table-bordered table-striped">
				<tr>
					<th>No</th>
					<th>Nama Customer</th>
					<th>Merk Mobil</th>
					<th>No Plat</th>
					<th>Harga Sewa</th>
					<th>Action</th>
				</tr>

				<?php $no=1; foreach($transaksi as $tr) : ?>
					<tr>
						<td><?php echo $no++ ?></td>
						<td><?php echo $tr->nama ?></td>
						<td><?php echo $tr->merk ?></td>
						<td><?php echo $tr->no_plat ?></td>
						<td>Rp. <?php echo number_format($tr->harga,0,',','.') ?></td>
						<td>
							
						</td>
					</tr>
				<?php endforeach; ?>
				
			</table>
		</div>
	</div>
</div>