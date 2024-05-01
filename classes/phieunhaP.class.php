<?php
include'../DTO/TphieunhapModel.php';
include'../DTO/DetailPhieunhapModel.php';
class Phieunhap extends Db
{
    protected function AllPhieunhap()
    {
        $sql = "SELECT * FROM phieunhap";
        $result = mysqli_query($this->connect(), $sql);
        $data = [];
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $data[] = $row;
            }
            return $data;
        } else return false;
    }
    protected function insertPhieunhap(PhieunhapModel $Phieunhap)
    {
        $conn  = $this->connect();
        $id_nhacungcap = $Phieunhap->getid_nhacungcap();
        $id_nhanvien = $Phieunhap->getid_nhanvien();
        $tongtien = $Phieunhap->gettongtien();
        $ngaynhap = $Phieunhap->getngaynhap();
        $tongsoluong = $Phieunhap->gettongsoluong();
        $trangthai = $Phieunhap->getTrangthai();

        $sql = "INSERT into phieunhap (id_nhacungcap,id_nhanvien,tongtien,Ngaynhap,Tongsoluong,trangthai) values ('$id_nhacungcap','$id_nhanvien','$tongtien','$ngaynhap','$tongsoluong','$trangthai')";
        if (mysqli_query($conn, $sql)) {
            $phieunhap_id = mysqli_insert_id($conn);
            if ($phieunhap_id != 0) {
                return $phieunhap_id;
            } else {
                return false;
            }
        } else {
            return false;
        }
    }


    protected function insertDetailCTPN(DetailPhieunhapModel $CTPN)
    {
        $id_phieunhap = $CTPN->getid_phieunhap();
        $id_dienthoai = $CTPN->getid_dienthoai();
        $soluong = $CTPN->getsoluong();
        $gia = $CTPN->getgia();
        $sql = "INSERT into chitietphieunhap(id_phieunhap,id_dienthoai,soluong,gia) 
        VALUES('$id_phieunhap','$id_dienthoai','$soluong','$gia')";
        if (mysqli_query($this->connect(), $sql)) {
            return true;
        } else {
            return false;
        }
    }


    protected function XacNhanPhieunhap(PhieunhapModel $Phieunhap)
    {  
         $id_phieunhap = $Phieunhap->getID_phieunhap();
        $trangthai = $Phieunhap->getTrangthai();

        $sql = "UPDATE  phieunhap set trangthai = '$trangthai' where id_phieunhap = $id_phieunhap";
        if (mysqli_query($this->connect(), $sql)) {
            return true;
        } else {
            return false;
        }
    }

   

    protected function InputPhieunhap($input)
    {
        $sql = "SELECT * FROM phieunhap WHERE id_phieunhap LIKE '%$input%'";
        $result = mysqli_query($this->connect(), $sql);
        $data = [];
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $data[] = $row;
            }
            return $data;
        } else return false;
    }

    protected function dataId_Pn($id)
    {
        $sql = "SELECT * FROM chitietphieunhap WHERE id_phieunhap =$id";
        $result = mysqli_query($this->connect(), $sql);
        $data = [];
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $data[] = $row;
            }
            return $data;
        } else return false;
    }



    protected function IdPhieunhap($id)
    {
        $sql = "SELECT phieunhap.id_phieunhap,phieunhap.id_nhacungcap,phieunhap.id_nhanvien,phieunhap.tongtien,phieunhap.Tongsoluong,chitietphieunhap.id_dienthoai,chitietphieunhap.soluong,chitietphieunhap.gia,dienthoai.Tendt 
        FROM chitietphieunhap,phieunhap,dienthoai 
        WHERE dienthoai.ID_dienthoai = chitietphieunhap.id_dienthoai 
        AND phieunhap.id_phieunhap = chitietphieunhap.id_phieunhap 
        AND chitietphieunhap.id_phieunhap = $id";
        $result = mysqli_query($this->connect(), $sql);
        $data = [];
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $data[] = $row;
            }
            return $data;
        } else return false;
    }
   
   

}
