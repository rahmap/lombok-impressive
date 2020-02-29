<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_Dashboard extends CI_Model {

	public function getAllTours()
	{
    return $this->db->get('tours')->result_array();
  }
  
  public function addTours($data)
  {
    $this->db->insert('tours', $data);
    return $this->db->affected_rows();
  }

  public function is_active($slug, $opt)
  {
    $dataUpdate = [
      'is_active' => $opt
    ];
    $this->db->update('tours', $dataUpdate, ['slug' => $slug]);
    return $this->db->affected_rows();
  }

  public function getIdBySlug($slug)
  {
    $this->db->select(['id_tour']);
    return $this->db->get_where('tours',['slug' => $slug])->row_array();
  }

  public function addPrices($data, $slug)
  {
    $id_tour = $this->getIdBySlug($slug);
    // var_dump($id_tour['id_tour']);
    if($this->db->insert('tours_prices_all', $data)){
      $last_id = $this->db->insert_id();
      $data3tbl = [
        'id_tours' => $id_tour['id_tour'],
        'id_prices' => $last_id
      ];
      if($this->db->insert('tours_prices', $data3tbl)){
        return 1;
      }
    }
    return 0;
  }

  public function addPhotos($data, $slug)
  {
    $id_tour = $this->getIdBySlug($slug);
    // var_dump($id_tour['id_tour']);
    if($this->db->insert('tours_pictures_all', $data)){
      $last_id = $this->db->insert_id();
      $data3tbl = [
        'id_tours' => $id_tour['id_tour'],
        'id_pics' => $last_id
      ];
      if($this->db->insert('tours_pics', $data3tbl)){
        return 1;
      }
    }
    return 0;
  }

  public function getAllDestinations()
  {
    return $this->db->get('destinations')->result_array();
  }

  public function getIdBySlugDest($slug)
  {
    $this->db->select(['id_dest']);
    return $this->db->get_where('destinations',['slug' => $slug])->row_array();
  }

  public function addDestination($data)
  {
    $this->db->insert('destinations', $data);
    return $this->db->affected_rows();
  }

  public function addPhotosDestination($data, $slug)
  {
    $id_tour = $this->getIdBySlugDest($slug);
    // var_dump($id_tour['id_tour']);
    if($this->db->insert('destinations_photos', $data)){
      $last_id = $this->db->insert_id();
      $data3tbl = [
        'id_dest' => $id_tour['id_dest'],
        'id_dest_photos' => $last_id
      ];
      if($this->db->insert('many_dest_photos', $data3tbl)){
        return 1;
      }
    }
    return 0;
  }
}
