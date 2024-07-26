<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 20px;
        }
        .contenedor{
            background-color: #e7a4e7;
            padding: 20px;
            border:rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #ede4f0;
        }

        .result-container {
            background-color: rgb(87, 137, 230);
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        p {
            margin-bottom: 10px;
            color: #06010a;
        }

        ul {
            list-style-type: none;
            padding: 0;
            margin-bottom: 0;
        }

        li {
            margin-bottom: 5px;
            color: #06010a;
        }
    </style>
<head>
    <title>Resultado del Formulario</title>
</head>
<body>
    <div class="contenedor">
    <h1>Resultado del Formulario</h1>
    <p><strong>Nombre: </strong><%= request.getParameter("nombre") %></p>
    <p><strong>Apellidos:</strong>  <%= request.getParameter("apellidos") %></p>
    <p><strong>Género:</strong> <%= request.getParameter("genero") %></p>
    <p><strong> Pasatiempos:</strong></p>
    <ul>
        <% String[] pasatiempos = request.getParameterValues("pasatiempos"); %>
        <% if (pasatiempos != null) { %>
            <% for (String pasatiempo : pasatiempos) { %>
                <li><%= pasatiempo %></li>
            <% } %>
        <% } else { %>
            <li>Ninguno</li>
        <% } %>
    </ul>
    </div>
</body>
</html>