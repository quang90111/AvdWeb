<?php
class PhieunhapCtrl extends Phieunhap

{
    public function inserPhieuNhapCtrl(PhieunhapModel $Phieunhap)
    {
        return $this->insertPhieunhap($Phieunhap);
    }
    public function insertDetailCTPNCtrl(DetailPhieunhapModel $CTPN)
    {
        
        return $this->insertDetailCTPN($CTPN);
    }

    public function updateXacnhanPN(PhieunhapModel $Phieunhap)
    {
        
        return $this->XacNhanPhieunhap($Phieunhap);
    }
}
?>