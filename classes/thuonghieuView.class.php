<?php
class ThuonghieuView extends Thuonghieu

{
    public function getAllThuonghieu(){
        return $this->AllThuonghieu();
    }
    public function getIdThuonghieu($id){
        return $this->IdThuonghieu($id);
    }
    public function getInputThuonghieu($input){
        return $this->InputThuonghieu($input);
    }

    
}