<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>SuperUsuarioModificar</title>
        <jsp:include page="../headers.jsp"></jsp:include>
        <jsp:include page="../head/heads2.jsp"></jsp:include>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
        <jsp:include page="/procesoSuperUsuario" />
        <div class="container-fluid text-white">
            <div class="row">
                <jsp:include page="../contenidoIzquierda.jsp"></jsp:include>
                <div class="col-sm-6 mt-5 text-center">
                    <form action="../procesoSuperUsuario" method="POST">
                        <h2>Formulario de modificación de administradores</h2>
                        <p>Recuerde revisar sus datos al momento de ingresarlos</p>
                        <div class="form-group">
                            <label for="text">Lista de Administradores</label>
                            <div class="row">
                                <div class="col-sm-3">
                                </div>
                                <div class="col-sm-6">
                                    <select name="cboAdministradores" class="custom-select">
                                        <option value="0" selected>Seleccionar</option>
                                        <c:forEach var="item" items="${administradores}">                          
                                            <option value="${item.id}">${item.nombreApellido}</option>
                                        </c:forEach>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="text">Nombre y Apellido</label>
                            <div class="row">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" disabled="true" value="${preActualizacion.nombreApellido}">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="text">Correo</label>
                            <div class="row">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" disabled="true" required=""
                                           value="${preActualizacion.correo}">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="text">Estado</label>
                            <div class="row">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-6">
                                    <input type="email" class="form-control" disabled="true" value="${preActualizacion.usuario.estado}" required="">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-6 text-center">
                                    <button type="submit" class="btn btn-warning" name="btnAccion" value="Buscar">Buscar</button>
                                </div>
                            </div>
                        </div>
                    </form>
                    <form action="../procesoSuperUsuario" method="POST">
                        <div class="form-group">
                            <label for="text">Nombre y Apellido</label>
                            <div class="row">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="txtNombreM">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="text">Correo</label>
                            <div class="row">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-6">
                                    <input type="text" class="form-control" name="txtCorreoM">
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="text">Estado</label>
                            <div class="row">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-6">
                                    <select name="cboEstado" class="custom-select">
                                        <option value="${preActualizacion.usuario.estado}" selected>Seleccionar</option>                         
                                        <option value="Activo">Activo</option>
                                        <option value="Inactivo">Inactivo</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="row">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-6 text-center">
                                    <button type="submit" class="btn btn-warning" name="btnAccion" value="Modificar">Modificar</button>
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
    <script src="../js/tilt.jquery.js" type="text/javascript"></script>
</html>
