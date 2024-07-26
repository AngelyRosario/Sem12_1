<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Formulario de Registro</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f0f0f0;
        }

        .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        h1 {
            text-align: center;
            color: #333;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="radio"],
        input[type="checkbox"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="checkbox"] {
            width: auto; /* Ancho automático para checkboxes */
            margin-bottom: 5px;
        }

        input[type="submit"] {
            background-color: #a630c4;
            color: white;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #a04cb1;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Formulario de Registro</h1>
        <form action="result.jsp" method="get">
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombre" name="nombre" required><br>

            <label for="apellidos">Apellidos:</label>
            <input type="text" id="apellidos" name="apellidos" required><br>

            <label>Género:</label><br>
            <input type="radio" id="masculino" name="genero" value="masculino" required>
            <label for="masculino">Masculino</label><br>
            <input type="radio" id="femenino" name="genero" value="femenino" required>
            <label for="femenino">Femenino</label><br>

            <label>Pasatiempos:</label><br>
            <input type="checkbox" id="futbol" name="pasatiempos" value="futbol">
            <label for="futbol">Fútbol</label><br>
            <input type="checkbox" id="natacion" name="pasatiempos" value="natacion">
            <label for="natacion">Natación</label><br>
            <input type="checkbox" id="lectura" name="pasatiempos" value="lectura">
            <label for="lectura">Lectura</label><br>

            <input type="submit" value="Enviar">
        </form>
    </div>
</body>
</html>
