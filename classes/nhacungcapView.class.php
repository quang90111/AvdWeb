<?php
class NhacungcapView extends Nhacungcap

{
    public function getAllNhacungcap(){
        return $this->AllNhacungcap();
    }
    public function getIdNhacungcap($id){
        return $this->IdNhacungcap($id);
    }
    public function getInputNhacungcap($input){
        return $this->InputNhacungcap($input);
    }
    public function getNccAndTendt($data){
        return $this->NccAndTendt($data);
    }
    
}