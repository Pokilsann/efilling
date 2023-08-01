<?php
/**
 *
 */
class M_Kategori_Surat extends CI_Model
{

  function __construct()
  {
    parent::__construct();
  }

  public function create($id, $nama)
  {
    return $this->db->insert(
      'kategori_surat',
      array('id_kategori' => $id, 'nama' => $nama)
    );
  }

  public function get_all()
  {
    return $this->db->get('kategori_surat')->result();
  }

  public function get_id($id)
  {
    $this->db->where('id_kategori', $id);
    return $this->db->get('kategori_surat')->result();
  }



  public function get_not_in($table)
  {
    $this->db->select("id_kategori");
    $this->db->distinct();
    $this->db->from($table);
    $query = $this->db->get()->result();
    $jenis = array();
    for ($i=0; $i < count($query); $i++) {
      $jenis[$i] = $query[$i]->id_jenis;
    }

    $this->db->select("*");
    $this->db->from("kategori_surat");
    $this->db->where_not_in('id_kategori', $jenis);
    return $this->db->get()->result();
  }

  public function update($id, $nama)
  {
    $this->db->where('id_kategori', $id);
    return $this->db->update(
      'jenis_surat',
      array('nama' => $nama)
    );
  }

  public function delete($id)
  {
    $this->db->where('id_kategori', $id);
    return $this->db->delete('kategori_surat');
  }

  public function gettt($tabel, $kolom)
  {
    $this->db->select_max($kolom, 'id');
    $data = $this->db->get($tabel)->result();
    return ($data[0]->id_kategori + 1);
  }
}

?>
