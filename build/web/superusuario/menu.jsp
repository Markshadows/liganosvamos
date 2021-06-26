<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid font-weight-bold bg-dark">
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
        <a class="navbar-brand" href="index.jsp">Bienvenido ${usuario.nombre}</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="agregar.jsp">Agregar </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="eliminar.jsp">Eliminar</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="modificar.jsp">Modificar</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="listar.jsp">Listar</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../index.jsp">Página Principal</a>
                </li>
            </ul>
        </div>
        <a href="../login?op=logout" class="btn btn-warning">Cerrar sesión</a>
    </nav>
</div>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/tilt.jquery.js" type="text/javascript"></script>

