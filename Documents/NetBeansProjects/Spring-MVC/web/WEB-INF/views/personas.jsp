<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8"><title>Personas</title>
  <style>
    body{font-family:Arial;margin:24px}
    table{border-collapse:collapse;width:100%}
    th,td{border:1px solid #ccc;padding:8px}
    th{background:#f5f5f5}
    a.btn{display:inline-block;padding:6px 10px;margin-right:6px;border-radius:4px;text-decoration:none}
    .add{background:#2d8fdd;color:#fff}
    .edit{background:#f0ad4e;color:#fff}
    .del{background:#d9534f;color:#fff}
  </style>
</head>
<body>

  <!-- 🔽 Aquí va -->
  <c:set var="ctx" value="${pageContext.request.contextPath}" />

  <h1>Listado de Personas</h1>
  <p><a class="btn add" href="${ctx}/personas/nuevo">+ Nueva persona</a></p>
  <table>
    <thead>
      <tr><th>ID</th><th>Nombres</th><th>Correo</th><th>Nacionalidad</th><th>Acciones</th></tr>
    </thead>
    <tbody>
      <c:forEach items="${personas}" var="p">
        <tr>
          <td>${p.id}</td>
          <td>${p.nombres}</td>
          <td>${p.correo}</td>
          <td>${p.nacionalidad}</td>
          <td>
            <a class="btn edit" href="${ctx}/personas/editar/${p.id}">Editar</a>
            <a class="btn del" href="${ctx}/personas/eliminar/${p.id}"
               onclick="return confirm('¿Desea realmente Eliminar el registro?');">Eliminar</a>
          </td>
        </tr>
      </c:forEach>
    </tbody>
  </table>
</body>
</html>
