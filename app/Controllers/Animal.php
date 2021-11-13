<?php

namespace App\Controllers;
use App\Models\AnimalModelo;
class Animal extends BaseController
{
    public function index()
    {
        return view('registroAnimal');
    }

    public function registrarA()
    {
        $nombre=$this->request->getPost("nombre");
        $edad=$this->request->getPost("edad");
        $foto=$this->request->getPost("foto");
        $descripcion=$this->request->getPost("descripcion");
        $tipo=$this->request->getPost("tipo");

        if($this->validate('registroAnimal')){
            
            try{
                $modelo = new AnimalModelo();
                
                $datos = array(
                    "nombre"=>$nombre,
                    "edad"=>$edad,
                    "foto"=>$foto,
                    "descripcion"=>$descripcion,
                    "tipo"=>$tipo
                );
                $modelo->insert($datos);

                $mensaje ="Ingreso Exitoso";
                return redirect()->to(site_url('/Animales/registro'))->with('mensaje',$mensaje);
            }catch(\Exception $error)
            {
                $mensaje =$error -> getMessage();
                return redirect()->to(site_url('/Animales/registro'))->with('mensaje',$mensaje);
            }

        }
        else{

            $mensaje="tenemos campos sin llenar";
            return redirect()->to(site_url('/Animales/registro'))->with('mensaje',$mensaje);
            
        }
      
    }
    Public function buscar()
    {
        try{
                $modelo=new AnimalModelo();

                $resultado=$modelo -> findAll();

                $animales = array("animales"=>$resultado);

                

                return view('listaAnimales',$animales);
        }
        catch(\Exception $error)
        {
            $mensaje =$error -> getMessage();
            return redirect()->to(site_url('/Animales/registro'))->with('mensaje',$mensaje);

        }

    }
    public function eliminar($id)
    {
        try{
            $modelo = new AnimalModelo();
            
            $modelo ->where('id',$id)->delete();

            $mensaje ="Animal adoptado o muerto";
            return redirect()->to(site_url('/Animales/registro'))->with('mensaje',$mensaje);

        }  catch(\Exception $error)   
        {
            $mensaje =$error -> getMessage();
            return redirect()->to(site_url('/animales/registro'))->with('mensaje',$mensaje);
        }
    }
    public function editar($id)
    {
        $nombre=$this->request->getPost("nombre");
        $edad=$this->request->getPost("edad");
        $descripcion=$this->request->getPost("descripcion");
        
        if($this->validate('editanimal'))
        {


           try{
                $modelo = new AnimalModelo();

                $datos = array(

                    "nombre"=>$nombre,
                    "edad"=>$edad,
                    "descripcion"=>$descripcion
                    
                );
               
                $modelo->update($id,$datos); 

                $mensaje ="Editado con Exito";
                return redirect()->to(site_url('/Animales/registro'))->with('mensaje',$mensaje);
           }
           catch(\Exception $error)
           {
                $mensaje =$error -> getMessage();
                return redirect()->to(site_url('/Animales/registro'))->with('mensaje',$mensaje);
           }
            



        }
        else{
            $mensaje="tenemos campos sin llenar";
            return redirect()->to(site_url('/animales/registro'))->with('mensaje',$mensaje);
        }
              
    }

    Public function buscarTipo($tipo)
    {

        
         try{
               
           $modelo=new AnimalModelo();

            $resultado = $modelo ->where('tipo',$tipo)->findAll();
            $animales = array("animales"=>$resultado); 
           
            return view('listaTipo',$animales);

        }
        catch(\Exception $error)
        {
            $mensaje =$error -> getMessage();
            return redirect()->to(site_url('/welcome'))->with('mensaje',$mensaje);

        } 

    }
}