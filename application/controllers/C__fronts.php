<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C__fronts extends CI_Controller {

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

	public function refreshCart()
	{
		$this->load->view('frontend/cart_mobile.php');
	}

	public function refreshCartKecil()
	{
		$this->load->view('frontend/total_cart.php');
		$this->load->view('frontend/cart.php');
	}

	public function refreshRealCart()
	{
		$this->load->view('frontend/page/realcart.php');
	}

	public function tocart()
	{
		$id  =$this->input->post('id');
		$qty =filter($this->input->post('qty'));
		$in  =filter($this->input->post('information'));
		if($in!="")
		{
			$information='[Jumlah : '.$qty.'] &rarr; <b>'.$in.'</b><br>';
		}
		else
		{
			$information='';
		}

		$get=$this->M__app->gradeone('product','id_product',$id)->row_array();
		$this->form_validation->set_rules('qty', 'Jumlah','trim|required|numeric');
		$this->form_validation->set_rules('id', 'ID','trim|required');

		$cart=in_cart($id);

		if($cart)
		{
			$q=$cart['qty'];
		}
		else
		{
			$q=0;
		}

		if ($this->form_validation->run() == FALSE)
		{
			$this->output->set_content_type('application/json')->set_output(json_encode(array(
				"error"   =>"1",
				"title"   =>"Error!",
				"message" =>"Data gagal di masukkan cek kembali data anda!",
			)));
		}
		elseif(($get['stock_product']-$q)==0)
		{
			$this->output->set_content_type('application/json')->set_output(json_encode(array(
				"error"   =>"1",
				"title"   =>"Error!",
				"message" =>"Stok produk kosong!",
			)));
		}
		elseif(($qty+$q)>$get['stock_product'])
		{
			$this->output->set_content_type('application/json')->set_output(json_encode(array(
				"error"   =>"1",
				"title"   =>"Error!",
				"message" =>"Stok produk kurang dari permintaan!",
			)));
		}
		else
		{
			if($this->M__app->gradeone('product','id_product',$id)->num_rows()>0)
			{
				if($cart)
				{
					if ($get['state_discount']==1)
					{
						$price=$get['discount_product'];
					}
					else
					{
						$price=$get['price_product'];
					}
					$data = array(
				        'rowid'      	=> $cart['rowid'],
				        'slug'      	=> $get['slug_product'],
				        'qty'     		=> $cart['qty']+$qty,
				        'price'     	=> $cart['price']+($price*$qty),
				        'berat'     	=> $cart['berat']+($get['weight_product']*$qty),
				        'information'	=> $cart['information'].''.($information),
				    );
					$this->cart->update($data);
				}
				else
				{
					if ($get['state_discount']==1)
					{
						$price=$get['discount_product'];
					}
					else
					{
						$price=$get['price_product'];
					}

					$data = array(
						'id'          => date('YmdHis'),
						'id_product'  => $get['id_product'],
						'qty'         => $qty,
						'slug'      	=> $get['slug_product'],
						'price'       => $price*$qty,
						'berat'       => $get['weight_product']*$qty,
						'name'        => $get['name_product'],
						'information' => $information,
						'picture'     => $get['image_product'],
					);
					$this->cart->insert($data);
				}

				$this->output->set_content_type('application/json')->set_output(json_encode(array(
					"error"=>"0",
				)));
			}
		}
	}

	public function deletecart()
	{
		$this->cart->destroy();
	}

	public function removecart($id)
	{
		$data = array(
			'rowid'       => $id,
			'id'          => 0,
			'id_product'  => 0,
			'slug'        => 0,
			'qty'         => 0,
			'price'       => 0,
			'berat'       => 0,
			'name'        => 0,
			'information' => 0,
			'picture'     => 0,
	    );

		$this->cart->update($data);
		$this->output->set_content_type('application/json')->set_output(json_encode(''));
	}

	public function order()
	{
		$data['title']    ="Cek Pesanan";
		$data['active']   ="order";
		$data['content']  ='page/order.php';
		$data['category'] =$this->M__app->gradeone('category','state',1)->result();
		$data['bank']     =$this->M__app->getdatapaymentfront()->result();

		$this->breadcrumb->append_crumb('Beranda', site_url());
		$this->breadcrumb->append_crumb('Cara Pemesanan', site_url());

		$this->load->view('frontend/template',$data);
	}

	public function getOrder()
	{
		$id =filter($this->input->post('id'));
		$tr =$this->M__app->gradeone('transaction','kode_pembelian',$id);
		if($tr->num_rows()==0)
		{
			echo 0;
		}
		else
		{
			$trans           =$tr->row_array();
			$data['details'] =$this->M__app->getdetails($trans['id_transaction'])->result_array();
			$data['get']     =$trans;
			$data['pay']     =$this->M__app->getdatapaymentId($trans['payment_transaction'])->row_array();

			if(in_array($trans['city'], getarr(1)))
			{
	           $this->load->view('frontend/page/detailOrders.php',$data);
	        }
	        else
	        {
	            $this->load->view('frontend/page/detailOrder.php',$data);
	        }
		}
	}

	public function getValid()
	{
		$id =filter($this->input->post('id'));
		$tr =$this->M__app->gradeone('transaction','kode_pembelian',$id);

		if($tr->num_rows()==0)
		{
			echo 0;
		}
		else
		{
			$trans       =$tr->row_array();
			$data['get'] =$trans;
			$this->load->view('frontend/page/uploadBukti.php',$data);
		}
	}

	public function getValidEdit()
	{
		$id =filter($this->input->post('id'));
		$tr =$this->M__app->gradeone('transaction','kode_pembelian',$id);
		if($tr->num_rows()==0)
		{
			echo 0;
		}
		else
		{
			$trans       =$tr->row_array();
			$data['get'] =$trans;
			$this->load->view('frontend/page/uploadBuktiEdit.php',$data);
		}
	}

}