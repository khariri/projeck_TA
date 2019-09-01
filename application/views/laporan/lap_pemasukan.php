<div class="container-fluid">
			<div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>
                                Report Barang Masuk
                            </h2>
                        </div>
                        <div class="body">
                            <form action="<?=$action?>" method="get">
                                <div class="row clearfix">
									<div class="col-lg-1 col-md-1 col-sm-1 col-xs-1  form-control-label">
										<label for="SD">Periode  :</label>
                                    </div>
                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6">
                                        <div class="form-group">
											<div class="input-group form-line date form_date" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
												<input class="form-control" size="10" type="text" name="tgl_awal" placeholder="Dari ..">
								 <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
											</div>
										</div>
                                    </div>
									
                                    <div class="col-lg-3 col-md-3 col-sm-3 col-xs-5">
                                        <div class="form-group">
											<div class="input-group form-line date form_date" data-date="" data-date-format="yyyy-mm-dd" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
												<input class="form-control" size="10" type="text" name="tgl_akhir" placeholder="Sampai ..">
								 <span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
											</div>
										</div>
                                    </div>
                                    <div class="col-lg-5 col-md-5 col-sm-5 col-xs-12">
                                        <input type="checkbox" id="remember_me_4" class="filled-in">
                                        <input type="submit" class="btn btn-primary btn-lg m-l-15 waves-effect" value="SEARCH">
                                    </div>
                                </div>
                            </form>
                        </div>
						<div class="body">
							<?php 
									if(isset($data)){
							?>
							<div class="table-responsive">	
								<table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>Nama Produk</th>
                                        <th>Tanggal Masuk</th>
                                        <th>Jumlah</th>
                                    </tr>
                                </thead>
                                <tbody>
									<?php
										$no = 1;
										foreach($data->result_array() as $data_dtl){									
										?>
										<tr>
											<th scope="row"><?= $data['nama_produk'] ;?></th>
											<td><?= $data_dtl['tgl_masuk']; ?></td>
											<td><?= $data_dtl['jumlah'];?></td>
										</tr>
										<?php 
											$no++;
										}
									?>
                                </tbody>
                            	</table>								
                            </div>
						<?php
							} //tutup isset
							?>
                        </div>
						</div>
                    </div>
                </div>
            </div>
</div>
