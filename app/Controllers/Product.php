<?php


namespace App\Controllers;


use \App\Models\ProductModel;

class Product extends BaseController
{
    public function all(){
        $title = "Главная страница";

        $productModel = new ProductModel();
        $products = $productModel->paginate(10);
        $pager = $productModel->pager;
        return view('products/all',[
            'title' => $title,
            'products' => $products,
            'pager' => $pager,
        ]);
    }

    public function add(){

        helper(['form']);
        $product = new ProductModel();
        $data = [];

        if($this->request->getMethod() == 'post'){

            $rules = [
                'name' => 'required',
                'new_price' => 'required'
            ];

            if($this->validate($rules)){

                $productData = $_POST;

                if(!empty($productData['status'])){
                    $productData['status'] = 1;
                }

                if(!empty($productData['top'])){
                    $productData['top'] = 1;
                }

                if(!empty($productData['new'])){
                    $productData['new'] = 1;
                }

                if(!empty($productData['sale'])){
                    $productData['sale'] = 1;
                }

                if($product->db->table('product')->insertBatch($productData)){

                    return redirect()->route('Product::all');
                }

            }else{
                $data['validation'] = $this->validator;
            }

        }

        return view('products/form', $data);
    }

    public function update($id){

        $productModel = new ProductModel();
        $productData = $productModel->find(['id' => $id])[0];

        if($this->request->getMethod() == 'post'){

            $productData = $_POST;

            if(!empty($productData['status'])){
                $productData['status'] = 1;
            }else{
                $productData['status'] = 0;
            }

            if(!empty($productData['top'])){
                $productData['top'] = 1;
            }else{
                $productData['top'] = 0;
            }

            if(!empty($productData['new'])){
                $productData['new'] = 1;
            }else{
                $productData['new'] = 0;
            }

            if(!empty($productData['sale'])){
                $productData['sale'] = 1;
            }else{
                $productData['sale'] = 0;
            }

            if($productModel->db->table('product')->update($productData,['id'=> $id])){

                return redirect()->route('Product::all');
            }
        }

        return view('products/update',[
            'productData' => $productData,
        ]);
    }

    public function delete($id = null){
        $product = new ProductModel();
        $product->where('id',$id)->delete();
        return redirect()->route('Product::all');
    }
}