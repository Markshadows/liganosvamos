<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:choose>
    <c:when test="${!empty mensajeCorrecto}">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="alert alert-success col-sm-6 mt-4">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Correcto</strong> ${mensajeCorrecto}
            </div>
        </div>
        <c:remove var="mensajeCorrecto" scope="session" />
        <c:remove var="preActualizacion" scope="session" />
        <c:remove var="administradoresActivos" scope="session" />
        <c:remove var="administradores" scope="session" />
        <c:remove var="ligas" scope="session" />
        <c:remove var="ligasActivas" scope="session" />
        <c:remove var="ligaPreActualizacion" scope="session" />
    </c:when>
    <c:when test="${!empty mensajeError}">
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="alert alert-danger col-sm-6 mt-4">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Error</strong> ${mensajeError}
            </div>
        </div>
        <c:remove var="mensajeError" scope="session" />
        <c:remove var="preActualizacion" scope="session" />
        <c:remove var="administradoresActivos" scope="session" />
        <c:remove var="administradores" scope="session" />
        <c:remove var="ligas" scope="session" />
        <c:remove var="ligasActivas" scope="session" />
        <c:remove var="ligaPreActualizacion" scope="session" />
    </c:when>
</c:choose>
