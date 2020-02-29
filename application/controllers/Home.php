<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_Home', 'M_H');
	}
	
	public function index()
	{
		$data['tours'] = $this->M_H->getRecTours();
		$data['jmlDests'] =$this->M_H->getCountDest();
		$data['destinations'] = $this->M_H->getRecDestinations();
		$data['title'] = 'Home - Lombok Impressive';
		// var_dump($data); die;
		$this->load->view('home/v_home', $data);
	}

	public function welcome()
	{
		redirect('/');
	}

	public function about()
	{
		$data['title'] = 'About - Lombok Impressive';
		$this->load->view('home/about', $data);
	}

	public function contact()
	{
		$data['title'] = 'Contact - Lombok Impressive';
		$this->load->view('home/contact', $data);
	}

	public function detail($slug)
	{
		$data['tours'] = $this->M_H->getDetail($slug);
		$data['prices'] = $this->M_H->getPricesTour($slug);
		$data['pics'] = $this->M_H->getPicsTour($slug);
		// var_dump($data['pics']);die;
		if(!$data['tours'] == NULL){
			$data['title'] = 'Tour - '.$data['tours']['title_tour'];
			$this->load->view('home/tour-detail', $data);
		} else {
			redirect('/');
		}
	}

	public function tours()
	{
		$data['title'] = 'All Tours - Lombok Impressive';
		$data['tours'] = $this->M_H->getAllTours();
		$this->load->view('home/list-tours', $data);
	}

	public function destinasi()
	{
		$data['title'] = 'All Destinations - Lombok Impressive';
		$data['dests'] = $this->M_H->getAllDest();
		$this->load->view('home/list-destinasi', $data);
	}

	public function gallery()
	{
		$data['title'] = 'All Media Gallery - Lombok Impressive';
		$data['gallerys'] = $this->M_H->getAllPhotos();
		$this->load->view('home/gallery', $data);
	}

	public function detail_dest($slug = null)
  {
		($slug == null)? redirect('/'): '';
		$data['destinations'] = $this->M_H->getDetailDest($slug);
		$data['pics'] = $this->M_H->getPhotosDest($slug);

		$data['title'] = 'Destination - '.$data['destinations']['name_dest'];
    $this->load->view('home/destinasi', $data);
	}
	
	public function getAllCars()
	{
		$data['title'] = 'Hire Car - Lombok Impressive';
		$this->load->view('home/cars', $data);
	}

	public function valentine()
	{
		$data['title'] = 'Valentine Package - Lombok Impressive';
		$this->load->view('home/valentine', $data);
	}

	public function login028312741dfsadsadfs()
	{
		$data['title'] = 'Login - Lombok Impressive';
		if(!isset($this->session->ifdsofcxzdsa)){
      $this->load->view('home/login', $data);
    } else {
			$this->load->view('home/logout');
		}
		$data = [
			'username' => $this->input->post('username', true),
			'password' => $this->input->post('password', true)
		];
		if(isset($_POST['submit'])){
			if($this->M_H->login($data)){
				$this->session->set_userdata('ifdsofcxzdsa', '8438583408503485384gdfgjdfjgldjgldfjgkldjgld');
				redirect('dashboard');
			} else {
				redirect('secure/login0112');
			}
		}
	}

	public function logoutfsdfdsfsd2434()
	{
		$this->session->sess_destroy();
		redirect('/');
	}

}
