$(document).ready(function () {
    
    $(".thongkesanpham").click(function () {
        alert(123);
        $.ajax({
            url: 'thongke.php',
            method: 'POST',
            data: {
                thongke:1,
            },
            success: function (data) {
                $("main").html(data);
            }
        })
    })
})