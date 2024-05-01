<?php
class ThuonghieuCtrl extends Thuonghieu
{
    public function insertThuonghieuCtrl(ThuonghieuModel $Thuonghieu)
    {
        return $this->insertThuonghieu($Thuonghieu);
    }

   

    public function updateThuonghieuCtrl(ThuonghieuModel $Thuonghieu)
    {
        return $this->updatetThuonghieu($Thuonghieu);
    }

    public function deleteThuonghieuCtrl(ThuonghieuModel $Thuonghieu)
    {
        return $this->deletetThuonghieu($Thuonghieu);
    }

}
