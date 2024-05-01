<?php
class NhacungcapCtrl extends Nhacungcap
{
    public function insertNhacungcapCtrl(NhacungcapModel $Nhacungcap)
    {
        return $this->insertNhacungcap($Nhacungcap);
    }

   

    public function updateNhacungcapCtrl(NhacungcapModel $Nhacungcap)
    {
        return $this->updatetNhacungcap($Nhacungcap);
    }

    public function deleteNhacungcapCtrl(NhacungcapModel $Nhacungcap)
    {
        return $this->deletetNhacungcap($Nhacungcap);
    }

}
