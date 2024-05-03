<?php
include'../DTO/ThuongHieuModel.php';
class Thuonghieu extends Db
{
    protected function AllThuonghieu()
    {
        $sql = "SELECT * FROM thuonghieu";
        $result = mysqli_query($this->connect(), $sql);
        $data = [];
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $data[] = $row;
            }
            return $data;
        } else return false;
    }
    protected function insertThuonghieu(ThuonghieuModel $Thuonghieu)
    {
        $tenThuonghieu = $Thuonghieu->getTenThuonghieu();
        $anhthuonghieu = $Thuonghieu->getanhthuonghieu();
        $trangthai = $Thuonghieu->getTrangthai();

        $sql = "INSERT into thuonghieu (tenthuonghieu,anh,trangthai) values ('$tenThuonghieu','$anhthuonghieu','$trangthai')";
        if (mysqli_query($this->connect(), $sql)) {
            return true;
        } else {
            return false;
        }
    }
    protected function InputThuonghieu($input)
    {
        $sql = "SELECT * FROM thuonghieu WHERE tenthuonghieu LIKE '%$input%'";
        $result = mysqli_query($this->connect(), $sql);
        $data = [];
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_array($result)) {
                $data[] = $row;
            }
            return $data;
        } else return false;
    }

    protected function IdThuonghieu($id)
    {
        $sql = "SELECT * FROM thuonghieu where id_thuonghieu = $id";
        $result = mysqli_query($this->connect(), $sql);
        $resultCheck = mysqli_num_rows($result);
        if ($resultCheck > 0) {
            $row = mysqli_fetch_array($result);
            return $row;
        }
        return false;
    }
    // update
    protected function updatetThuonghieu(ThuonghieuModel $Thuonghieu)
    {
        $id_Thuonghieu = $Thuonghieu->getID_Thuonghieu();
        $tenThuonghieu = $Thuonghieu->getTenThuonghieu();
        $anhthuonghieu = $Thuonghieu->getanhthuonghieu();
        $trangthai = $Thuonghieu->getTrangthai();

        $sql = "UPDATE thuonghieu SET tenthuonghieu='$tenThuonghieu',anh = '$anhthuonghieu',trangthai='$trangthai' WHERE id_thuonghieu ='$id_Thuonghieu'";
        if (mysqli_query($this->connect(), $sql)) {
            return true;
        } else {
            return false;
        }
    }
    //delete
    protected function deletetThuonghieu(ThuonghieuModel $Thuonghieu)
    {
        $id_Thuonghieu = $Thuonghieu->getID_Thuonghieu();

        $sql = "UPDATE `thuonghieu` SET `trangthai`='F' WHERE id_thuonghieu =$id_Thuonghieu";
        if (mysqli_query($this->connect(), $sql)) {
            return true;
        } else {
            return false;
        }
    }

}
