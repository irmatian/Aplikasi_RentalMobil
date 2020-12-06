<div class="container">
	
	<div class="card" style="margin-top: 150px;">
		<div class="card-body">
			<?php foreach ($detail as $dt) : ?>

				<div class="row ">
					<di class="col-md-6">
						<img width="550px" src="<?php echo base_url('assets/upload/'.$dt->gambar) ?>">
					</di>
					<di class="col-md-6">
						<table class="table">
							<tr>
								<th>Merk</th>
								<td><?php echo $dt->merk ?></td>
							</tr>
							<tr>
								<th>No Plat</th>
								<td><?php echo $dt->no_plat ?></td>
							</tr>
							<tr>
								<th>Warna</th>
								<td><?php echo $dt->warna ?></td>
							</tr>
							<tr>
								<th>Tahun</th>
								<td><?php echo $dt->tahun ?></td>
							</tr>
							<tr>
								<th>Status</th>
								<td>
									<?php if($dt->status == '1'){
										echo "Tersedia";
									}else{
										echo "Mobil sedang di rental";
									}

									?>	
								</td>
								
								
							</tr>
							<tr>
								<td></td>
								<td>
									<?php  
					                if ($dt->status == "0"){
					                  echo "<span class='btn btn-danger' disable>telah di sewa</span>";
					                }else{
					                  echo anchor('customer/rental/tambah_rental'.$dt->id_mobil, '<button class="btn btn-success">Rental Sekarang</button>');
					                }

					                ?>
								</td>
							</tr>
						</table>
					</di>
				</div>

			<?php endforeach; ?>
		</div>
	</div>
</div><br><br><br>