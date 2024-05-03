
$(document).ready(function () {
    
    $(".thuonghieu").click(function () {
        $.ajax({
            url: 'thuonghieu.php',
            method: 'POST',
            data: {
            },
            success: function (data) {
                $("main").html(data);
                loadThuonghieu();
            }
        })
    })

    $(document).on('keyup','#search_thuonghieu', function() {
        var input = $(this).val();
        $.ajax({
            url: '../function/loadThuonghieu.php',
            method: 'POST',
            data: {
                loadThuonghieu:1,
                search_Thuonghieu:1,
                input:input,
                
            },
            success: function (data) {
                $(".thuonghieu-wrapp").html(data);
                
            }
        })
    });
    $(document).on('click', '.delete-Thuonghieu', function () {
        var id_Thuonghieu = $(this).attr('id_Thuonghieu');
        var result = confirm("Bạn xác nhận hủy thương hiệu ?");
        if (result) {
            $.ajax({
                url: '../function/loadThuonghieu.php',
                method: 'POST',
                data: {
                    deleteThuonghieu: 1,
                    id_Thuonghieu:id_Thuonghieu,
                },
                success: function (data) {
                    if(data.trim()=='xoa'){
                        alert('xoa thuong hieu thanh cong');
                        loadThuonghieu();
                    }  
                }
            })
        }
    })
      

 // edit
 $(document).on('click', '.GetEdit-Thuonghieu', function () {
    var id_Thuonghieu = $(this).attr('id_Thuonghieu');
    $.ajax({
        url: '../function/loadThuonghieu.php',
        method: 'POST',
        data: {
            editThuonghieu: 1,
            id_Thuonghieu: id_Thuonghieu,
        },
        success: function (data) {
            $(".product-edit-form .modal-content").html(data);
        }
    })
})

$(document).on('click','.product-edit-form .edit-Thuonghieu',function(){
    var id_Thuonghieu = $(this).attr('id-Thuonghieu');
    var tenThuonghieu = $('.product-edit-form .input-nameThuonghieu').val();
    var img = $(".product-edit-form .file-inputthuonghieu").val();
        const imgSrc = $(".product-edit-form #image-thuonghieu").attr('src');
        const imgSrcName = imgSrc.split('/');
        const imgName = imgSrcName[imgSrcName.length - 1];
    if (checkValue(tenThuonghieu)) {
        if (checkValue(img)) {
                var active = $('.product-edit-form input[name="active-Thuonghieu"]').prop('checked')? 'T':'F';
                var image_name = $(".product-edit-form .file-inputthuonghieu")[0].files[0].name;
                
                     $.ajax({
                    url: '../function/loadThuonghieu.php',
                    method: 'POST',
                    data: {
                        editThuonghieuAll: 1,
                        id_Thuonghieu:id_Thuonghieu,
                        tenThuonghieu:tenThuonghieu,
                        image_name:image_name,
                        active_Thuonghieu:active
                    },
                    success: function (data) {
                        if(data.trim()=='edit'){
                            alert('Edit thành công');
                        }
                        loadThuonghieu();
                        $(".close-Thuonghieu").click();
                    $(".thuonghieu-wrapp").html(data);

                    }
                })
            }
            else {
                if(imgName){
                    var active = $('.product-edit-form input[name="active-Thuonghieu"]').prop('checked')? 'T':'F';
                var image_name = imgName;
                
                     $.ajax({
                    url: '../function/loadThuonghieu.php',
                    method: 'POST',
                    data: {
                        editThuonghieuAll: 1,
                        id_Thuonghieu:id_Thuonghieu,
                        tenThuonghieu:tenThuonghieu,
                        image_name:image_name,
                        active_Thuonghieu:active
                    },
                    success: function (data) {
                        if(data.trim()=='edit'){
                            alert('Edit thành công');
                        }
                        loadThuonghieu();
                        $(".close-Thuonghieu").click();
                    $(".thuonghieu-wrapp").html(data);

                    }
                })
                }
                
        }
        }
        else {
            alert("Vui lòng nhập tên nhà cung cấp");
            $(".input-nameThuonghieu").focus();
    }
        
               
})

 
     // add
     $(document).on('click', '.btn-add-thuonghieu', function () {
        loadFormAddThuonghieu();
    })

    $(document).on('click', '.product-add-form .submit-Thuonghieu', function () {
        
        var tenThuonghieu = $('.product-add-form .input-nameThuonghieu').val();
        var img = $(".product-add-form .file-inputthuonghieu").val();
        if (checkValue(tenThuonghieu)) {
            if (checkValue(img)) {
                var image_name = $(".product-add-form .file-inputthuonghieu")[0].files[0].name;

                            $.ajax({
                                url: '../function/loadThuonghieu.php',
                                method: 'POST',
                                data: {
                                    insert_Thuonghieu: 1,
                                    tenThuonghieu: tenThuonghieu,
                                    image:image_name
                                },
                                success: function (data) {

                                    if(data.trim()=='add'){
                                        alert('Thêm thành công');
                                    }
                                    loadThuonghieu();
                                    $(".close-Thuonghieu").click();
                                }
                                })
                             }else {
                            alert("Vui lòng chọn ảnh");
                            }
                        }else {
                            alert("Vui lòng nhập tên thương hiệu");
                                $(".input-nameThuonghieu").focus();
                            }      
    })
    $(document).on('change', '.product-add-form  .file-inputthuonghieu', function () {
        const file = $(this)[0].files[0];
        console.log(file);
        if (file.type.startsWith('image/')) {
            var reader = new FileReader();
            reader.addEventListener('load', function () {
                console.log(reader.result);
                $('.product-add-form #image-thuonghieu')[0].src = reader.result;
    
            })
            reader.readAsDataURL(file);
    
        } else {
            alert("Bạn phải chọn file ảnh");
        }
    })
    $(document).on('change', '.product-edit-form .file-inputthuonghieu', function () {
        const file = $(this)[0].files[0];
        console.log(file);
        if (file.type.startsWith('image/')) {
            var reader = new FileReader();
            reader.addEventListener('load', function () {
                console.log(reader.result);
                $('.product-edit-form #image-thuonghieu')[0].src = reader.result;

            })
            reader.readAsDataURL(file);

        } else {
            alert("Bạn phải chọn file ảnh");
        }
    })
    
    function checkValue(data) {
        if (data == "") {
            return false;
        }
        return true;
    }

    function loadThuonghieu(input) {
        $.ajax({
            url: '../function/loadThuonghieu.php',
            method: 'POST',
            data: {
                loadThuonghieu: 1,
                input:input
            },
            success: function (data) {
                $(".thuonghieu-wrapp").html(data);
            }
        })
    
    }

    function loadFormAddThuonghieu() {
        $.ajax({
            url: '../function/loadThuonghieu.php',
            method: 'POST',
            data: {
                loadFormAddThuonghieu: 1,
            },
            success: function (data) {
                $(".product-add-form .modal-content").html(data);
            }
        })
    }
    
})



