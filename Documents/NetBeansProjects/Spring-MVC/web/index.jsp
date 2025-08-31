<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Inicio</title>
  <style>
    body { font-family: Arial, sans-serif; display:flex; height:100vh; align-items:center; justify-content:center; background:#f5f7fb; }
    .card { background:#fff; padding:24px 28px; border-radius:12px; box-shadow:0 10px 25px rgba(0,0,0,.08); width:360px; text-align:center; }
    h1 { margin:0 0 12px; font-size:22px; }
    p { margin:0 0 20px; color:#555; }
    .actions { display:flex; gap:12px; justify-content:center; }
    .btn { border:0; padding:10px 16px; border-radius:8px; cursor:pointer; font-size:15px; }
    .btn-primary { background:#2563eb; color:#fff; }
    .btn-secondary { background:#e5e7eb; color:#111827; }
    .btn:hover { opacity:.9; }
  </style>
</head>
<body>
  <div class="card">
    <h1>¡HOLA!</h1>
    <p>Bienvenido. Puede iniciar el módulo de Personas o salir.</p>
    <div class="actions">
      <button class="btn btn-primary" onclick="location.href='personas'">Iniciar</button>
      <button class="btn btn-secondary" onclick="window.location.href='about:blank'">Salir</button>
    </div>
  </div>
</body>
</html>