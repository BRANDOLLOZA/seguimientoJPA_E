<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro de Estudiantes</title>
    <style>
        body {
            font-family: Times New Roman, sans-serif;
            background-color: #E89890;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 900px;
            box-sizing: border-box;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        .action-links {
            text-align: center;
            margin-bottom: 20px;
        }

        .action-links a {
            color: #000000;
            text-decoration: none;
            margin-right: 10px;
            padding: 10px 20px;
            border: 1px solid #000000;
            border-radius: 5px;
            transition: background-color 0.3s, color 0.3s;
        }

        .action-links a:hover {
            background-color: #000000;
            color: #fff;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            background-color: #fff;
            border-radius: 5px;
            overflow: hidden;
        }

        th, td {
            padding: 12px 15px;
            border: 2px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
            color: #333;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        .table-actions a {
            color: #007bff;
            text-decoration: none;
            margin-right: 10px;
            transition: color 0.3s;
        }

        .table-actions a:hover {
            color: #0056b3;
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Registro de Estudiantes</h1>
        
        <div class="action-links">
            
            <a href="MainController?action=add">Nuevo</a>
        </div>
        <table>
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Correo Electrónico</th>
                    <th>Fecha de Nacimiento</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="estudiante" items="${estudiantes}">
                    <tr>
                        <td>${estudiante.id}</td>
                        <td>${estudiante.nombre}</td>
                        <td>${estudiante.apellidos}</td>
                        <td>${estudiante.email}</td>
                        <td>${estudiante.fechaNacimiento}</td>
                        <td class="table-actions">
                            <a href="MainController?action=edit&id=${estudiante.id}">Editar</a>
                            <a href="MainController?action=delete&id=${estudiante.id}" onclick="return confirm('¿Está seguro de eliminar este estudiante?')">Eliminar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
