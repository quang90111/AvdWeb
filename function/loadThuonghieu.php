<?php
include '../includes/autoload.php';
$ThuonghieuView = new ThuonghieuView();
$ThuonghieuCtrl = new ThuonghieuCtrl();
if (isset($_POST['loadThuonghieu'])) {
    
    
        if (isset($_POST['search_Thuonghieu'])!='') {
            $input = $_POST['input'];
            $Thuonghieu = $ThuonghieuView->getInputThuonghieu($input);
        }else{
            $Thuonghieu = $ThuonghieuView->getAllThuonghieu();
        }
    
    $output = '';

if (isset($Thuonghieu) && is_array($Thuonghieu)) {
    $output = "";
    if ($Thuonghieu) {
        foreach ($Thuonghieu as $data) {
            $id_Thuonghieu = $data['id_thuonghieu'];
            $tenThuonghieu = $data['tenthuonghieu'];
            $anh = $data['anh'];
            $trangthai = $data['trangthai'];
                        $output .= "
            <tr class='fs-4'>
            <td scope='col'>$id_Thuonghieu </td>
            <td scope='col'>$tenThuonghieu</td>
            <td scope='col'><img src='../assets/img/$anh' style='width:100px; height:100px'></td>
            <td scope='col'>$trangthai</td>
            <td class=' fs-5'>
            <div class='d-flex justify-content-around align-items-center control-wrap'>
             <i class='fa-solid fa-pen-to-square GetEdit-Thuonghieu' id_Thuonghieu='{$id_Thuonghieu}'  data-bs-toggle='modal' data-bs-target='#exampleModalEdit'></i>
                <i class='fa-solid fa-trash delete-Thuonghieu' id_Thuonghieu='{$id_Thuonghieu}'></i>
            </div>
            </td>
            </tr>
            ";
        }
        echo $output;
    } 
} 
else {
    echo "No Thuonghieus found";
}
} 
if(isset($_POST['deleteThuonghieu'])){
    $id_Thuonghieu = $_POST['id_Thuonghieu'];
    $trangthai = 'F';
    
    $ThuonghieuModel = new ThuonghieuModel();
    $ThuonghieuModel->setID_Thuonghieu($id_Thuonghieu);
    $deleteThuonghieu = $ThuonghieuCtrl->deleteThuonghieuCtrl($ThuonghieuModel);
    if ($deleteThuonghieu) {
        echo 'xoa';
    }
}

if (isset($_POST['loadFormAddThuonghieu'])) {
    $output = '';
    $output .= "<div class='modal-header'>
    <h5 class='modal-title' id='exampleModalLabel'>Thêm thương hiệu</h5>
    <button type='button' class='btn-close' data-bs-dismiss='modal' aria-label='Close'></button>
</div>
<div class='modal-body'>
    <div class='row mt-3'>
        <div class='col form-input-thuonghieu'>
            <h6>Tên thương hiệu</h6>
            <input class='input-nameThuonghieu' type='text' placeholder='VD: lehongthai..'>
        </div>
        <div class='col'>
            <h6>Ảnh thương hiệu</h6>
            <input type='file' class='file-inputthuonghieu'>
             <div class='image-thuonghieu'>
                    <img id='image-thuonghieu' src='' alt='Preview image'>
            </div>
        </div>
    </div>
    
    
    <div class='modal-footer'>
    <button type='button' class='btn btn-secondary close-Thuonghieu' data-bs-dismiss='modal'>Close</button>
    <button type='button' class='btn btn-primary submit-Thuonghieu'>Save</button>
</div>
        ";
    echo $output;
}

if (isset($_POST['insert_Thuonghieu'])) {
    $tenThuonghieu = $_POST['tenThuonghieu'];
    $image = $_POST['image'];
    $trangthai = 'T';
    $ThuonghieuCtl = new ThuonghieuCtrl();
    $ThuonghieuModel = new ThuonghieuModel();

  



        $ThuonghieuModel->setTenThuonghieu($tenThuonghieu);
        $ThuonghieuModel->setanhthuonghieu($image);
        $ThuonghieuModel->setTrangthai($trangthai);

        $insertThuonghieu = $ThuonghieuCtl->insertThuonghieuCtrl($ThuonghieuModel);
        if ($insertThuonghieu) {
            echo 'add';
        }
    
}

if (isset($_POST['editThuonghieu'])) {

    $id_Thuonghieu = $_POST['id_Thuonghieu'];
    
    $Thuonghieu = new ThuonghieuView();

    $resultThuonghieu = $Thuonghieu->getIdThuonghieu($id_Thuonghieu);
    
    $output = "";
    $tenThuonghieu = $resultThuonghieu['tenthuonghieu'];
    $anh = $resultThuonghieu['anh'];
    $trangthai = $resultThuonghieu['trangthai'];
 
   
    
        $output .= "<div class='modal-header'>
        
        <h5 class='modal-title' id='exampleModalLabel'>Edit nhà cung cấp</h5>
            <button type='button' class='btn-close' data-bs-dismiss='modal' aria-label='Close'></button>
        </div>
        <div class='modal-body'>
        <div class='row mt-3'>
            <div class='col form-input-Thuonghieu'>
                <h6>Tên nhà cung cấp</h6>
                <input class='input-nameThuonghieu' type='text' value = '$tenThuonghieu'>
            </div>
            <div class='col'>
            <h6>Ảnh thương hiệu</h6>
           <input type='file' class='file-inputthuonghieu'>
               <div class='image-thuonghieu'>
           <img id='image-thuonghieu' src='../assets/img/$anh' style='width:100px; height:100px' alt='Preview image'>
           
   </div>
        </div>
        
        <div class='row mt-3'>
            <div class='col active-tenThuonghieu' >
                <div class='form-check form-switch d-flex justify-content-start align-items-center'>";
                $isChecked = ($trangthai == 'T') ? 'checked' : '';
                $output .= "
                <input class='form-check-input' type='checkbox' id='flexSwitchCheckChecked' $isChecked name='active-Thuonghieu'>
                <label class='form-check-label fs-5 text-success fw-bold ms-3' for='flexSwitchCheckChecked'>Trạng thái</label>
                </div>
        </div>
            </div>
            </div>
                <div class='modal-footer'>
                <button type='button' class='btn btn-secondary close-Thuonghieu' data-bs-dismiss='modal'>Close</button>
                <button type='button' class='btn btn-primary edit-Thuonghieu' id-Thuonghieu='$id_Thuonghieu' anh='$anh'>Save</button>
            </div>
        </div>

            ";
        echo $output;
    }
    
if (isset($_POST['editThuonghieuAll'])) {
    $id_Thuonghieu = $_POST['id_Thuonghieu'];
    $tenThuonghieu = $_POST['tenThuonghieu'];
    $image_name = $_POST['image_name'];
    
    $trangthai = $_POST['active_Thuonghieu'];
    $Thuonghieu = new ThuonghieuCtrl();
    $ThuonghieuModel = new ThuonghieuModel;
    $ThuonghieuModel->setID_Thuonghieu($id_Thuonghieu);
    $ThuonghieuModel->setTenThuonghieu($tenThuonghieu);
    $ThuonghieuModel->setanhthuonghieu($image_name);
    $ThuonghieuModel->setTrangthai($trangthai);
    $EditThuonghieu = $Thuonghieu->updateThuonghieuCtrl($ThuonghieuModel);
    if ($EditThuonghieu) {
        echo 'edit';
    }
}

?>