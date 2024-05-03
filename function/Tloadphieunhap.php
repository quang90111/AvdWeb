<?php
session_start();
include '../includes/autoload.php';

if (isset($_POST['loadPhieunhap'])) {
    $PhieunhapView = new PhieunhapView();
        if (isset($_POST['search_Phieunhap'])!='') {
            $input = $_POST['input'];
            $Phieunhap = $PhieunhapView->getInputPhieunhap($input);
        }else{
            $Phieunhap = $PhieunhapView->getAllPhieunhap();
        }
    
    $output = '';

if (isset($Phieunhap) && is_array($Phieunhap)) {
    $output = "";
    if ($Phieunhap) {
        foreach ($Phieunhap as $data) {
            $id_Phieunhap = $data['id_phieunhap'];
            $maphieunhap = $data['maphieunhap'];
            $tongtien = $data['tongtien'];
            $ngaynhap = $data['Ngaynhap'];
            $tongsoluong = $data['Tongsoluong'];
            $trangthai = $data['trangthai'];
                        $output .= "
            <tr class='fs-4'>
            <td scope='col'>$id_Phieunhap </td>
            <td scope='col'>$maphieunhap </td>
            <td scope='col'>$tongtien </td>
            <td scope='col'>$ngaynhap </td>
            <td scope='col'>$tongsoluong</td>
            <td scope='col'>$trangthai</td>
            <td class=' fs-5'>
                <div class='d-flex justify-content-around align-items-center control-wrap'>
                <i class='fa-solid fa-pen-to-square Detail-Phieunhap' id_Phieunhap='{$id_Phieunhap}' trangthai='{$trangthai}'  data-bs-toggle='modal' data-bs-target='#exampleModalEdit'></i>
                    
                </div>
            </td>
            </tr>
            ";
        }
        echo $output;
    } 
} 
else {
    echo "No Phieunhaps found";
}
} 

if (isset($_POST['loadFormAddPhieunhap'])) {
   
$nhacungcapView = new NhacungcapView();
if(isset($_POST['idNCC'])){
    $id = $_POST['idNCC'];
    
}else{
    $id = 1;
}

    $output = '';
    $output .= "<div class='modal-header'>
    <h5 class='modal-title' id='exampleModalLabel'>Thêm nhà cung cấp</h5>
    <button type='button' class='btn-close' data-bs-dismiss='modal' aria-label='Close'></button>
</div>
<div class='modal-body'>
    
        <div class='row row-xs-3'>
                <div class='col  form-input-account'phieunhap' id='main_ncc'>
                    <h6>Tên nhà cung cấp</h6>
                    <select id='PN_id_nhacungcap'>";
                        $resultNhacungcap = $nhacungcapView->getAllNhacungcap();
                        foreach ($resultNhacungcap as $data) {
                            $id_nhacungcap = $data['id_nhacungcap'];
                            $tennhacungcap = $data['tennhacungcap'];
                            $selected = ($id_nhacungcap == $id) ? 'selected' : '';

                            $output .= "
                        <option  value='$id_nhacungcap' $selected>$tennhacungcap</option>
                    
                    ";
                    }
                    $output .= "
                    </select>
                    
                    
                </div>
                <div class='col  form-input-phieunhap'>
                <h6>Tên điện thoại</h6>
                <select id='PN_id_dienthoai'>";
                    $result = $nhacungcapView->getNccAndTendt($id);
                    if (isset($result) && is_array($result)) {
                    foreach ($result as $data) {
                        $id_dt = $data['ID_dienthoai'];
                        $tendt = $data['Tendt'];
                    $output .= "
                        <option  value='$id_dt'>$tendt</option>
                    ";
                    } 
                }

                $output .= "
                </select> 
            </div>
                
    
        </div>
        <div class='row row-xs-3'>
              
                <div class='col  form-input-account'>
                    <h6>Giá</h6>
                    <input class='input-price_phieunhap' type='text' >
                </div>
                <div class='col  form-input-account'>
                <h6>Số lượng</h6>
                <input class='input-quantity_phieunhap' type='number' value='0' min='0' >
            </div>
        </div>
        <div class='modal-footer'>
            <button type='button' class='btn btn-primary them-dataPN'>Thêm</button>
        </div>
        <div class='table-responsive' style='position: relative; height: 300px'>
            <table class='table table-striped mb-0'>
                <thead style='background-color: #002d72;'>
                    <tr class='' style='color:white;'>
                        <th scope='col'>Id_điện thoại</th>
                        <th scope='col'>Tên điện thoại</th>
                        <th scope='col'>Số lượng </th>
                        <th scope='col'>Giá</th>
                    </tr>
                </thead>
                <tbody class='taget'>
                
                </tbody>
            </table>
           
        </div>
        <b>Tổng số lượng sản phẩm :</b><p class ='tong_soluong'></p>
        <b>Tổng giá của phiếu nhập :</b><p class ='tong_gia'></p>
        <div class='modal-footer'>
            <button type='button' class='btn btn-secondary close-Phieunhap' data-bs-dismiss='modal'>Close</button>
            <button type='button' class='btn btn-primary them-PN'>Thêm vào phiếu nhập</button>
    </div>
        ";
       
        echo $output; 
}
if (isset($_POST['tempArr'])) {
   
    
    $id_nhacungcap = $_POST['id_nhacungcap'];
    $tonggia = $_POST['tong_gia'];
    $tongsoluong = $_POST['tong_soluong'];
    $ngaynhap = date("Y-m-d");
    $trangthai = "Đang xử lý";
    // lấy id_nhanvien 
    if (isset($_SESSION['auth_user'])) {
        $tennhanvien =  $_SESSION['auth_user']['username'];
    }
    $StaffView = new StaffView();
    $result = $StaffView->getOutputID_nv($tennhanvien);
        $id_nhanvien = $result['id_nhanvien'];


// Tao phieu nhap
$phieunhapCtrl = new PhieunhapCtrl();
$phieunhapModel = new PhieunhapModel();

$phieunhapModel->setid_nhacungcap($id_nhacungcap);
$phieunhapModel->setid_nhanvien($id_nhanvien);
$phieunhapModel->settongtien($tonggia);
$phieunhapModel->setngaynhap($ngaynhap);
$phieunhapModel->settongsoluong($tongsoluong);
$phieunhapModel->setTrangthai($trangthai);

$id = $phieunhapCtrl->inserPhieuNhapCtrl($phieunhapModel);
 $data = $_POST['tempArr'];
    foreach($data as $result){
        $id_nhacungcap = $result['id_nhacungcap'];
        $id_dienthoai = $result['id_dienthoai'];
        $gia = $result['gia'];
        $soluong = $result['soluong'];
        // echo $id_nhacungcap.'idncc</br>';
        // echo $id_dienthoai.'iddt</br>';
        // echo $gia.'giá</br>';
        // echo $soluong.'sl</br>';

        $DetailPNModel = new DetailphieunhapModel();
        $DetailPNModel->setid_phieunhap($id);
        $DetailPNModel->setID_dienthoai($id_dienthoai);
        $DetailPNModel->setSoluong($soluong);
        $DetailPNModel->setGia($gia);

        $result = $phieunhapCtrl->insertDetailCTPNCtrl($DetailPNModel);
        if($result){
            echo 'add';
        }
    }
}

