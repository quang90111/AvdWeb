$(document).ready(function () {
    
    $(".nhacungcap").click(function () {
        $.ajax({
            url: 'NhaCungCap.php',
            method: 'POST',
            data: {
            },
            success: function (data) {
                $("main").html(data);
                loadNhaCungCap();
            }
        })
    })

    $(document).on('keyup','#search_nhacungcap', function() {
        var input = $(this).val();
        $.ajax({
            url: '../function/loadNhaCungCap.php',
            method: 'POST',
            data: {
                loadNhaCungCap:1,
                search_NhaCungCap:1,
                input:input,
                
            },
            success: function (data) {
                $(".nhacungcap-wrapp").html(data);
                
            }
        })
    });
    $(document).on('click', '.delete-Nhacungcap', function () {
        var id_NhaCungCap = $(this).attr('id_Nhacungcap');
        var result = confirm("Bạn xác nhận hủy nha cung cấp ?");
        if (result) {
            $.ajax({
                url: '../function/loadNhaCungCap.php',
                method: 'POST',
                data: {
                    deleteNhaCungCap: 1,
                    id_NhaCungCap:id_NhaCungCap,
                },
                success: function (data) {
                    if(data.trim()=='xoa'){
                        alert('xoa nha cung cap thanh cong');
                        loadNhaCungCap();
                    }  
                }
            })
        }
    })
 // edit
 $(document).on('click', '.GetEdit-NhaCungCap', function () {
    var id_NhaCungCap = $(this).attr('id_NhaCungCap');
    $.ajax({
        url: '../function/loadNhaCungCap.php',
        method: 'POST',
        data: {
            editNhaCungCap: 1,
            id_NhaCungCap: id_NhaCungCap,
        },
        success: function (data) {
            $(".product-edit-form .modal-content").html(data);
        }
    })
})

$(document).on('click','.product-edit-form .edit-Nhacungcap',function(){
    var id_NhaCungCap = $(this).attr('id-Nhacungcap');
    var tenNhaCungCap = $('.product-edit-form .input-nameNhacungcap').val();
  
        if (checkValue(tenNhaCungCap)) {
                var active = $('.product-edit-form input[name="active-NhaCungCap"]').prop('checked')? 'T':'F';
             
      
                     $.ajax({
                    url: '../function/loadNhaCungCap.php',
                    method: 'POST',
                    data: {
                        editNhaCungCapAll: 1,
                        id_NhaCungCap:id_NhaCungCap,
                        tenNhaCungCap:tenNhaCungCap,
                        active_NhaCungCap:active
                    },
                    success: function (data) {
                        if(data.trim()=='edit'){
                            alert('Edit thành công');
                        }
                        loadNhaCungCap();
                        $(".close-Nhacungcap").click();
                    }
                })
            }
            else {
                alert("Vui lòng nhập tên nhà cung cấp");
                $(".input-nameNhacungcap").focus();
            }
        
               
})

   

     // add
     $(document).on('click', '.btn-add-Nhacungcap', function () {
        loadFormAddNhaCungCap();
    })

    $(document).on('click', '.product-add-form .submit-Nhacungcap', function () {
        var tenNhaCungCap = $('.product-add-form .input-nameNhacungcap').val();
        if (checkValue(tenNhaCungCap)) {
           
                            $.ajax({
                                url: '../function/loadNhaCungCap.php',
                                method: 'POST',
                                data: {
                                    insert_NhaCungCap: 1,
                                    tenNhaCungCap: tenNhaCungCap
                                },
                                success: function (data) {

                                    if(data.trim()=='add'){
                                        alert('Thêm thành công');
                                    }
                                    loadNhaCungCap();
                                    $(".close-Nhacungcap").click();
                                }
                            })
                        }else {
                            alert("Vui lòng nhập tên nhà cung cấp");
                            $(".input-nameNhacungcap").focus();
                            }
                        
                
    })
    function checkValue(data) {
        if (data == "" || data < 0) {
            return false;
        }
        return true;
    }

    function loadNhaCungCap(input) {
        $.ajax({
            url: '../function/loadNhaCungCap.php',
            method: 'POST',
            data: {
                loadNhaCungCap: 1,
                getdataNhaCungCap:1,
                input:input
            },
            success: function (data) {
                $(".nhacungcap-wrapp").html(data);
            }
        })
    
    }

    function loadFormAddNhaCungCap() {
        $.ajax({
            url: '../function/loadNhaCungCap.php',
            method: 'POST',
            data: {
                loadFormAddNhaCungCap: 1,
            },
            success: function (data) {
                $(".product-add-form .modal-content").html(data);
            }
        })
    }
    
})



