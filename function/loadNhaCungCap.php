<?php
include '../includes/autoload.php';
$NhacungcapView = new NhacungcapView();
$NhacungcapCtrl = new NhacungcapCtrl();
if (isset($_POST['loadNhaCungCap'])) {
    
    
        if (isset($_POST['search_NhaCungCap'])!='') {
            $input = $_POST['input'];
            $Nhacungcap = $NhacungcapView->getInputNhacungcap($input);
        }else{
            $Nhacungcap = $NhacungcapView->getAllNhacungcap();
        }
    
    $output = '';

if (isset($Nhacungcap) && is_array($Nhacungcap)) {
    $output = "";
    if ($Nhacungcap) {
        foreach ($Nhacungcap as $data) {
            $id_Nhacungcap = $data['id_nhacungcap'];
            $tenNhacungcap = $data['tennhacungcap'];
            $trangthai = $data['trangthai'];
                        $output .= "
            <tr class='fs-4'>
            <td scope='col'>$id_Nhacungcap </td>
            <td scope='col'>$tenNhacungcap</td>
            <td scope='col'>$trangthai</td>
            <td class=' fs-5'>
            <div class='d-flex justify-content-around align-items-center control-wrap'>
             <i class='fa-solid fa-pen-to-square GetEdit-NhaCungCap' id_Nhacungcap='{$id_Nhacungcap}'  data-bs-toggle='modal' data-bs-target='#exampleModalEdit'></i>
                <i class='fa-solid fa-trash delete-Nhacungcap' id_Nhacungcap='{$id_Nhacungcap}'></i>
            </div>
            </td>
            </tr>
            ";
        }
        echo $output;
    } 
} 
else {
    echo "No Nhacungcaps found";
}
} 
if(isset($_POST['deleteNhaCungCap'])){
    $id_Nhacungcap = $_POST['id_NhaCungCap'];
    $trangthai = 'F';
    
    $NhacungcapModel = new NhacungcapModel();
    $NhacungcapModel->setID_Nhacungcap($id_Nhacungcap);
    $deleteNhacungcap = $NhacungcapCtrl->deleteNhacungcapCtrl($NhacungcapModel);
    if ($deleteNhacungcap) {
        echo 'xoa';
    }
}

if (isset($_POST['loadFormAddNhaCungCap'])) {
    $output = '';
    $output .= "<div class='modal-header'>
    <h5 class='modal-title' id='exampleModalLabel'>Thêm nhà cung cấp</h5>
    <button type='button' class='btn-close' data-bs-dismiss='modal' aria-label='Close'></button>
</div>
<div class='modal-body'>
    <div class='row mt-3'>
        <div class='col form-input-nhacungcap'>
            <h6>Tên nhà cung cấp</h6>
            <input class='input-nameNhacungcap' type='text' placeholder='VD: lehongthai..'>
        </div>
       
    </div>
    
    
    <div class='modal-footer'>
    <button type='button' class='btn btn-secondary close-Nhacungcap' data-bs-dismiss='modal'>Close</button>
    <button type='button' class='btn btn-primary submit-Nhacungcap'>Save</button>
</div>
        ";
    echo $output;
}

if (isset($_POST['insert_NhaCungCap'])) {
    $tenNhacungcap = $_POST['tenNhaCungCap'];
    $trangthai = 'T';
    $NhacungcapCtl = new NhacungcapCtrl();
    $NhacungcapModel = new NhacungcapModel();

        $NhacungcapModel->setTenNhacungcap($tenNhacungcap);
        $NhacungcapModel->setTrangthai($trangthai);

        $insertNhacungcap = $NhacungcapCtl->insertNhacungcapCtrl($NhacungcapModel);
        if ($insertNhacungcap) {
            echo 'add';
        }
    
}

if (isset($_POST['editNhaCungCap'])) {

    $id_Nhacungcap = $_POST['id_NhaCungCap'];
    
    $Nhacungcap = new NhacungcapView();

    $resultNhacungcap = $Nhacungcap->getIdNhacungcap($id_Nhacungcap);
   
    $output = "";
    $tennhacungcap = $resultNhacungcap['tennhacungcap'];
    $trangthai = $resultNhacungcap['trangthai'];
 
   
    
        $output .= "<div class='modal-header'>
        
        <h5 class='modal-title' id='exampleModalLabel'>Edit nhà cung cấp</h5>
            <button type='button' class='btn-close' data-bs-dismiss='modal' aria-label='Close'></button>
        </div>
        <div class='modal-body'>
        <div class='row mt-3'>
            <div class='col form-input-nhacungcap'>
                <h6>Tên nhà cung cấp</h6>
                <input class='input-nameNhacungcap' type='text' value = '$tennhacungcap'>
            </div>
            
        </div>
        
        <div class='row mt-3'>
            <div class='col active-tenNhacungcap' >
                <div class='form-check form-switch d-flex justify-content-start align-items-center'>";
                $isChecked = ($trangthai == 'T') ? 'checked' : '';
                $output .= "
                <input class='form-check-input' type='checkbox' id='flexSwitchCheckChecked' $isChecked name='active-NhaCungCap'>
                <label class='form-check-label fs-5 text-success fw-bold ms-3' for='flexSwitchCheckChecked'>Trạng thái</label>
                </div>
            </div>
            </div>
                <div class='modal-footer'>
                <button type='button' class='btn btn-secondary close-Nhacungcap' data-bs-dismiss='modal'>Close</button>
                <button type='button' class='btn btn-primary edit-Nhacungcap' id-Nhacungcap='$id_Nhacungcap'>Save</button>
            </div>
        </div>

            ";
        echo $output;
    }
    
if (isset($_POST['editNhaCungCapAll'])) {
    $id_Nhacungcap = $_POST['id_NhaCungCap'];
    $tenNhacungcap = $_POST['tenNhaCungCap'];
    $trangthai = $_POST['active_NhaCungCap'];
    $Nhacungcap = new NhacungcapCtrl();
    $NhacungcapModel = new NhacungcapModel;
    $NhacungcapModel->setID_Nhacungcap($id_Nhacungcap);
    $NhacungcapModel->setTenNhacungcap($tenNhacungcap);
    $NhacungcapModel->setTrangthai($trangthai);
    $EditNhacungcap = $Nhacungcap->updateNhacungcapCtrl($NhacungcapModel);
    if ($EditNhacungcap) {
        echo 'edit';
    }
}

?>