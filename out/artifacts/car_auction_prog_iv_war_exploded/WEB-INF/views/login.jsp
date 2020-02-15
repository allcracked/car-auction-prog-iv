<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>--%>
<html>
<head>
    <title>Iniciar Sesion</title>
    <spring:eval expression="@propertyConfigurer.getProperty('bootstrap.css')" var="bootstrapCSS" />
    <spring:eval expression="@propertyConfigurer.getProperty('bootstrap.css.integrity')" var="bootstrapCSSInte" />
    <spring:eval expression="@propertyConfigurer.getProperty('bootstrap.js')" var="bootstrapJS" />
    <spring:eval expression="@propertyConfigurer.getProperty('bootstrap.js.integrity')" var="bootstrapJSInte" />
    <spring:eval expression="@propertyConfigurer.getProperty('jquery.js')" var="jqueryJS" />
    <spring:eval expression="@propertyConfigurer.getProperty('jquery.js.integrity')" var="jqueryJSInte" />
    <spring:eval expression="@propertyConfigurer.getProperty('popper.js')" var="popperJS" />
    <spring:eval expression="@propertyConfigurer.getProperty('popper.js.integrity')" var="popperJSInte" />

    <spring:url value="/rsc/css/login/login.css" var="localCSS" />
    <spring:url value="/rsc/images/logo.png" var="logo" />


    <script src="${jqueryJS}" integrity="${jqueryJSInte}" crossorigin="anonymous"></script>
    <script src="${popperJS}" integrity="${popperJSInte}" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="${bootstrapCSS}" integrity="${bootstrapCSSInte}" crossorigin="anonymous" />
    <script src="${bootstrapJS}" integrity="${bootstrapJSInte}" crossorigin="anonymous"></script>

    <link rel="stylesheet" type="text/css" href="${localCSS}" />
</head>
<body class="text-center">
    <form class="form-signin" method="post" enctype="application/x-www-form-urlencoded" action="${pageContext.request.contextPath}/login">
        <img class="mb-4" src="${logo}" alt="" width="72" height="72">
        <h1 class="h3 mb-3 font-weight-normal">Por favor inicie sesi&oacute;n</h1>
        <label for="inputEmail" class="sr-only">Correo electr&oacute;nico</label>
        <input type="email" id="inputEmail" name="name" class="form-control" placeholder="Correo electr&oacute;nico" value="${email}" required autofocus>
        <label for="inputPassword" class="sr-only">Contrase&ntilde;a</label>
        <input type="password" id="inputPassword" name="password" class="form-control" placeholder="Contrase&ntilde;a" required>
<%--        <c:if test="${loginError}" >--%>
<%--            <div class="alert alert-danger">--%>
<%--                <button type="button" aria-hidden="true" class="close" data-dismiss="alert">--%>
<%--                    <i class="nc-icon nc-simple-remove"></i>--%>
<%--                </button>--%>
<%--                <span>${loginError}</span>--%>
<%--            </div>--%>
<%--        </c:if>--%>
        <div class="checkbox mb-3">
            <label>
                <input type="checkbox" value="remember-me"> Recordarme ${email} ${pass} ${checked}
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Inciar Sesi&oacute;n</button>
    </form>
</body>
</html>
