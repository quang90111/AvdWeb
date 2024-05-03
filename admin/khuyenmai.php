<?php
echo "<div class='d-flex justify-content-around align-items-center product-control-wrap w-80 product-admin-wrap'>
<h1 class='title'>Quản lí khuyến mãi</h1>
<div class='input-search'>
    
    <input type='text' id='search_khuyenmai' placeholder='Search...'>
    <i class='bx bx-search-alt-2 icon'></i>
</div>
<button class='blob-btn btn-add-khuyenmai' data-bs-toggle='modal' data-bs-target='#exampleModalAdd'>
    Thêm khuyến mãi
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
<section class='intro khuyenmai-admin'>
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
                                            <th scope='col'>ID_khuyến mãi </th>
                                            <th scope='col'>Tên khuyến mãi</th>
                                            <th scope='col'>Mô tả khuyến mãi</th>
                                            <th scope='col'>Số giảm giá</th>
                                            <th scope='col'>Trạng thái</th>
                                            <th scope='col'>Thao tác</th>
                                        </tr>
                                    </thead>
                                    <tbody class='khuyenmai-wrapp'>
                                    
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
<div class='d-flex justify-content-center fs-3 mt-5 mx-0'>
<nav class='pagination-khuyenmai' aria-label='Page navigation example'>
   
</nav>
</div>";
