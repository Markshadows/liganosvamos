
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/all.min.css" rel="stylesheet" type="text/css"/>
        <script src="../../js/jquery-3.2.0.min.js" type="text/javascript"></script>
        <script src="../../js/popper.js" type="text/javascript"></script>
        <title>AgregarLiga</title>
    </head>
    <body>

    <jsp:include page="../menu2.jsp"></jsp:include>
            <div class="container-fluid text-white text-center">
                <div class="row">
                <jsp:include page="../../contenidoIzquierda.jsp"></jsp:include>
                    <div class="col-sm-6 mt-5">
                        <form action="../../procesoAdministrador" method="POST">
                            <h2>Formulario de ingreso de liga</h2>
                            <p>Recuerde revisar sus datos al momento de ingresarlos</p>
                            <div class="form-group">
                                <label for="text">Juego</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <select name="juegos" class="custom-select">
                                            <option selected>Seleccionar</option>
                                            <option value="League of Legends">League of Legends</option>
                                            <option value="Counter Strike">Counter Strike</option>
                                            <option value="Fortnite">Fortnite</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Nombre</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" required="true" placeholder="LCS" name="txtNombre">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Fecha de inicio</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="datetime-local"class="form-control" required="true" name="txtFechaI">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Fecha de término</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="datetime-local"class="form-control" required="true" name="txtFechaF">
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
                    <jsp:include page="../../mensajes/mensaje.jsp"></jsp:include>
                    <jsp:include page="../../contenidoCentral.jsp"></jsp:include>
                    </div>
                    <jsp:include page="../../contenidoDerecha.jsp"></jsp:include>
                </div>
            </div>
        <jsp:include page="../../footer.jsp"></jsp:include>
    </body>
    <script src="../../js/holder.js" type="text/javascript"></script>
    <script src="../../js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../../js/all.min.js" type="text/javascript"></script>

</html>
