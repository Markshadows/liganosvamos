<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../../css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../../js/all.min.js" type="text/javascript"></script>
        <script src="../../js/holder.js" type="text/javascript"></script>
        <script src="../../js/jquery-3.2.0.min.js" type="text/javascript"></script>
        <script src="../../js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../../js/tilt.jquery.js" type="text/javascript"></script>
        <title>SuperUsuarioEliminar</title>
    </head>
    <body>
        <jsp:include page="../menu2.jsp"></jsp:include>
        <jsp:include page="../../procesoAdministrador" />
            <div class="container-fluid text-white text-center">
                <div class="row">
                    <jsp:include page="../../contenidoIzquierda.jsp"></jsp:include>
                    <div class="col-sm-6 mt-5">
                        <form action="../../procesoAdministrador" method="POST">
                            <h2>Formulario de cancelación de liga</h2>
                            <p>Recuerde revisar sus datos al momento de ingresarlos</p>
                            <div class="form-group">
                                <label for="text">Nombre de liga</label>
                                <div class="row">
                                    <div class="col-sm-3">
                                    </div>
                                    <div class="col-sm-6">
                                        <select name="ligascbo" class="custom-select">
                                            <option selected>Seleccionar</option>
                                            <c:forEach var="item" items="${ligasActivas}">                          
                                            <option value="${item.id}">${item.nombre}</option>
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
                                        <button type="submit" class="btn btn-warning" name="btnAccion" value="Eliminar">Cancelar</button>
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
    <script src="../../js/bootstrap.min.js" type="text/javascript"></script>
</html>
