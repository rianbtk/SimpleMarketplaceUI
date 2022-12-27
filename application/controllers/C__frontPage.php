<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C__frontPage extends CI_Controller {

	public function __construct()
	{
		parent:: __construct();

		$config['tag_open']  = '<ul class="breadcrumb" style="border:0px solid #FFF;margin-left:70px;">';
		$config['tag_close'] = '</ul>';
		$config['li_open']   = '<li>';
		$config['li_close']  = '</li>';
		$config['divider']   = '<span class="divider"> &raquo; </span>';
		$this->breadcrumb->initialize($config);

		$this->load->model('M__app');
		$this->load->library(array('pagination','cart','form_validation'));
	}



	public function howtobuy()
	{
		$data['title']    ="Cara Pembelian";
		$data['active']   ="page";
		$data['content']  ='page/howtobuy.php';
		$data['category'] =$this->M__app->gradeone('category','state',1)->result();
		$data['page']     =$this->M__app->getdata('page')->row_array();

		$this->breadcrumb->append_crumb('Beranda', site_url());
		$this->breadcrumb->append_crumb('Cara Pembelian', site_url());

		$this->load->view('frontend/template',$data);
	}
	

	public function pricelist($off=0)
	{
		$data['title']    ="Daftar Harga | Beranda";
		$data['active']   ="pricelist";
		$data['content']  ='page/pricelist.php';
		$data['all']      =$this->M__app->getdatapage('product',$off)->result();
		$jumlah           =$this->M__app->gradeone('product','state_product',1)->num_rows();
		$data['category'] =$this->M__app->gradeone('category','state',1)->result();
		$data['page']     =halaman($jumlah,'pricelist.aspx',2);

		$this->breadcrumb->append_crumb('Beranda', site_url());
		$this->breadcrumb->append_crumb('Daftar Harga', site_url());

		$this->load->view('frontend/template',$data);
	}

}
