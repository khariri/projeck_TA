<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Report_act extends CI_Model {
	
	public function report_pemasukan_barang($tgl_awal,$tgl_akhir){
		$sql = "SELECT * FROM tb_barang_masuk WHERE tgl_masuk BETWEEN '$tgl_awal' AND '$tgl_akhir'";
		$query = $this->db->query($sql);
		return $query;	
	}
	
	public function report_transaksi($tgl_awal,$tgl_ahir){
		$sql = "SELECT * FROM tb_pemesanan WHERE tgl_pemesanan BETWEEN '$tgl_awal' AND '$tgl_akhir'";
		$query = $this->db->query($sql);
		return $query;
	}
}
