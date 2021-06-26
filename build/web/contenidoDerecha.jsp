<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="col-sm-3 mt-5">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">

                <!-- Indicators -->
                <ul class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="1"></li>
                    <li data-target="#myCarousel" data-slide-to="2"></li>
                </ul>
                <!-- The slideshow -->
                <div class="carousel-inner">
                    <div class="carousel-item active"><c:choose>
                            <c:when test="${usuario.tipo.id == 1}">
                                <img src="../img/equipos/torneo/c1.jpg"  class ="img-fluid border border-warning">
                            </c:when>
                                <c:when test="${usuario.tipo.id == 2}">
                                <img src="../../img/equipos/torneo/c1.jpg" class="img-fluid border border-warning">
                            </c:when>
                                <c:when test="${usuario.tipo.id == 3}">
                                <img src="../img/equipos/torneo/c1.jpg" class="img-fluid border border-warning">
                            </c:when>
                                <c:when test="${usuario == null}">
                                <img src="../img/equipos/torneo/c1.jpg" class="img-fluid border border-warning">
                            </c:when>
                            <c:otherwise>
                                <img src="img/equipos/torneo/c1.jpg"  class ="img-fluid border border-warning">
                            </c:otherwise>
                        </c:choose>
                    </div>
                    <div class="carousel-item"><c:choose>
                            <c:when test="${usuario.tipo.id == 1}">
                                <img src="../img/equipos/torneo/c6.jpg" class="img-fluid border border-warning">
                            </c:when>
                                <c:when test="${usuario.tipo.id == 2}">
                                <img src="../img/equipos/torneo/c6.jpg" class="img-fluid border border-warning">
                            </c:when>
                            <c:when test="${usuario.tipo.id == 3}">
                                <img src="../img/equipos/torneo/c6.jpg" class="img-fluid border border-warning">
                            </c:when>
                                <c:when test="${usuario == null}">
                                <img src="../img/equipos/torneo/c6.jpg" class="img-fluid border border-warning">
                            </c:when>
                            <c:otherwise>
                                <img src="img/equipos/torneo/c6.jpg"  class ="img-fluid border border-warning">
                            </c:otherwise>
                        </c:choose>

                    </div>
                    <div class="carousel-item"><c:choose>
                            <c:when test="${usuario.tipo.id == 1}">
                                <img src="../img/equipos/torneo/c9.jpg" class="img-fluid border border-warning">
                            </c:when>
                                <c:when test="${usuario.tipo.id == 2}">
                                <img src="../img/equipos/torneo/c9.jpg" class="img-fluid border border-warning">
                            </c:when>
                            <c:when test="${usuario.tipo.id == 3}">
                                <img src="../img/equipos/torneo/c9.jpg" class="img-fluid border border-warning">
                            </c:when>
                                <c:when test="${usuario == null}">
                                <img src="../img/equipos/torneo/c9.jpg" class="img-fluid border border-warning">
                            </c:when>
                            <c:otherwise>
                                <img src="img/equipos/torneo/c9.jpg"  class ="img-fluid border border-warning">
                            </c:otherwise>
                        </c:choose>

                    </div>
                </div>

                <!-- Left and right controls -->
                <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                </a>
                <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                </a>
            </div>
        </div>

    </div>
</div>
</body>
</html>
