<?php
session_start();
if (!isset($_SESSION['auth']) && !isset($_SESSION['auth_user']['id_nhanvien'])) {
    header('location:../index.php');
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/main123.css">
    <link rel="stylesheet" href="../assets/css/admin.css">

    <link rel="stylesheet" href="assets/css/main12.css">

    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.js"></script>

    <title>Admin</title>
</head>

<body>

    <section id="sidebar">

        <a href="#" class="brand"><i></i> Smartphone</a>
        <ul class="side-menu">
            <li class="divider">MAIN</li>
            <li class="manager">
                <a href="#"><i class="bx bxs-inbox icon"></i> Quản lý <i class="bx bx-chevron-right icon-right"></i></a>
                <ul class="side-dropdown">
                    <li class="baohanh"><a href="#">Quản lý bảo hành</a></li>
                    <li class="khuyenmai"><a href="#">Quản lý khuyến mãi</a></li>
                    <li class="nhanvien"><a href="#">Danh sách nhân viên</a></li>
                    <li class="khachhang"><a href="#">Danh sách khachhang</a></li>
                    <li class="thuonghieu"><a href="#">Quản lý thương hiệu</a></li>
                    <li class="nhacungcap"><a href="#">Quản lý nhà cung cấp</a></li>
                </ul>
            </li>
            <li class="productAdmin"><a href="#"><i class="bx bx-package icon active"></i> Sản phẩm </a></li>
            <li class="order"><a href="#"><i class="bx bx-clipboard icon"></i> Đơn hàng </a></li>
            <li class="coupon"><a href="#"><i class="bx bx-money-withdraw icon"></i> Phiếu nhập </a></li>
            <li class="divider">Table and forms</li>
            <!-- <li><a href="#"><i class="bx bx-table icon"></i> Tables </a></li> -->
            <li class="statistic">
                <a href="#"><i class="bx bxs-chart icon"></i> Thống kê<i class="bx bx-chevron-right icon-right"></i></a>
                <ul class="side-dropdown">
                    <li><a href="#">Thống kê hoá đơn</a></li>
                    <li><a href="#">Thống kê tổng tiền</a></li>
                    <li class="thongkesanpham"><a href="#">Thống kê sản phẩm</a></li>
                    <li><a href="#">Thống kê khách hàng</a></li>
                </ul>
            </li>

            <li class="account"><a href="#"><i class="bx bx-clipboard icon"></i>Quản lý tài khoản </a></li>


        </ul>
    </section>

    <!--NAVBAR-->
    <section id="content">
        <!--NAVBAR-->
        <nav>
            <i class="bx bx-menu toggle-sidebar" style="margin-right: auto;"></i>

           
            <span class="divider"></span>
            <div class="profile">
                <img src="assets/img/tải xuống (2).png" alt="">
                <span class="user-name-text">
                    <?php
                    if (isset($_SESSION['auth_user'])) {
                        echo $_SESSION['auth_user']['username'];
                    }
                    ?>
                </span>
                <ul class="profile-link">
                    <!-- <li><a href="#"><i class="bx bxs-user-circle icon"></i>Profile</a></li>
                    <li><a href="#"><i class="bx bxs-cog icon"></i>Settings</a></li> -->
                    <li class="logout"><a href="#"><i class="bx bxs-log-out-circle icon"></i>Logout</a></li>
                </ul>
            </div>
        </nav>
        <!--NAVBAR-->
        <!--MAIN-->
        <main>



        </main>

        <!--MAIN-->

    </section>

    <!-- Modal -->
    <div class="modal fade product-add-form" id="exampleModalAdd" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">

            </div>
        </div>
    </div>
    <!-- Modal edit product -->
    <div class="modal fade product-edit-form" id="exampleModalEdit" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">

            </div>
        </div>
    </div>

    <!-- Modal detail order -->
    <div class="modal fade product-order-form" id="exampleModalOrder" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <!-- Order details -->
            </div>

        </div>
    </div>

    <!-- Modal alert -->

    <!--NAVBAR-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-table2excel@1.1.1/dist/jquery.table2excel.min.js"></script>

    <script src ='assets/web2/accountLHT.js'></script>
    <script src ='assets/web2/HTaccount.js'></script>
    <script src ='assets/web2/TBaoHanh.js'></script>
    <script src='assets/web2/nhanvienTH.js'></script>
    <script src='assets/web2/khachhang.js'></script>
    <script src='assets/web2/Tkhuyenmai.js'></script>
    <script src='assets/web2/nhacungcap.js'></script>
    <script src='assets/web2/thuonghieu.js'></script>
    <script src='assets/web2/phieunhap.js'></script>
    <script src='assets/web2/QuanLy.js'></script>
    <script src="assets/web2/index.js"></script>
    <script src="assets/web2/thongke.js"></script>



</body>

</html>