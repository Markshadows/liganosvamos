<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/all.min.js" type="text/javascript"></script>
        <script src="../js/holder.js" type="text/javascript"></script>
        <script src="../js/jquery-3.2.0.min.js" type="text/javascript"></script>
        <script src="../js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../js/tilt.jquery.js" type="text/javascript"></script>
        <title>SuperUsuarioEliminar</title>
        <jsp:include page="../head/heads2.jsp"></jsp:include>
        </head>
        <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <jsp:include page="/procesoSuperUsuario" />
        <div class="container-fluid text-white text-center">
            <div class="row">
                <jsp:include page="../contenidoIzquierda.jsp"></jsp:include>
                    <div class="col-sm-6 mt-5">
                        <form action="../procesoSuperUsuario" method="POST">
                            <h2>Eliminación de administrador</h2>
                            <p>Recuerde revisar sus datos al momento de ingresarlos</p>
                            <div class="form-group">
                                <label for="text">Nombre de usuario</label>
                                <div class="row">
                                    <div class="col-sm-3">
                                    </div>
                                    <div class="col-sm-6">
                                        <select name="cboAdministradores" class="custom-select">
                                            <option selected>Seleccionar</option>
                                        <c:forEach var="item" items="${administradoresActivos}">                          
                                            <option value="${item.id}">${item.nombreApellido}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-3">

                                </div>
                                <div class="col-sm-6">
                                    <button type="submit" class="btn btn-warning" name="btnAccion" value="Eliminar">Eliminar</button>
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
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
</html>
