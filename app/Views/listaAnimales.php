<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado Animales</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Gochi+Hand&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="<?= base_url('public/styles/estilos.css') ?>">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link href="https://fonts.googleapis.com/css2?family=Delius+Swash+Caps&display=swap" rel="stylesheet">
</head>
<body>
    <main>
        <div class="container">
        <div class="row row-cols-1 row-cols-md-5 g-4">
                <?php foreach($animales as $animal):?>
                    <div class="col">
                        <div class="card h-100 p-3">
                            <img src="<?= $animal["foto"]?>" class="card-img-top h-100" alt="foto">
                            <div class="card-body">
                                <h5 class="card-title"><?= $animal["nombre"]?></h5>
                                <p class="card-text">Edad:<?= $animal["edad"]?> Años</p>
                                <a data-bs-toggle="modal" data-bs-target="#confirmacion<?= $animal["id"] ?>" href="#" class="btn btn-primary"><i class="fas fa-trash-alt" ></i></a>
                                <a data-bs-toggle="modal" data-bs-target="#editar<?= $animal["id"] ?>" href="#" class="btn btn-primary"><i class="fas fa-edit"></i></a>
                            </div>
                        </div>
                        <section>
                            <!-- MODAL ELIMINAR-->
                            <div class="modal fade" id="confirmacion<?= $animal["id"] ?>">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                <div class="modal-header" >
                                    <h5 class="modal-title" id="exampleModalLabel">ELIMINAR</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <p>Esta seguro de adoptar este Animal?</p>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                                    <a href="<?= site_url('/animales/eliminar/'.$animal["id"]) ?>" class="btn btn-secondary">Aceptar</a>
                                </div>
                                </div>
                            </div>
                            </div>
                        </section>
                        <!--modal editar  -->
                        <section>
                        <div class="modal" id="editar<?= $animal["id"]?>" >
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">EDIT ANIMAL</h5>
                            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            
                            <div class="row">
                            <div class="col-4 align-self-center">
                                <img src="<?= $animal["foto"] ?>" alt="foto" class="img-fluid w-100">
                            </div>
                            <div class="col-8">
                                <form action="<?= site_url('/animal/editar/'.$animal["id"])?>" method="POST">

                                    <div class="mb-3">
                                    <label for="form-label" >Nombre:</label>
                                    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="<?= $animal["nombre"]?>" name="nombre">
                                    </div>

                                    <div class="mb-3">
                                    <label for="form-label" >Edad:</label>
                                    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="<?= $animal["edad"]?>" name="edad">

                                    <div class="mb-3">
                                    <label for="form-label" >Descripcion:</label>
                                    <input type="text" class="form-control" id="formGroupExampleInput" placeholder="<?= $animal["descripcion"]?>" name="descripcion">
                                    </div>

                                    

                                    </div>
                                    <button type="submit" style="width:100% " class="btn btn-primary mt-4">Editar</button>
                                </form>
                            </div>
                            </div>
                            

                        </div>
                        
                        </div>
                    </div>
                    </div>
                        </section>
                   </div>
                <?php endforeach?>

            </div>

        </div>

    </main>
    <script src="https://kit.fontawesome.com/7b642ec699.js" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
</body>
</html>