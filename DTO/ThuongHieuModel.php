<?php
class ThuonghieuModel
{
    private $id_thuonghieu;
    private $tenthuonghieu;
    private $anhthuonghieu;
    private $trangthai;

    // set
    public function setid_thuonghieu($id_thuonghieu)
    {
        $this->id_thuonghieu = $id_thuonghieu;
    }
    public function settenthuonghieu($tenthuonghieu)
    {
        $this->tenthuonghieu = $tenthuonghieu;
    }
    public function setanhthuonghieu($anhthuonghieu)
    {
        $this->anhthuonghieu = $anhthuonghieu;
    }
   
    public function setTrangthai($trangthai)
    {
        $this->trangthai = $trangthai;
    }
  

    // get
    public function getid_thuonghieu()
    {
        return $this->id_thuonghieu;
    }
    public function gettenthuonghieu()
    {
        return $this->tenthuonghieu;
    }
    public function getanhthuonghieu()
    {
        return $this->anhthuonghieu;
    }
   
    public function getTrangthai()
    {
        return $this->trangthai;
    }
 
}
