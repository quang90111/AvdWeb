<?php
// session_start();
// if (isset($_SESSION['auth_user']['id_nhanvien'])) {
//     header('location:admin/index.php');
// }

include_once "./DB/dbconnect.php"
?>
<?php
include 'header.php';
?>

<!-- Slider -->

<div class="slider container-fluid">
    <div class="position-relative">
        <img src="https://images.samsung.com/vn/smartphones/galaxy-s24/images/galaxy-s24-highlights-comparison.jpg?imbypass=true" alt="">
        <div class="slider_content">
            <h3 class="slider_title position-absolute">Samsung Galaxy S24</h3>
            <p class="slider_desc position-absolute">Galaxy AI đem đến kỷ nguyên mới của trải nghiệm di động</p>
            <button type="button" class="btn slider_btn position-absolute">Tìm hiểu thêm</button>
        </div>
    </div>
    <div class="position-relative">
        <img src="https://images.samsung.com/vn/smartphones/galaxy-s24-ultra/images/galaxy-s24-ultra-highlights-color-titanium-gray-back.jpg?imbypass=true" alt="">
        <div class="slider_content">
            <h3 class="slider_title position-absolute">Samsung Galaxy S24 Ultra </h3>
            <p class="slider_desc position-absolute">Mỗi Điểm Ảnh, Một Điểm Yêu</p>
            <button type="button" class="btn slider_btn position-absolute">Tìm hiểu thêm</button>
        </div>
    </div>
    <div class="position-relative">
        <img src="https://www.apple.com/vn/iphone-15-pro/images/overview/closer-look/all_colors__eppfcocn9mky_large.jpg" alt="">
        <div class="slider_content">
            <h3 class="slider_title position-absolute">Iphone 15 Pro </h3>
            <p class="slider_desc position-absolute">Công nghệ vượt bậc </p>
            <button type="button" class="btn slider_btn position-absolute">Tìm hiểu thêm</button>
        </div>
    </div>
</div>

<!-- Brands -->
<?php
include './homepage.php';
?>
<!-- <div class="brands container" id="brands">
        <h2 class="brands_title text-center">Về Thương Hiệu</h2>
        <div class="row brand_list position-relative">
            <div class="col-xxl-6 col-md-6 col-sm-12 brand_item">
                <h4 class="brand_item-name">Iphone</h4>
                <img class="brand_item-img" src="./assets/img/iphone.jpg" alt="">
            </div>
            <div class="col-xxl-6 col-md-6 col-sm-12 brand_item">
                <h4 class="brand_item-name">Apple</h4>
                <img class="brand_item-img" src="./assets/img/huawei.jpg" alt="">
            </div>
            <div class="col-xxl-6 col-md-6 col-sm-12 brand_item">
                <h4 class="brand_item-name">Apple</h4>
                <img class="brand_item-img" src="https://cdn.dribbble.com/userupload/4722244/file/original-9ccb9f986b907cc7ea6c010d2c2c120f.png?compress=1&resize=1024x768" alt="">
            </div>
        </div>
    </div> -->
<!-- Hot -->
<div class="container-fluid bg-black hots_wrap">
    <div class="brands container" id="hots">
        <h2 class="brands_title text-center">Về Bán Chạy</h2>
        <div class="row position-relative" id="hots_list">
            <div class="col-xxl-6 col-md-6 col-sm-12 brand_item">
                <h4 class="brand_item-name">Apple </h4>
                <img class="brand_item-img" src="https://cdn.dribbble.com/userupload/13303278/file/original-0c0363bf6832937866915f6c3aaa0bc9.jpg?resize=320x240&vertical=center" alt="">
            </div>
            <div class="col-xxl-6 col-md-6 col-sm-12 brand_item">
                <h4 class="brand_item-name">Samsung </h4>
                <img class="brand_item-img" src="https://cdn.dribbble.com/userupload/12537559/file/original-049ab71f0fc9034cfaee7e1a21654847.png?crop=0x0-1080x810&resize=320x240&vertical=center" alt="">
            </div>
            <div class="col-xxl-6 col-md-6 col-sm-12 brand_item">
                <h4 class="brand_item-name">Xiaomi </h4>
                <img class="brand_item-img" src="https://cdn.dribbble.com/users/13354689/screenshots/19556161/media/b3a43615362b84de3925e520cedac78e.png?resize=320x240&vertical=center" alt="">
            </div>
            <div class="col-xxl-6 col-md-6 col-sm-12 brand_item">
                <h4 class="brand_item-name">Oppo </h4>
                <img class="brand_item-img" src="https://cdn.dribbble.com/users/1173633/screenshots/5765718/media/6dc7b862a08b88a9a71fceff5c482b56.gif?resize=320x240&vertical=center" alt="">
            </div>
            <div class="col-xxl-6 col-md-6 col-sm-12 brand_item">
                <h4 class="brand_item-name">Huawei </h4>
                <img class="brand_item-img" src="https://cdn.dribbble.com/userupload/5603856/file/original-ffa2516eec0d8a4bea8ebd08ac5be69a.png?crop=73x162-1079x916&resize=320x240&vertical=center" alt="">
            </div>
            <div class="col-xxl-6 col-md-6 col-sm-12 brand_item">
                <h4 class="brand_item-name">Google </h4>
                <img class="brand_item-img" src="https://cdn.dribbble.com/userupload/3106208/file/original-6e0ab04d2545b4bf7546eea49b230b4d.png?resize=320x240&vertical=center" alt="">
            </div>
        </div>
    </div>
</div>
<?php
include 'footer.php';
?>