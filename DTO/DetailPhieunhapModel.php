<?php
class DetailphieunhapModel
{
    private $id_chitietphieunhap;
    private $id_phieunhap;
    private $id_dienthoai;
    private $soluong;
    private $gia;

    // set
    public function setID_chitietphieunhap($id_chitietphieunhap)
    {
        $this->id_chitietphieunhap = $id_chitietphieunhap;
    }
    public function setid_phieunhap($id_phieunhap)
    {
        $this->id_phieunhap = $id_phieunhap;
    }
    public function setid_dienthoai($id_dienthoai)
    {
        $this->id_dienthoai = $id_dienthoai;
    }
    public function setsoluong($soluong)
    {
        $this->soluong = $soluong;
    }
    
    public function setgia($gia)
    {
        $this->gia = $gia;
    }
  

    // get
    public function getID_chitietphieunhap()
    {
        return $this->id_chitietphieunhap;
    }
    public function getid_phieunhap()
    {
        return $this->id_phieunhap;
    }
    public function getid_dienthoai()
    {
        return $this->id_dienthoai;
    }
    public function getsoluong()
    {
        return $this->soluong;
    }
   
    public function getgia()
    {
        return $this->gia;
    }
 
}