if(isset($_POST['DetailPhieunhap'])){
    $id_phieunhap = $_POST['id_Phieunhap'];
    $trangthai =  $_POST['trangthaiPn'];

        echo '<h1 style = "text-align:center;">Chi tiết phiếu nhập</h1>';
        echo $id_phieunhap;
        
        $output = '';
        $output.="
        <div class='table-responsive' style='position: relative; '>
        <table class='table table-striped mb-0'>
            <thead style='background-color: #002d72;'>
                <tr style='color:white;'>
                    <th scope='col'>Id_điện thoại</th>
                    <th scope='col'>Tên điện thoại</th>
                    <th scope='col'>Số lượng </th>
                    <th scope='col'>Giá</th>
                </tr>
            </thead>
            <tbody>";
            $PhieunhapView = new PhieunhapView();
             $resultPhieunhap = $PhieunhapView->getIdPhieunhap($id_phieunhap);
         foreach($resultPhieunhap as $dataPhieunhap){
            $id_dienthoai_PN = $dataPhieunhap['id_dienthoai'];
            $tendienthoai_PN = $dataPhieunhap['Tendt'];
            $soluong_PN = $dataPhieunhap['soluong'];
            $gia_PN = $dataPhieunhap['gia'];
            $output.="
            <tr>
                <td>$id_dienthoai_PN</td>
                <td>$tendienthoai_PN</td>
                <td>$soluong_PN</td>
                <td>$gia_PN</td>
            </tr>
            ";
         }
         
            $output.="</tbody>
        </table>
        <button style='margin-left:450px' type='button' class='btn btn-secondary close-EditPhieunhap' data-bs-dismiss='modal'>Close</button>

        ";
       

        if($trangthai == "Đang xử lý"){
            $output.="
             <div class='modal-footer'>
                 <button type='button' class='btn btn-secondary Huy_PN' trangthai='$trangthai' id_phieunhap='$id_phieunhap'>Hủy phiếu nhập</button>
                 <button type='button' class='btn btn-primary HoanTat_PN' trangthai='$trangthai' id_phieunhap='$id_phieunhap'>Hoàn thành phiếu nhập</button>
             </div>";
             }
        echo $output;
}

if(isset($_POST['HuyPhieuNhap'])){
    $id_phieunhap = $_POST['id_phieunhap'];
    $trangthai = 'Đã hủy';
    $phieunhapCtrl = new PhieunhapCtrl();
    $phieunhapModel = new PhieunhapModel();
    $phieunhapModel->setID_phieunhap($id_phieunhap);
    $phieunhapModel->setTrangthai($trangthai);
    
    $resultHuy = $phieunhapCtrl->updateXacnhanPN($phieunhapModel);
    if($resultHuy){
        echo 'Hủy phiếu nhập';
    }
}

if(isset($_POST['HoanTat_PN'])){
    $id_phieunhap = $_POST['id_phieunhap'];
    $trangthai = 'Hoàn thành';
    $phieunhapCtrl = new PhieunhapCtrl();
    $phieunhapModel = new PhieunhapModel();
    $phieunhapModel->setID_phieunhap($id_phieunhap);
    $phieunhapModel->setTrangthai($trangthai);
    
    $resultHoantat = $phieunhapCtrl->updateXacnhanPN($phieunhapModel);

    if($resultHoantat){
        echo 'Hoàn thành phiếu nhập';
    }
}
?>