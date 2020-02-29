<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_Home extends CI_Model {
  
  public function getIdBySlug($slug)
  {
    $this->db->select(['id_tour']);
    return $this->db->get_where('tours',['slug' => $slug])->row_array();
  }

  public function getAllTours()
  {
    return $this->db->get_where('tours', ['is_active' => 1])->result_array();
  }

  public function getAllPhotos()
  {
    return $this->db->get_where('destinations_photos')->result_array();
  }

  public function getAllDest()
  {
    return $this->db->get('destinations')->result_array();
  }

  public function getRecTours()
  {
    return $this->db->get_where('tours', ['is_active' => 1], 6)->result_array();
  }

  public function getRecDestinations()
  {
    $this->db->order_by('popular', 'desc');
    $this->db->limit(8, 0);
    return $this->db->get_where('destinations')->result_array();
  }

  public function getDetail($slug)
  {
    return $this->db->get_where('tours', ['slug' => $slug], 1)->row_array();
  }

  public function getPricesTour($slug)
  {
    $id_tour = $this->getIdBySlug($slug);
    $this->db->join('tours_prices_all','tours_prices_all.id_tours_prices_all=tours_prices.id_prices');
    return $this->db->get_where('tours_prices', ['tours_prices.id_tours' => $id_tour['id_tour']])->result_array();
  }

  public function getPicsTour($slug)
  {
    $id_tour = $this->getIdBySlug($slug);
    $this->db->join('tours_pictures_all','tours_pictures_all.id_pics_all=tours_pics.id_tours_pics');
    return $this->db->get_where('tours_pics', ['tours_pics.id_tours' => $id_tour['id_tour']])->result_array();
  }

  public function getIdBySlugDest($slug)
  {
    $this->db->select(['id_dest']);
    return $this->db->get_where('destinations',['slug' => $slug])->row_array();
  }

  public function getDetailDest($slug)
  {
    return $this->db->get_where('destinations', ['slug' => $slug], 1)->row_array();
  }

  public function getPhotosDest($slug)
  {
    $id_dest = $this->getIdBySlugDest($slug);
    $this->db->join('destinations_photos','destinations_photos.id_dest_photos=many_dest_photos.id_dest_photos');
    return $this->db->get_where('many_dest_photos', ['many_dest_photos.id_dest' => $id_dest['id_dest']])->result_array();
  }

  public function getCountDest()
  {
    $this->db->select(['COUNT(id_dest) as jmlDest']);
    return $this->db->get('destinations')->row_array();
  }

  public function login($data)
  {
    return $this->db->get_where('logins', [
                        'username' => $data['username'], 
                        'password' => $data['password']
                        ])->num_rows();;
    // die;
  }

}
