<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {
	 public function __construct(){
            parent::__construct();

            $user_id=$this->session->userdata('user_id');
            $this->load->model('common_model','mcommon');
			$this->load->model('home_model');
           $this->load->library('session');
           $this->load->helper('url');
           
        }

	/**
	 * Index Page for this controller.
	 *
	 * Maps to the following URL
	 * 		http://example.com/index.php/welcome
	 *	- or -
	 * 		http://example.com/index.php/welcome/index
	 *	- or -
	 * Since this controller is set as the default controller in
	 * config/routes.php, it's displayed at http://example.com/
	 *
	 * So any other public methods not prefixed with an underscore will
	 * map to /index.php/welcome/<method_name>
	 * @see https://codeigniter.com/user_guide/general/urls.html
	 */
	public function index()
	{
		       

		 $data["category_list"]= $this->home_model->category_list();
		//  $content = $CI->parser->parse('include/admin_home', $data, true);
		// $this->load->view('base/header');
		$this->load->view('base/menu',$data);
		$this->load->view('home/home',$data);
		$this->load->view('base/footer',$data);
	}
	
}
