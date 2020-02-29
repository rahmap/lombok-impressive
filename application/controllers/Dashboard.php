<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct()
	{
    parent::__construct();
    if(!isset($this->session->ifdsofcxzdsa)){
      redirect('Error404');
    }
		$this->load->model('M_Dashboard', 'M_D');
		$this->load->library('form_validation');
    $this->load->library('upload');
	}

	public function index()
	{
		$data['title'] = 'Dashboard - Main';
		$this->load->view('dashboard/v_main', $data);
	}

	public function add_tours()
	{
    $this->form_validation->set_rules('title', 'Title Tours', 'min_length[5]|required|max_length[300]|trim');
    $this->form_validation->set_rules('duration', 'Duration Tours', 'min_length[2]|required|max_length[50]|trim');
    $this->form_validation->set_rules('price', 'Price Tours', 'min_length[4]|required|max_length[11]|numeric|trim');
    $this->form_validation->set_rules('tumb_desc', 'Keterangan (thumbnail) Tours', 'min_length[30]|required|max_length[190]|trim');
    // $this->form_validation->set_rules('tumb_photo', 'Thumbnail Photo Tours', 'required');

    if ($this->form_validation->run() == false) {
			$data['title'] = 'Dashboard - Add Tours';
			$this->load->view('dashboard/tours/add_tours', $data);
    } else if ($this->form_validation->run() == true) {
			$slug = strtolower($this->input->post('title'));
			$slug = str_replace(' ','-',$slug);
      if (isset($_FILES['tumb_photo']['name']) && !empty($_FILES['tumb_photo']['name'])) {
        $data = [
          'slug' => $slug,
          'title_tour' => ucwords(strtolower($this->input->post('title'))),
          'price_desc' => $this->input->post('price', true),
          'duration' => $this->input->post('duration', true),
          'desc_full' => ucfirst($this->input->post('desc_full')),
          'tumb_desc' => ucfirst($this->input->post('tumb_desc', true)),
          'tumb_pic' => $this->uploadFotoTours(),
          'create_date' => time(),
          'is_active' => 0
        ];
				// var_dump($data); die;
        if ($this->M_D->addTours($data)) {
          $this->F_M->getSweetAlert('message', 'Success!', 'Data Tour berhasil ditambahkan.', 'success');
        } else {
          $this->F_M->getSweetAlert('message', 'Upss!', 'Data Tour gagal ditambahkan.', 'error');
        }
      } else {
        $this->F_M->getSweetAlert('message', 'Upss!', 'Foto Tour gagal diupload.', 'error');
      }
      redirect('dashboard/add_tours');
    }
	}

	public function uploadFotoTours()
  {
    $config['upload_path']       = './assets/images/tours/';
    $config['allowed_types']     = 'gif|jpg|png|jpeg';
    $config['max_size']          = 0;   //Tergantung dari php.ini juga
    $config['remove_spaces']     = TRUE;
    $config['file_name']         = 'tumb_photo-'.round(microtime(true) * 1000);

    $this->load->library('upload');
    $this->upload->initialize($config);

    if ($this->upload->do_upload('tumb_photo')) {
      $config['image_library'] = 'gd2';   //Meng resize foto hasil upload
      $config['source_image'] = './assets/images/tours/' .  $this->upload->data('file_name');
      $config['create_thumb'] = FALSE;
      $config['maintain_ratio'] = FALSE;
      // $config['quality'] = '50%';
      $config['width'] = 400;
			$config['height'] = 267;
			// $config['maintain_ratio'] = FALSE; //CROP
      $config['new_image'] = './assets/images/tours/' .  $this->upload->data('file_name');
      $this->load->library('image_lib', $config);
      $this->image_lib->resize(); //JIKA CROP, HAPUS INI

      return $this->upload->data('file_name');
    } else {
      $this->F_M->getSweetAlert('message', 'Upss!', 'Foto thumbnail Tour gagal diupload.', 'error');
      $this->session->set_flashdata( 'error_msg', $this->upload->display_errors() );
      redirect('dashboard/add_tours');
    }
  }

	public function list_tours()
	{
		$data['title'] = 'Dashboard - Data Tours';
		$data['tours'] = $this->M_D->getAllTours();
		$this->load->view('dashboard/tours/list_tours', $data);
	}

	public function add_prices($slug = null)
	{
		($slug == null)? redirect('dashboard/list_tours'): '';
		$this->form_validation->set_rules('title_price', 'Title Tours', 'min_length[5]|required|max_length[100]|trim');
    $this->form_validation->set_rules('price', 'Price Tours', 'min_length[4]|required|max_length[11]|numeric|trim');

    if ($this->form_validation->run() == false) {
			$data['title'] = 'Dashboard - Add Prices';
			$this->load->view('dashboard/tours/add_tours_prices', $data);
    } else if ($this->form_validation->run() == true) {

			$data = [
				'desc_price' => ucwords(strtolower($this->input->post('title_price'))),
				'tours_price' => $this->input->post('price', true)
			];
			// var_dump($data); die;
			if ($this->M_D->addPrices($data, $slug)) {
				$this->F_M->getSweetAlert('message', 'Success!', 'Prices Tour berhasil ditambahkan.', 'success');
			} else {
				$this->F_M->getSweetAlert('message', 'Upss!', 'Prices Tour gagal ditambahkan.', 'error');
			}
      redirect('dashboard/add_prices/'.$slug);
    }
	}

	public function add_photos($slug = null)
	{
		($slug == null)? redirect('dashboard/list_tours'): '';
		    $this->form_validation->set_rules('photo', 'Thumbnail Photo Tours', 'max_length[100]');
		if ($this->form_validation->run() == false) {
			$data['title'] = 'Dashboard - Add Photos';
			$this->load->view('dashboard/tours/add_tours_photos', $data);
    } else if ($this->form_validation->run() == true) {
			// die;
			if (isset($_FILES['photo']['name']) && !empty($_FILES['photo']['name'])) {
			$data = [
				'name_pics' => $this->uploadPhotosMany($slug)
			];
				// var_dump($data); die;
				if ($this->M_D->addPhotos($data, $slug)) {
					$this->F_M->getSweetAlert('message', 'Success!', 'Photos Tour berhasil ditambahkan.', 'success');
				} else {
					$this->F_M->getSweetAlert('message', 'Upss!', 'Photos Tour gagal ditambahkan.', 'error');
				}
			} else {
				$this->F_M->getSweetAlert('message', 'Upss!', 'Foto Tour Atas gagal diupload.', 'error');
			}
      redirect('dashboard/add_photos/'.$slug);
    }
	}
  
	public function uploadPhotosMany($slug)
  {
    $config['upload_path']       = './assets/images/tours/';
    $config['allowed_types']     = 'gif|jpg|png|jpeg';
    $config['max_size']          = 0;   //Tergantung dari php.ini juga
    $config['remove_spaces']     = TRUE;
    $config['file_name']         = strtolower($slug.'-'.round(microtime(true) * 1000));

    $this->load->library('upload');
    $this->upload->initialize($config);
    
    if ($this->upload->do_upload('photo')) {
      $config['image_library'] = 'gd2';   //Meng resize foto hasil upload
      $config['source_image'] = './assets/images/tours/' .  $this->upload->data('file_name');
      $config['create_thumb'] = FALSE;
      $config['maintain_ratio'] = FALSE;
      // $config['quality'] = '50%';
      $config['width'] = 1700;
			$config['height'] = 750;
			// $config['maintain_ratio'] = FALSE; //CROP
      $config['new_image'] = './assets/images/tours/' .  $this->upload->data('file_name');
      $this->load->library('image_lib', $config);
      $this->image_lib->resize(); //JIKA CROP, HAPUS INI
      
      return $this->upload->data('file_name');
    } else {
      $this->F_M->getSweetAlert('message', 'Upss!', 'Foto Tour gagal diupload.', 'error');
      $this->session->set_flashdata( 'error_msg', $this->upload->display_errors() );
      redirect('dashboard/add_tours');
    }
  }
  
  public function activeDeactive($slug, $options)
  {
    if ($this->M_D->is_active($slug, $options)) {
      $this->F_M->getSweetAlert('message', 'Success!', 'Status Tours has ben changed.', 'success');
    } else {
      $this->F_M->getSweetAlert('message', 'Upss!', 'Status Tours failed to changed.', 'error');
    }
    redirect('dashboard/list_tours');
  }
  
  public function list_destinations()
  {
    $data['title'] = 'Dashboard - Data Destinations';
		$data['dests'] = $this->M_D->getAllDestinations();
		$this->load->view('dashboard/destination/list_destination', $data);
  }
  
  public function add_destinations()
  {
    $this->form_validation->set_rules('nama_dest', 'Title Destinations', 'min_length[2]|required|max_length[100]|trim');
		// $this->form_validation->set_rules('deskripsi', 'Title Destinations', 'min_length[25]|required|max_length[2500]|trim');
		$this->form_validation->set_rules('popular', 'Popularity Destinations', 'min_length[1]|required|trim');
    
    if ($this->form_validation->run() == false) {
			$data['title'] = 'Dashboard - Add Destinations';
			$this->load->view('dashboard/destination/add_destination', $data);
    } else if ($this->form_validation->run() == true) {
      $slug = strtolower($this->input->post('nama_dest'));
			$slug = str_replace(' ','-',$slug);
			$data = [
				'name_dest' => ucwords(strtolower($this->input->post('nama_dest'))),
				'deskripsi' => $this->input->post('deskripsi'),
				'slug' => $slug,
				'popular' => $this->input->post('popular'),
				'tumb_pic' => $this->uploadFotoDestinasi()
			];
			// var_dump($data); die;
			if ($this->M_D->addDestination($data)) {
        $this->F_M->getSweetAlert('message', 'Success!', 'Destinations Tour berhasil ditambahkan.', 'success');
			} else {
        $this->F_M->getSweetAlert('message', 'Upss!', 'Destinations Tour gagal ditambahkan.', 'error');
			}
      redirect('dashboard/list_destinations');
    }
  }
  
  public function uploadFotoDestinasi()
  {
    $config['upload_path']       = './assets/images/destinasi/';
    $config['allowed_types']     = 'gif|jpg|png|jpeg';
    $config['max_size']          = 0;   //Tergantung dari php.ini juga
    $config['remove_spaces']     = TRUE;
    $config['file_name']         = 'destinasi_photo-'.round(microtime(true) * 1000);
    
    $this->load->library('upload');
    $this->upload->initialize($config);
    
    if ($this->upload->do_upload('photo')) {
      $config['image_library'] = 'gd2';   //Meng resize foto hasil upload
      $config['source_image'] = './assets/images/destinasi/' .  $this->upload->data('file_name');
      $config['create_thumb'] = FALSE;
      $config['maintain_ratio'] = FALSE;
      // $config['quality'] = '50%';
      $config['width'] = 400;
			$config['height'] = 267;
			// $config['maintain_ratio'] = FALSE; //CROP
      $config['new_image'] = './assets/images/destinasi/' .  $this->upload->data('file_name');
      $this->load->library('image_lib', $config);
      $this->image_lib->resize(); //JIKA CROP, HAPUS INI
      
      return $this->upload->data('file_name');
    } else {
      $this->F_M->getSweetAlert('message', 'Upss!', 'Foto thumbnail Destinasi gagal diupload.', 'error');
      $this->session->set_flashdata( 'error_msg', $this->upload->display_errors() );
      redirect('dashboard/add_destinations');
    }
  }
  
  public function add_photos_dest($slug = null)
  {
    ($slug == null)? redirect('dashboard/list_destinations'): '';
        $this->form_validation->set_rules('photo', 'Thumbnail Photo Destinations', 'max_length[100]');
    if ($this->form_validation->run() == false) {
      $data['title'] = 'Dashboard - Add Photos Destinations';
      $this->load->view('dashboard/destination/add_destination_photos', $data);
    } else if ($this->form_validation->run() == true) {
      // die;
      if (isset($_FILES['photo']['name']) && !empty($_FILES['photo']['name'])) {
      $data = [
        'name_photos' => $this->uploadPhotosManyDest($slug),
        'title_photos' => $slug
      ];
        // var_dump($data); die;
        if ($this->M_D->addPhotosDestination($data, $slug)) {
          $this->F_M->getSweetAlert('message', 'Success!', 'Photos Destinations berhasil ditambahkan.', 'success');
        } else {
          $this->F_M->getSweetAlert('message', 'Upss!', 'Photos Destinations gagal ditambahkan.', 'error');
        }
      } else {
        $this->F_M->getSweetAlert('message', 'Upss!', 'Foto Destinations Atas gagal diupload.', 'error');
      }
      redirect('dashboard/add_photos_dest/'.$slug);
    }
  }

  public function uploadPhotosManyDest($slug)
  {
    $config['upload_path']       = './assets/images/destinasi/';
    $config['allowed_types']     = 'gif|jpg|png|jpeg';
    $config['max_size']          = 0;   //Tergantung dari php.ini juga
    $config['remove_spaces']     = TRUE;
    $config['file_name']         = strtolower($slug.'-'.round(microtime(true) * 1000));

    $this->load->library('upload');
    $this->upload->initialize($config);
    
    if ($this->upload->do_upload('photo')) {
      $config['image_library'] = 'gd2';   //Meng resize foto hasil upload
      $config['source_image'] = './assets/images/destinasi/' .  $this->upload->data('file_name');
      $config['create_thumb'] = FALSE;
      $config['maintain_ratio'] = FALSE;
      // $config['quality'] = '50%';
      $config['width'] = 960;
			$config['height'] = 640;
			// $config['maintain_ratio'] = FALSE; //CROP
      $config['new_image'] = './assets/images/destinasi/' .  $this->upload->data('file_name');
      $this->load->library('image_lib', $config);
      $this->image_lib->resize(); //JIKA CROP, HAPUS INI
      
      return $this->upload->data('file_name');
    } else {
      $this->F_M->getSweetAlert('message', 'Upss!', 'Foto Destination gagal diupload.', 'error');
      $this->session->set_flashdata( 'error_msg', $this->upload->display_errors() );
      redirect('dashboard/add_photos_dest/'.$slug);
    }
  }

}
