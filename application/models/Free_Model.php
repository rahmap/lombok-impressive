<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Free_Model extends CI_Model
{

    private $namaFlash;


    public function getSweetAlert($namaFlash, $title = '', $text = '', $type = '')
    {
        return  $this->session->set_flashdata($namaFlash, "<script>
		var title = '$title';
		var text = '$text'; 
		var type = '$type';
			Swal.fire(title,text,type);
		</script>");
    }


    public function getSweetAlertHref($namaFlash, $title = '', $text = '', $type = '', $href = '')
    {
        return  $this->session->set_flashdata($namaFlash, "<script>
		var title = '$title';
		var text = '$text'; 
		var type = '$type';
			Swal.fire(title,text,type).then(function() {
              window.location = '$href';
          });
		</script>");
    }

    public function cek_ajax()
    {
      if(!$this->input->is_ajax_request()){
        die('mdfk');
      }
    }

    public function sendMailgun($data, $subject, $from, $file)
    {
        //Jika tidak mau pake Mailgun, mungkin bisa di ganti pake Email sender dari CI nya
      ($data == null)? redirect('home'): '';
      $this->load->library('mailgun');
      $this->mailgun->initialize(array(
        'apikey' => 'key-1b7b13209a251da1b62fce7e2a92d9bd', //Ganti dengan key anda                            
        'domain' => 'email.lombokimpressive.com'               //Ganti dengan domain anda
      ));
  
      $this->mailgun->from($from, 'Toko Pakaian Millano');                  
      $this->mailgun->to($data['email'], $data['nama']);           
      $this->mailgun->subject($subject);                                       
      $this->mailgun->message($this->load->view('email/'.$file, $data, TRUE));                                 
  
      return $this->mailgun->send();
    }
}
