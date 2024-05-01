<?php
class PhieunhapView extends Phieunhap

{
    public function getAllPhieunhap(){
        return $this->AllPhieunhap();
    }
   

    public function getIdPhieunhap($id){
        return $this->IdPhieunhap($id);
    }
    public function getInputPhieunhap($input){
        return $this->InputPhieunhap($input);
    }

    
}