
<%@page import="java.lang.Integer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

 <%
  // define el titulo a mostrar en la pagina.
  String sTitle = "Principal";
  if (request.getParameter("title") != null) { 
    sTitle = request.getParameter("title").toString();
  }

  // define la pagina a desplegar de acuerdo al parametro "page" del request.
  String sUrlPage = "views/index/contenidoIndex.jsp";
 // if (request.getParameter("page") != null) { 
   // sUrlPage = "pages/"+request.getParameter("page").toString()+".html";
 // }
  %>



<html>
   <%--HEAD--%>
   <head>
    <meta charset="utf-8">

    <title>DISCROS INC.</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- LIKS A ARCHIVOS CSS Y JAVA SCRIPTS-->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <link href="css/estilobortebx.css" rel="stylesheet">
  
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="img/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="img/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="img/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-57-precomposed.png">
    <link rel="shortcut icon" href="img/favicon.png">

    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/scripts.js"></script>
    <script type="text/javascript" src="js/usuarios.js"></script>
    <script src="jquery.js"></script>
    <script src="bootstrap-modal.js"></script>
    
    <!-- ESTILO  -->
    <style type="text/css">
        body{background-image:url("img/notas-musicales.jpg");
        padding-top: 70px;
        }
    </style>
</head>

<body>
<%--CONTENEDOR PRINCIPAL--%>
<div class="container">
    <div class="row clearfix">     
        <div class="col-md-12 column">
           <%--MENÚ--%>
             <jsp:include page="views/gral/header.jsp" />
            <%--CONTENIDO--%>
             <jsp:include page="views/index/contenidoIndex.jsp" />   
       
        </div>
    </div>       
 <%--PIE DE PÁGINA--%>               
    <jsp:include page="views/gral/piedepagina.jsp" />
</div>
</body>
</html>
