<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>${titulo}</title>
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
</head>
<body class="p-4">

<h3 class="mb-3">${titulo}</h3>

<c:set var="ctx" value="${pageContext.request.contextPath}" />

<c:choose>
    <c:when test="${persona.id > 0}">
        <c:set var="actionUrl" value="${ctx}/personas/actualizar" />
    </c:when>
    <c:otherwise>
        <c:set var="actionUrl" value="${ctx}/personas/guardar" />
    </c:otherwise>
</c:choose>

<form action="${actionUrl}" method="post" class="row g-3" style="max-width:480px;">
    <input type="hidden" name="id" value="${persona.id}"/>

    <div class="col-12">
        <label class="form-label">Nombres</label>
        <input type="text" name="nombres" value="${persona.nombres}" required class="form-control"/>
    </div>

    <div class="col-12">
        <label class="form-label">Correo</label>
        <input type="email" name="correo" value="${persona.correo}" required class="form-control"/>
    </div>

    <div class="col-12">
        <label class="form-label">Nacionalidad</label>
        <input type="text" name="nacionalidad" value="${persona.nacionalidad}" required class="form-control"/>
    </div>

    <div class="col-12 d-flex gap-2">
        <button type="submit" class="btn btn-primary">Guardar</button>
        <a href="${ctx}/personas" class="btn btn-secondary">Cancelar</a>
    </div>
</form>

</body>
</html>
