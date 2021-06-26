<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="../css/all.min.css" rel="stylesheet" type="text/css"/>
        <script src="../js/jquery-3.2.0.min.js" type="text/javascript"></script>
        <jsp:include page="../head/heads.jsp"></jsp:include>
            <title>SuperUsuarioAgregar</title>
        </head>
        <body>
        <jsp:include page="../procesoAdministrador"></jsp:include>
        <c:choose>
            <c:when test="${usuario.tipo.id == 2}">
                <jsp:include page="../administrador/menu.jsp"></jsp:include>
                    <div class="container-fluid text-white text-center">
                        <div class="row">
                        <jsp:include page="../contenidoIzquierda.jsp"></jsp:include>
                            <div class="col-sm-6 mt-5">
                                <form action="../procesoAdministrador" method="POST">
                                    <h2>Formulario de ingreso de jugadores</h2>
                                    <p>Recuerde revisar sus datos al momento de ingresarlos</p>
                                <c:if test="${jugadores == null }">

                                    <div class="form-group">
                                        <label for="text">Equipo</label>
                                        <div class="row">
                                            <div class="col-sm-3"></div>
                                            <div class="col-sm-6">
                                                <select name="equiposCbo" class="custom-select">
                                                    <option selected value="0">Seleccionar</option>
                                                    <c:forEach var="item" items="${listaEquipo}">                          
                                                        <option value="${item.id}">${item.nombre}</option>
                                                    </c:forEach>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-3"></div>
                                            <div class="col-sm-6">
                                                <button type="submit" class="btn btn-warning" name="btnAccion" value="BuscarJugadores">Buscar</button>
                                            </div>
                                        </div>
                                    </div>
                                </c:if>
                                <c:if test="${jugadores!=null}">

                                    <div class="form-group">
                                        <label for="text">Equipo</label>
                                        <div class="row">
                                            <div class="col-sm-3"></div>
                                            <div class="col-sm-6">
                                                <select name="equipoObtenido" class="custom-select">                        
                                                    <option  selected value="${equipoO.id}">${equipoO.nombre}</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="text">Nombre y Apellido</label>
                                        <div class="row">
                                            <div class="col-sm-3"></div>
                                            <div class="col-sm-6">
                                                <input type="text" class="form-control" name="txtNombre"  placeholder="Juan Véliz">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="text">Edad</label>
                                        <div class="row">
                                            <div class="col-sm-3"></div>
                                            <div class="col-sm-6">
                                                <input type="text" class="form-control" name="txtEdad"  placeholder="20">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="text">Correo</label>
                                        <div class="row">
                                            <div class="col-sm-3"></div>
                                            <div class="col-sm-6">
                                                <input type="text" class="form-control" value="${cantidad}"name="txtCorreo" placeholder="correo personal">
                                            </div>
                                        </div>

                                    </div>

                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-3"></div>
                                            <div class="col-sm-6">
                                                <button type="submit" class="btn btn-warning" name="btnAccion" value="AgregarJugador">Agregar</button>
                                                <a href="../procesoActualizacion">
                                                    update
                                                </a>
                                            </div>
                                        </div>
                                    </div>

                                </form>
                                <jsp:include page="../mensajes/mensaje.jsp"></jsp:include>
                                <jsp:include page="../contenidoCentral.jsp"></jsp:include>                
                                </div>
                                <div class="col-sm-3">
                                    <h2><img src="../img/equipos/${equipoO.src}" height="75" width="75"></h2>
                                <table class="table table-bordered table-striped">
                                    <tr>
                                    <thead class="thead-light">
                                    <th>NOMBRE</th>
                                    <th>EDAD</th>
                                    </thead>
                                    </tr>
                                    <c:forEach var="item" items="${jugadores}">
                                        <tr>
                                            <td> ${item.nombreApp}</td>
                                            <td> ${item.edad}</td>
                                        </tr></c:forEach>
                                    </table>
                                </div>
                        </c:if>
                    </div>
                </div>
            </div>
            <jsp:include page="../footer.jsp"></jsp:include>
        </c:when>
        <c:otherwise>
            <jsp:include page="menu.jsp"></jsp:include>
                <div class="container-fluid text-white text-center">
                    <div class="row">
                    <jsp:include page="../contenidoIzquierda.jsp"></jsp:include>
                        <div class="col-sm-6 mt-5">
                            <form action="../procesoAdministrador" method="POST">
                                <h2>Formulario de ingreso de jugadores</h2>
                                <p>Recuerde revisar sus datos al momento de ingresarlos</p>
                                <div class="form-group">
                                    <label for="text">Equipo</label>
                                    <div class="row">
                                        <div class="col-sm-3"></div>
                                        <div class="col-sm-6">
                                            <select name="equiposCbo" class="custom-select">                      
                                                <option selected value="${miEquipo.id}">${miEquipo.nombre}</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Nombre y Apellido</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" name="txtNombre"  placeholder="Juan Véliz">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Edad</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" name="txtEdad"  placeholder="20">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="text">Correo</label>
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control" name="txtCorreo"  placeholder="correo personal">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="row">
                                    <div class="col-sm-3"></div>
                                    <div class="col-sm-6">
                                        <button type="submit" class="btn btn-warning" name="btnAccion" value="AgregarJugador2">Agregar</button>
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
        </c:otherwise>
    </c:choose>
</body>
<script src="../js/holder.js" type="text/javascript"></script>
<script src="../js/bootstrap.min.js" type="text/javascript"></script>
<script src="../js/all.min.js" type="text/javascript"></script>
</html>
