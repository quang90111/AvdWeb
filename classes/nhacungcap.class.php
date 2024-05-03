<?php
include'../DTO/NhacungcapModel.php';
class Nhacungcap extends Db
{
    protected function AllNhacungcap()
    {
        $sql = "SELECT * FROM nhacungcap";
        $result = mysqli_query($this->connect(), $sql);
        $data = [];
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $data[] = $row;
            }
            return $data;
        } else return false;
    }
    protected function insertNhacungcap(NhacungcapModel $Nhacungcap)
    {
        $tennhacungcap = $Nhacungcap->getTenNhacungcap();
        $trangthai = $Nhacungcap->getTrangthai();

        $sql = "INSERT into Nhacungcap (tennhacungcap,trangthai) values ('$tennhacungcap','$trangthai')";
        if (mysqli_query($this->connect(), $sql)) {
            return true;
        } else {
            return false;
        }
    }
    protected function InputNhacungcap($input)
    {
        $sql = "SELECT * FROM nhacungcap WHERE tennhacungcap LIKE '%$input%'";
        $result = mysqli_query($this->connect(), $sql);
        $data = [];
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $data[] = $row;
            }
            return $data;
        } else return false;
    }

    protected function IdNhacungcap($id)
    {
        $sql = "SELECT * FROM nhacungcap where id_nhacungcap = $id";
        $result = mysqli_query($this->connect(), $sql);
        $resultCheck = mysqli_num_rows($result);
        if ($resultCheck > 0) {
            $row = mysqli_fetch_array($result);
            return $row;
        }
        return false;
    }
    // update
    protected function updatetNhacungcap(NhacungcapModel $Nhacungcap)
    {
        $id_nhacungcap = $Nhacungcap->getID_Nhacungcap();
        $tennhacungcap = $Nhacungcap->getTenNhacungcap();
        $trangthai = $Nhacungcap->getTrangthai();

        $sql = "UPDATE nhacungcap SET tennhacungcap='$tennhacungcap',trangthai='$trangthai' WHERE id_nhacungcap ='$id_nhacungcap'";
        if (mysqli_query($this->connect(), $sql)) {
            return true;
        } else {
            return false;
        }
    }
    //delete
    protected function deletetNhacungcap(NhacungcapModel $Nhacungcap)
    {
        $id_nhacungcap = $Nhacungcap->getID_Nhacungcap();

        $sql = "UPDATE `nhacungcap` SET `trangthai`='F' WHERE id_nhacungcap =$id_nhacungcap";
        if (mysqli_query($this->connect(), $sql)) {
            return true;
        } else {
            return false;
        }
    }

    protected function NccAndTendt($data)
    {
        $sql = "select dienthoai.ID_dienthoai,dienthoai.Tendt,nhacungcap.id_nhacungcap,nhacungcap.tennhacungcap from dienthoai,nhacungcap where dienthoai.ID_Nhacungcap = nhacungcap.id_nhacungcap and dienthoai.ID_Nhacungcap = '$data';";
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
