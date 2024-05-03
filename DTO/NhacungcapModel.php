<?php
class NhacungcapModel
{
    private $id_nhacungcap;
    private $tennhacungcap;
    private $trangthai;

    // set
    public function setid_nhacungcap($id_nhacungcap)
    {
        $this->id_nhacungcap = $id_nhacungcap;
    }
    public function settennhacungcap($tennhacungcap)
    {
        $this->tennhacungcap = $tennhacungcap;
    }
   
    public function setTrangthai($trangthai)
    {
        $this->trangthai = $trangthai;
    }
  

    // get
    public function getid_nhacungcap()
    {
        return $this->id_nhacungcap;
    }
    public function gettennhacungcap()
    {
        return $this->tennhacungcap;
    }
   
   
    public function getTrangthai()
    {
        return $this->trangthai;
    }
 
}
