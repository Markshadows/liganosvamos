<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/holder.js" type="text/javascript"></script>
        <script src="../js/jquery-3.2.0.min.js" type="text/javascript"></script>
        <script src="../js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="../js/all.min.js" type="text/javascript"></script>
    </head>
    <body>
        <jsp:include page="../procesoAdministrador"></jsp:include>
        <c:choose>
            <c:when test="${usuario.tipo.id == 2}">
                <jsp:include page="../administrador/menu.jsp"></jsp:include>
            </c:when>
            <c:otherwise>
                <jsp:include page="menu2.jsp"></jsp:include>
            </c:otherwise>
        </c:choose>
        <div class="container-fluid text-white text-center">
            <div class="row">
                <jsp:include page="../contenidoIzquierda.jsp"></jsp:include>
                <div class="col-sm-6 mt-5">
                    <form action="../procesoAdministrador" method="POST">
                        <h2>Formulario de ingreso de equipo</h2>
                        <p>Recuerde revisar sus datos al momento de ingresarlos</p>
                        <div class="form-group">
                            <label for="text">Liga</label>
                            <div class="row">
                                <div class="col-sm-3"></div>
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
                            <label for="text">Nombre del equipo</label>
                            <div class="row">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="txtNombre" placeholder="Juan Véliz">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="text">Correo del equipo</label>
                            <div class="row">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="txtCorreo" placeholder="correo personal">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="pwd">Contraseña</label>
                            <div class="row">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-6">
                                    <input type="password" class="form-control" name="txtContrasena" placeholder="contraseña segura">
                                </div>                                  
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-6">
                                    <button type="submit" class="btn btn-warning" name="btnAccion" value="AgregarEquipo">Agregar</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <jsp:include page="../mensajes/mensaje.jsp"></jsp:include>
                    <jsp:include page="../contenidoCentral.jsp"></jsp:include>
                </div>
                    <jsp:include page="../contenidoDerecha.jsp"></jsp:include>
                </div>
            <jsp:include page="../footer.jsp"></jsp:include>
    </body>

    <script src="../js/bootstrap.min.js" type="text/javascript"></script>

</html>
