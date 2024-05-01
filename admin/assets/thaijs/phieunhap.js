$(document).ready(function () {

    $(".coupon").click(function () {
        $.ajax({
            url: 'Tphieunhap.php',
            method: 'POST',
            data: {
            },
            success: function (data) {
                $("main").html(data);
                loadPhieunhap();
            }
        })
    })

    $(document).on('keyup', '#search_phieunhap', function () {
        var input = $(this).val();
        $.ajax({
            url: '../function/Tloadphieunhap.php',
            method: 'POST',
            data: {
                loadPhieunhap: 1,
                search_Phieunhap: 1,
                input: input,

            },
            success: function (data) {
                $(".phieunhap-wrapp").html(data);

            }
        })
    });

    // edit
    $(document).on('click', '.Detail-Phieunhap', function () {
        var id_Phieunhap = $(this).attr('id_Phieunhap');
        var trangthaiPn =$(this).attr('trangthai');
        $.ajax({
            url: '../function/Tloadphieunhap.php',
            method: 'POST',
            data: {
                DetailPhieunhap: 1,
                id_Phieunhap: id_Phieunhap,
                trangthaiPn: trangthaiPn
            },
            success: function (data) {
                $(".product-edit-form .modal-content").html(data);

                
            }
        })
    })

    $(document).on('click', '.Huy_PN', function () {
        var id_phieunhap = $(this).attr('id_phieunhap');
        $.ajax({
            url: '../function/Tloadphieunhap.php',
            method: 'POST',
            data: {
                HuyPhieuNhap: 1,
                id_phieunhap: id_phieunhap
            },
            success: function (data) {
                // $(".phieunhap-wrapp").html(data);
                loadPhieunhap();
                $(".close-EditPhieunhap").click();
            }
        })
    })


    $(document).on('click', '.HoanTat_PN', function () {
        var id_phieunhap = $(this).attr('id_phieunhap');
        
        $.ajax({
            url: '../function/Tloadphieunhap.php',
            method: 'POST',
            data: {
                HoanTat_PN: 1,
                id_phieunhap: id_phieunhap
            },
            success: function (data) {
                // $(".phieunhap-wrapp").html(data);
                loadPhieunhap();
                $(".close-EditPhieunhap").click();
            }
            
        })
    })
    // add
    $(document).on('click', '.btn-add-phieunhap', function () {
        loadFormAddPhieunhap();
        tempArr = [];
    })

    $(document).on('change', '.product-add-form #PN_id_nhacungcap', function () {
        var idNCC = $(this).val();
        tempArr = [];
        $.ajax({
            url: '../function/Tloadphieunhap.php',
            method: 'POST',
            data: {
                loadFormAddPhieunhap: 1,
                idNCC: idNCC
            },
            success: function (data) {
                $(".product-add-form .modal-content").html(data);
            }
        })
    });

    // tạo 1 mảng lưu các giá trị
    var tempArr = [];
    $(document).on('click', '.product-add-form .them-dataPN', function () {
        var tendt = $('#PN_id_dienthoai option:selected').text();
        var gia = $('.product-add-form .input-price_phieunhap').val();
        var soluong = $('.product-add-form .input-quantity_phieunhap').val();


        if (checkgia(gia)) {
            if (checkValue(soluong)) {
                var id_nhacungcap = $('.product-add-form #PN_id_nhacungcap').val();
                var id_dienthoai = $('.product-add-form #PN_id_dienthoai').val();
                var rowHTML = generateTableRow(tempArr.length, id_nhacungcap, tendt, id_dienthoai, gia, soluong);

                tempArr.push({
                    id_nhacungcap: id_nhacungcap,
                    tendt: tendt,
                    id_dienthoai: id_dienthoai,
                    gia: gia,
                    soluong: soluong,
                });

                var exists = false;
                for (var i = 0; i < tempArr.length; i++) {
                    if (tempArr[i].id_dienthoai === id_dienthoai) {
                        exists = true;
                        // Gắn sự kiện distatable cho ô input gia
                        $('.product-add-form .input-price_phieunhap').prop('disabled', true);
                        break;
                    }
                }
                if (!exists) {
                    // Cho phép nhập giá
                    $('.product-add-form .input-price_phieunhap').prop('disabled', false);
                }

                var tong_soluong = 0;
                var tong_gia = 0;

                for (var i = 0; i < tempArr.length; i++) {
                    tong_soluong += parseInt(tempArr[i].soluong);
                    tong_gia += parseFloat(tempArr[i].gia) * parseInt(tempArr[i].soluong);
                }
                $('.tong_soluong').text(tong_soluong);
                $('.tong_gia').text(tong_gia.toLocaleString('vi-VN') + ' VND');


                $.ajax({
                    url: '../function/Tloadphieunhap.php',
                    method: 'POST',
                    data: {
                    },
                    success: function (data) {
                        $(".taget").append(rowHTML);
                    }
                })
            }
            else {
                alert("Vui lòng nhập số lượng");
                $(".input-quantity_phieunhap").focus();
            }
        } else {
            alert("Vui lòng nhập lại giá ");
            $(".input-price_phieunhap").focus();
        }
        // Clear the form
        $('.input-price_phieunhap').val(0);
        $('.input-quantity_phieunhap').val(0);


    })

    $(document).on('change', '.product-add-form #PN_id_dienthoai', function () {
        var id_dt = $(this).val();
        var exists = false;
        for (var i = 0; i < tempArr.length; i++) {
            if (tempArr[i].id_dienthoai === id_dt) {
                exists = true;
                // Gắn sự kiện distatable cho ô input gia
                $('.product-add-form .input-price_phieunhap').prop('disabled', true);
                break;
            }
        }
        if (!exists) {
            // Cho phép nhập giá
            $('.product-add-form .input-price_phieunhap').prop('disabled', false);
        }
    });

    $(document).on('click', '.them-PN', function () {
        var gia = $('.product-add-form .input-price_phieunhap').val();
        var soluong = $('.product-add-form .input-quantity_phieunhap').val();
        var id_nhacungcap = $('.product-add-form #PN_id_nhacungcap').val();
        var id_dienthoai = $('.product-add-form #PN_id_dienthoai').val();

        tempArr.push({
            id_nhacungcap: id_nhacungcap,
            id_dienthoai: id_dienthoai,
            gia: gia,
            soluong: soluong,
        });
        tempArr.pop();
        var tong_soluong = 0;
        var tong_gia = 0;

        for (var i = 0; i < tempArr.length; i++) {
            tong_soluong += parseInt(tempArr[i].soluong);
            tong_gia += parseFloat(tempArr[i].gia) * parseInt(tempArr[i].soluong);
        }

        if (tong_gia == 0) {
            alert('Vui long chon san pham ');
        }
        $.ajax({
            url: '../function/Tloadphieunhap.php',
            method: 'POST',
            data: {
                tempArr: tempArr,
                id_nhacungcap: id_nhacungcap,
                tong_soluong: tong_soluong,
                tong_gia: tong_gia,
            },
            success: function (data) {

                if (data.trim() == 'add') {
                    alert('Tạo phiếu nhập thành công');
                }
                loadPhieunhap();
                $(".close-Phieunhap").click();
            }
        })

        $(".taget").text('');
        $('.tong_soluong').text('0');
        $('.tong_gia').text('0 VND');

        tempArr = [];
    })


    function generateTableRow(stt, id_nhacungcap, tendienthoai, id_dienthoai, gia, soluong) {
        stt += 1;
        return '<tr data-stt="' + id_dienthoai + '">' +
            '<td>' + id_dienthoai + '</td>' +
            '<td>' + tendienthoai + '</td>' +
            '<td>' + soluong + '</td>' +
            '<td>' + parseInt(gia) + '</td>' +
            '</tr>';
    }


    function checkValue(data) {
        if (data == "" || data <= 0) {
            return false;
        }
        return true;
    }
    function checkgia(data) {
        const regex = /^[0-9]\d*$/;

        const matches = data.match(regex);
        if (matches == null || data == 0) {
            return false;
        }
        return true;
    }

    function loadPhieunhap(input) {
        $.ajax({
            url: '../function/Tloadphieunhap.php',
            method: 'POST',
            data: {
                loadPhieunhap: 1,
                getdataPhieunhap: 1,
                input: input
            },
            success: function (data) {
                $(".phieunhap-wrapp").html(data);
            }
        })

    }

    function loadFormAddPhieunhap() {
        $.ajax({
            url: '../function/Tloadphieunhap.php',
            method: 'POST',
            data: {
                loadFormAddPhieunhap: 1,
            },
            success: function (data) {
                $(".product-add-form .modal-content").html(data);
            }
        })
    }

})



