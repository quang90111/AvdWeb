<?php
echo "<div class='d-flex justify-content-around align-items-center product-control-wrap w-80 product-admin-wrap'>
<h1 class='title'>Quản lí phiếu nhập</h1>
<div class='input-search'>
    
    <input type='text' id='search_phieunhap' placeholder='Search...'>
    <i class='bx bx-search-alt-2 icon'></i>
</div>
<button class='blob-btn btn-add-phieunhap' data-bs-toggle='modal' data-bs-target='#exampleModalAdd'>
    Tạo phiếu nhập
    <span class='blob-btn__inner'>
        <span class='blob-btn__blobs'>
            <span class='blob-btn__blob'></span>
            <span class='blob-btn__blob'></span>
            <span class='blob-btn__blob'></span>
            <span class='blob-btn__blob'></span>
        </span>
    </span>
</button>

</div>
<section class='intro phieunhap-admin'>
<div class='bg-image h-100' style='background-color: #f5f7fa;'>
    <div class='mask d-flex align-items-center h-100'>
        <div class='container p-0 m-auto'>
            <div class='row justify-content-center w-100'>
                <div class='col-12 p-0'>
                    <div class='card'>
                        <div class='card-body p-0'>
                            <div class='table-responsive' style='position: relative; height: 660px'>
                                <table class='table table-striped mb-0'>
                                    <thead style='background-color: #002d72;'>
                                        <tr class='fs-4' style='color:white;'>
                                            <th scope='col'>Id_Phiếu nhập </th>
                                            <th scope='col'>Mã phiếu nhập</th>
                                            <th scope='col'>Tổng tiền</th>
                                            <th scope='col'>Ngày nhập</th>
                                            <th scope='col'>Tổng số lượng</th>
                                            <th scope='col'>Trạng thái</th>
                                            <th scope='col'>Detail</th>
                                        </tr>
                                    </thead>
                                    <tbody class='phieunhap-wrapp'>
                                    
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</section>
";