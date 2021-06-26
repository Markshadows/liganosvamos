<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/all.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery-3.2.0.min.js" type="text/javascript"></script>
        <title>SuperUsuarioAgregar</title>
        <jsp:include page="../head/heads2.jsp"></jsp:include>
        </head>
        <body>

        <jsp:include page="menu.jsp"></jsp:include>
            <div class="container-fluid text-white text-center">
                <div class="row">
                <jsp:include page="../contenidoIzquierda.jsp"></jsp:include>
                    <div class="col-sm-6 mt-5">
                        <form action="../procesoSuperUsuario" method="POST">
                            <h2>Formulario de ingreso de administradores</h2>
                            <p>Recuerde revisar sus datos al momento de ingresarlos</p>
                            <div class="form-group">
                                <label for="text">Nombre y Apellido</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" required="true" placeholder="Juan Véliz" name="txtNombre">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Correo</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="email" class="form-control" required="true" placeholder="correo personal" name="txtCorreo">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="pwd">Nombre de Usuario</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" name="txtNombreU" required="true" placeholder="creatividad please">
                                    </div>                                  
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="pwd">Contraseña</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="password" class="form-control" name="txtContrasena" required="true" placeholder="contraseña segura">
                                    </div>                                  
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <button type="submit" class="btn btn-warning" name="btnAccion" value="Agregar">Agregar</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    <jsp:include page="../mensajes/mensaje.jsp"></jsp:include>
                    <jsp:include page="../contenidoCentral.jsp"></jsp:include>
                    </div>
                <jsp:include page="../contenidoDerecha.jsp"></jsp:include>
                </div>
            </div>
        <jsp:include page="../footer.jsp"></jsp:include>
    </body>
    <script src="../js/holder.js" type="text/javascript"></script>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../js/all.min.js" type="text/javascript"></script>
</html>
