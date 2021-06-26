<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<c:choose>
    <c:when test="${fn:contains (pageContext.request.requestURL,'superusuario')}">
            <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
            <link href="../css/all.min.css" rel="stylesheet" type="text/css"/>
            <link href="../https://fonts.googleapis.com/css?family=Marcellus+SC" rel="stylesheet">
            <script src="../js/all.min.js" type="text/javascript"></script>
            <script src="../js/jquery-3.2.0.min.js" type="text/javascript"></script>
            <script src="../js/jquery.validate.min.js" type="text/javascript"></script>
            <script src="../js/holder.js" type="text/javascript"></script>
            <link href="https://fonts.googleapis.com/css?family=Khand" rel="stylesheet">
            
    </c:when>
    <c:otherwise>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css?family=Marcellus+SC" rel="stylesheet">
        <script src="js/all.min.js" type="text/javascript"></script>
        <script src="js/jquery-3.2.0.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/holder.js" type="text/javascript"></script>
        <link href="https://fonts.googleapis.com/css?family=Marcellus+SC" rel="stylesheet">
        <style>
            body{
                font-family: Marcellus SC, serif;

            }
        </style>
    </c:otherwise>
</c:choose>






