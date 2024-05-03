<?php
class CartCtrl extends Cart
{
    public function inserCartCtrl(CartModel $cart)
    {
        return $this->insertCart($cart);
    }

    public function insertCartDetailCtrl(CartDetailModel $cart)
    {
        return $this->insertDetailCart($cart);
    }

    public function updateCancelStatusOrderCtrl($id_order)
    {
        return $this->updateCancelStatusOrder($id_order);
    }
}
