<?php
class PhieunhapModel
{
    private $id_phieunhap;
    private $maphieunhap;
    private $id_nhacungcap;
    private $id_nhanvien;
    private $tongtien;
    private $ngaynhap;
    private $tongsoluong;

    private $trangthai;

    // set
    public function setID_phieunhap($id_phieunhap)
    {
        $this->id_phieunhap = $id_phieunhap;
    }
    public function setmaphieunhap($maphieunhap)
    {
        $this->maphieunhap = $maphieunhap;
    }
    public function settongtien($tongtien)
    {
        $this->tongtien = $tongtien;
    }
    public function setid_nhacungcap($id_nhacungcap)
    {
        $this->id_nhacungcap = $id_nhacungcap;
    }
    public function setid_nhanvien($id_nhanvien)
    {
        $this->id_nhanvien = $id_nhanvien;
    }
    public function setngaynhap($ngaynhap)
    {
        $this->ngaynhap = $ngaynhap;
    }
    public function settongsoluong($tongsoluong)
    {
        $this->tongsoluong = $tongsoluong;
    }
    
    public function setTrangthai($trangthai)
    {
        $this->trangthai = $trangthai;
    }
  

    // get
    public function getID_phieunhap()
    {
        return $this->id_phieunhap;
    }
    public function getmaphieunhap()
    {
        return $this->maphieunhap;
    }
    public function gettongtien()
    {
        return $this->tongtien;
    }
    public function getid_nhacungcap()
    {
        return $this->id_nhacungcap;
    }
    public function getid_nhanvien()
    {
        return $this->id_nhanvien;
    }
    public function getngaynhap()
    {
        return $this->ngaynhap;
    }
    public function gettongsoluong()
    {
        return $this->tongsoluong;
    }
    public function getTrangthai()
    {
        return $this->trangthai;
    }
 
}
