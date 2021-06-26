<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/all.min.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-3.2.0.min.js" type="text/javascript"></script>
        <title>Winner</title>
    </head>
    <body>
        <jsp:include page="menu.jsp"></jsp:include>
            <div class="container-fluid bg-dark text-white text-center">
                <div class="row">
                    <div class="col-sm-6 mt-5">
                        <div class="form-group">
                            <label for="text">Ganador</label>
                            <div class="row">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-6">
                                <c:forEach var="item" items="${final}">
                                    <div class="col-sm-9 border border-warning justify-content-center ml-5 match-top1">
                                        <p class="p1 mt-4">${item.ganador.nombre}</p>
                                        <div class="row justify-content-center">
                                            <img src="img/equipos/${item.ganador.src}" height="75" width="75">
                                        </div>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
                <jsp:include page="contenido2.jsp"></jsp:include>
                </div>
            <jsp:include page="footer.jsp"></jsp:include>
    </body>
    <script src="/js/holder.js" type="text/javascript"></script>
    <script src="/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="/js/all.min.js" type="text/javascript"></script>
</html>

