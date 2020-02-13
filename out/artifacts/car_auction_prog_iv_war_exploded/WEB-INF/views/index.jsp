<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
  <spring:eval expression="@propertyConfigurer.getProperty('bootstrap.css')" var="bootstrapCSS" />
  <spring:eval expression="@propertyConfigurer.getProperty('bootstrap.css.integrity')" var="bootstrapCSSInte" />

  <link rel="stylesheet" type="text/css" href="${bootstrapCSS}" integrity="${bootstrapCSSInte}" crossorigin="anonymous" />
</head>
<body>
<p>${message}</p>
</body>
</html>