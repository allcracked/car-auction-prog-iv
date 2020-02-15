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
    <spring:url value="/rsc/js/admin/users.js" var="usersJS" />
    <spring:url value="/rsc/css/admin/users.css" var="localCSS" />
    <spring:url value="/rsc/images/logo.png" var="logo" />


    <script src="${jqueryJS}" integrity="${jqueryJSInte}" crossorigin="anonymous"></script>
    <script src="${popperJS}" integrity="${popperJSInte}" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="${bootstrapCSS}" integrity="${bootstrapCSSInte}" crossorigin="anonymous" />
    <script src="${bootstrapJS}" integrity="${bootstrapJSInte}" crossorigin="anonymous"></script>

    <script src="${dashboardJS}"></script>
    <link rel="stylesheet" type="text/css" href="${dashboardCSS}" />

    <link rel="stylesheet" type="text/css" href="${localCSS}" />
    <script src="${usersJS}"></script>
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
                <li>
                    <a class="nav-link" href="${pageContext.request.contextPath}/admin">
                        <i class="nc-icon nc-chart-pie-35"></i>
                        <p>Administraci&oacute;n</p>
                    </a>
                </li>
                <li class="nav-item active">
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
                <p class="navbar-brand"> Usuarios </p>
                <button href="" class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-bar burger-lines"></span>
                    <span class="navbar-toggler-bar burger-lines"></span>
                    <span class="navbar-toggler-bar burger-lines"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-end" id="navigation">
                    <ul class="nav navbar-nav mr-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="#" data-toggle="dropdown" id="addUserBtn">
                                <i class="nc-icon nc-simple-add"></i>
                                <span class="d-lg-block">&nbsp;&nbsp;Agregar Usuario</span>
                            </a>
                        </li>
                    </ul>
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
                        <div class="card card-plain table-plain-bg">
                            <div class="card-header ">
                                <h4 class="card-title">Usuarios</h4>
                                <p class="card-category">Se listan los usuarios del sition, pueden ser de tipo Administrador, Ofertador o Cliente.</p>
                            </div>
                            <div class="card-body table-full-width table-responsive">
                                <table class="table table-hover table-striped">
                                    <thead>
                                    <th>#</th>
                                    <th>Nombre</th>
                                    <th>Tipo</th>
                                    <th>Creado En</th>
                                    <th>Pais</th>
                                    <th>Ciudad</th>
                                    </thead>
                                    <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Jose Avilez</td>
                                        <td>Administrador</td>
                                        <td>1/20/2020</td>
                                        <td>Honduras</td>
                                        <td>Tegucigalpa</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Denis Velasquez</td>
                                        <td>Ofertador</td>
                                        <td>1/22/2020</td>
                                        <td>Honduras</td>
                                        <td>Siguatepeque</td>
                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Karen Aguirre</td>
                                        <td>Ofertador</td>
                                        <td>1/22/2020</td>
                                        <td>Honduras</td>
                                        <td>Tegucigalpa</td>
                                    </tr>
                                    <tr>
                                        <td>4</td>
                                        <td>Maria Carias</td>
                                        <td>Cliente</td>
                                        <td>1/21/2020</td>
                                        <td>Honduras</td>
                                        <td>San Pedro Sula</td>
                                    </tr>
                                    <tr>
                                        <td>5</td>
                                        <td>Carlos Perez</td>
                                        <td>Cliente</td>
                                        <td>1/24/2020</td>
                                        <td>Honduras</td>
                                        <td>San Pedro Sula</td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="container-fluid">
                <nav>
                    <ul class="footer-menu">
                        <a href="${pageContext.request.contextPath}/">
                            Inicio
                        </a>
                    </ul>

                </nav>
            </div>
        </footer>
    </div>
</div>

<!-- Mini Modal -->
<div class="modal fade modal-primary" id="addUserModal" tabindex="-1" role="dialog" aria-labelledby="addUserModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-body text-center">
                <div class="content">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-header">
                                        <h4 class="card-title">Agregar Usuario</h4>
                                    </div>
                                    <div class="card-body">
                                        <form>
                                            <div class="row">
                                                <div class="col-md-8 px-1">
                                                    <div class="form-group">
                                                        <label>Nombre</label>
                                                        <input type="text" class="form-control" placeholder="Nombre Completo" value="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 pl-1">
                                                    <div class="form-group">
                                                        <label>Correo Electr&oacute;nico</label>
                                                        <input type="email" class="form-control" placeholder="Email">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label>Direcci&oacute;n</label>
                                                        <input type="text" class="form-control" placeholder="Direcci&oacute;n Residencial" value="">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-4 pr-1">
                                                    <div class="form-group">
                                                        <label>Ciudad</label>
                                                        <input type="text" class="form-control" placeholder="Ciudad" value="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 px-1">
                                                    <div class="form-group">
                                                        <label>Pais</label>
                                                        <input type="text" class="form-control" placeholder="Pais" value="">
                                                    </div>
                                                </div>
                                                <div class="col-md-4 pl-1">
                                                    <div class="form-group">
                                                        <label>Postal Code</label>
                                                        <input type="number" class="form-control" placeholder="ZIP Code">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-link btn-danger" data-dismiss="modal">Cerrar</button>
                <button type="button" class="btn btn-link btn-success" data-dismiss="modal">Agregar</button>
            </div>
        </div>
    </div>
</div>
<!--  End Modal -->
</body>
</html>
