`<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class C__setting extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		get_breadcrumb();	
		$this->load->model('M__app');
		access(1);
	}

	public function index()
	{
		$data['title']       ="Setting Toko";
		$data['active']      ="shop";
		$data['active_open'] ="setting";
		$data['get']         =$this->M__app->getdata('setting')->row_array();
		$data['content']     ="setting/index.php";

		$this->breadcrumb->append_crumb('Setting Toko', site_url('setting.aspx'));
		$this->load->view('backend/template.php',$data);	
	}

	public function edit()
	{
		$data['title']       ="Setting Data Toko | Setting Toko";
		$data['active']      ="shop";
		$data['active_open'] ="setting";
		$data['get']         =$this->M__app->getdata('setting')->row_array();
		$data['content']     ="setting/edit.php";

		$this->breadcrumb->append_crumb('Setting Toko', site_url('setting.aspx'));
		$this->breadcrumb->append_crumb('Setting Data Toko', site_url('setting.aspx'));
		$this->load->view('backend/template.php',$data);	
	}


	public function update()
	{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('shortname', 'shortname', 'trim|required|max_length[20]');
		$this->form_validation->set_rules('motto', 'motto', 'trim|required|max_length[100]');
		$this->form_validation->set_rules('location', 'location', 'trim|required|max_length[120]');
		$this->form_validation->set_rules('manager', 'manager', 'trim|required');
		$this->form_validation->set_rules('email', 'email', 'trim|required|valid_email');

		if($this->form_validation->run() == FALSE) 
		{
			$this->session->set_flashdata('error','Data Gagal Di Validasi, Silahkan Cek Data Lagi!');
			redirect('setting.aspx');
		} 
		else 
		{
			$get=$this->M__app->getdata('setting')->row_array();
			if($_FILES['logo']['name']=="")
			{
				$logo=$get['logo_shop'];
			}
			else
			{
				$logo=compress_logo('logo','Logo');
				unlink('uploads/'.$get['logo_shop']);
			}
			$data=array(
				"shortname_shop"        =>filter($this->input->post('shortname')),
				"longname_shop"         =>filter($this->input->post('longname')),
				"motto_shop"            =>filter($this->input->post('motto')),
				"location_shop"         =>filter($this->input->post('location')),
				"name_manage"           =>strtoupper(filter($this->input->post('manager'))),
				"wa_contact"            =>filter($this->input->post('wa')),
				"phone_contact"         =>filter($this->input->post('phone')),
				"email_shop"            =>$this->input->post('email'),
				"logo_shop"             =>$logo,
				"pos"                   =>$this->input->post('pos'),
				"jne"                   =>$this->input->post('jne'),
				"tiki"                  =>$this->input->post('tiki'),
				"facebook"              =>$this->input->post('facebook'),
				"twitter"               =>$this->input->post('twitter'),
				"google"                =>$this->input->post('google'),
				"instagram"             =>$this->input->post('instagram'),
				"youtube"               =>$this->input->post('youtube'),
			);

			$this->M__app->update_setting('setting',$data);
			$this->session->set_flashdata('success','Data Toko Berhasil Di Perbarui');
			redirect('edit_setting.aspx');
		}
	}


	public function delete_options()
	{
		$id=$this->input->post('id');

		for ($i=0; $i < count($id); $i++)
		{
			$this->M__app->delete('options','id',$id[$i]);
		}

		$this->session->set_flashdata('success','Data Tambahan Toko Berhasil Di Hapus');
		redirect('edit_setting_tambahan.aspx');
	}

	public function skin()
	{
		$data['title']       ="Skin Halaman";
		$data['active']      ="skin";
		$data['active_open'] ="setting";
		$data['skin']        =$this->M__app->getdata('skin')->result();
		$data['content']     ="skin/index.php";
		$this->breadcrumb->append_crumb('Skin Halaman', site_url('skin.aspx'));
		$this->load->view('backend/template-skin.php',$data);	
	}

	public function skin_update()
	{
		$this->load->library('form_validation');
		$this->form_validation->set_rules('id_skin', 'id_skin', 'trim|required|max_length[2]');
		if($this->form_validation->run() == FALSE) 
		{
			$this->session->set_flashdata('error','Data Gagal Di Validasi, Silahkan Cek Data Lagi!');
			redirect('skin.aspx');
		} 
		else 
		{
			$status=array(
				"skin_status"=>0,
			);
			$this->M__app->update_skin('skin',$status);
			$data=array(
				"skin_status"=>1,
			);
			$this->M__app->update('skin',$data,'id_skin',$this->input->post('id_skin'));
			$this->session->set_flashdata('success','Tema Toko Anda telah diperbarui, silahkan cek halaman depan toko anda!');
			redirect('skin.aspx');
		}
	}
}

/* End of file  */
/* Location: ./application/controllers/ */