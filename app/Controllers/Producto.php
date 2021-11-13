<?php

namespace App\Controllers;

use App\Models\ProductoModelo;

class Producto extends BaseController
{
    public function index()
    {
        return view('registroProducto');
    }

    public function registrar()
    {
        $producto=$this->request->getPost("producto");
        $fotografia=$this->request->getPost("fotografia");
        $precio=$this->request->getPost("precio");
        $descripcion=$this->request->getPost("descripcion");
        $tipo=$this->request->getPost("tipo");
        
        if($this->validate('registroProducto'))
        {


           try{
                $modelo = new ProductoModelo();

                $datos = array(

                    "nombre"=>$producto,
                    "foto"=>$fotografia,
                    "precio"=>$precio,
                    "descripcion"=>$descripcion,
                    "tipo"=>$tipo
                );
               
                $modelo->insert($datos);

                $mensaje ="Ingreso Exitoso";
                return redirect()->to(site_url('/productos/registro'))->with('mensaje',$mensaje);
           }
           catch(\Exception $error)
           {
                $mensaje =$error -> getMessage();
                return redirect()->to(site_url('/productos/registro'))->with('mensaje',$mensaje);
           }
            



        }
        else{
            $mensaje="tenemos campos sin llenar";
            return redirect()->to(site_url('/productos/registro'))->with('mensaje',$mensaje);
        }
        
    }

    Public function buscar()
    {
        try{
                $modelo=new ProductoModelo();

                $resultado=$modelo -> findAll();

                $productos = array("productos"=>$resultado);

                

                return view('listaProductos',$productos);
        }
        catch(\Exception $error)
        {
            $mensaje =$error -> getMessage();
            return redirect()->to(site_url('/productos/registro'))->with('mensaje',$mensaje);

        }

    }

    public function eliminar($id)
    {
        try{
            $modelo = new ProductoModelo();
            
            $modelo ->where('id',$id)->delete();

            $mensaje ="Producto Eliminado";
            return redirect()->to(site_url('/productos/registro'))->with('mensaje',$mensaje);

        }  catch(\Exception $error)   
        {
            $mensaje =$error -> getMessage();
            return redirect()->to(site_url('/productos/registro'))->with('mensaje',$mensaje);
        }
    }

    public function editar($id)
    {
        $producto=$this->request->getPost("producto");
        $precio=$this->request->getPost("precio");
        $descripcion=$this->request->getPost("descripcion");
        
        if($this->validate('editproducto'))
        {


           try{
                $modelo = new ProductoModelo();

                $datos = array(

                    "nombre"=>$producto,
                    "precio"=>$precio,
                    "descripcion"=>$descripcion
                    
                );
               
                $modelo->update($id,$datos); 

                $mensaje ="Editado con Exito";
                return redirect()->to(site_url('/productos/registro'))->with('mensaje',$mensaje);
           }
           catch(\Exception $error)
           {
                $mensaje =$error -> getMessage();
                return redirect()->to(site_url('/productos/registro'))->with('mensaje',$mensaje);
           }
            



        }
        else{
            $mensaje="tenemos campos sin llenar";
            return redirect()->to(site_url('/productos/registro'))->with('mensaje',$mensaje);
        }
              
    }
   
}
