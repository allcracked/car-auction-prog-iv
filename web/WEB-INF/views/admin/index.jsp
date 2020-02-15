<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Panel Administrativo</title>
    <spring:eval expression="@propertyConfigurer.getProperty('bootstrap.css')" var="bootstrapCSS" />
    <spring:eval expression="@propertyConfigurer.getProperty('bootstrap.css.integrity')" var="bootstrapCSSInte" />
    <spring:eval expression="@propertyConfigurer.getProperty('bootstrap.js')" var="bootstrapJS" />
    <spring:eval expression="@propertyConfigurer.getProperty('bootstrap.js.integrity')" var="bootstrapJSInte" />
    <spring:eval expression="@propertyConfigurer.getProperty('jquery.js')" var="jqueryJS" />
    <spring:eval expression="@propertyConfigurer.getProperty('jquery.js.integrity')" var="jqueryJSInte" />
    <spring:eval expression="@propertyConfigurer.getProperty('popper.js')" var="popperJS" />
    <spring:eval expression="@propertyConfigurer.getProperty('popper.js.integrity')" var="popperJSInte" />

    <spring:url value="/rsc/theme/light-bootstrap-dashboard.css" var="dashboardCSS" />
    <spring:url value="/rsc/theme/light-bootstrap-dashboard.js" var="dashboardJS" />
    <spring:url value="/rsc/css/admin/admin.css" var="localCSS" />
    <spring:url value="/rsc/images/logo.png" var="logo" />


    <script src="${jqueryJS}" integrity="${jqueryJSInte}" crossorigin="anonymous"></script>
    <script src="${popperJS}" integrity="${popperJSInte}" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="${bootstrapCSS}" integrity="${bootstrapCSSInte}" crossorigin="anonymous" />
    <script src="${bootstrapJS}" integrity="${bootstrapJSInte}" crossorigin="anonymous"></script>

    <script src="${dashboardJS}"></script>
    <link rel="stylesheet" type="text/css" href="${dashboardCSS}" />

    <link rel="stylesheet" type="text/css" href="${localCSS}" />
</head>
<body>
<div class="wrapper">
    <div class="sidebar">
        <div class="sidebar-wrapper">
            <div class="logo">
                <a href="${pageContext.request.contextPath}/admin" class="simple-text">
                    <img src="${logo}">
                </a>
            </div>
            <ul class="nav">
                <li class="active">
                    <a class="nav-link" href="${pageContext.request.contextPath}/admin">
                        <i class="nc-icon nc-chart-pie-35"></i>
                        <p>Administraci&oacute;n</p>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/users">
                        <i class="nc-icon nc-circle-09"></i>
                        <p>Usuarios</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <div class="main-panel">
        <nav class="navbar navbar-expand-lg " color-on-scroll="500">
            <div class="container-fluid">
                <a class="navbar-brand" href="#"> Administraci&oacute;n </a>
                <button href="" class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar burger-lines"></span>
                    <span class="navbar-toggler-bar burger-lines"></span>
                    <span class="navbar-toggler-bar burger-lines"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navigation">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="no-icon">Cuenta</span>
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                <div class="divider"></div>
                                <a class="dropdown-item" href="${pageContext.request.contextPath}/login">Cerrar Sesi&oacute;n</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="content">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">

                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
                <nav>
                    <ul class="footer-menu">
                        <li>
                            <a href="${pageContext.request.contextPath}/">
                                Inicio
                            </a>
                        </li>
                    </ul>

                </nav>
            </div>
        </footer>
    </div>
</div>
</body>
</html>
