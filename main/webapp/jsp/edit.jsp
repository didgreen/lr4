<%@page import="com.example.demo.Cat"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Запись</title>
    <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-aFq/bzH65dt+w6FI2ooMVUpc+21e0SRygnTpmBvdBgSdnuTN7QbdgL+OapgHtvPp"
            crossorigin="anonymous">
    <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-qKXV1j0HvMUeCBQ+QVp7JcfGl760yU08IQ+GpUo5hlbpg51QRiuqHAJz8+BrxE/N"
            crossorigin="anonymous"></script>
    <script src="js/getForEdit1.js"></script>

</head>
<body>
<header>
    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">JSON</a>
            <button class="navbar-toggler" type="button"
                    data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
                    aria-controls="navbarCollapse" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">
                    <li class="nav-item p-2">
                        <form class="form-inline" aria-current="page" action="write">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Запись</button>
                        </form>
                    </li>
                    <li class="nav-item p-2">
                        <form class="form-inline" aria-current="page" action="read">
                            <button class="btn btn-outline-success my-2 my-sm-0"
                                    type="submit">Чтение</button>
                        </form>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<div>
    <form class="w-50 p-5 shadow rounded text-center position-absolute top-50 start-50 translate-middle row">
        <p class="font-weight-bold">Редактировать запись</p>
        <input class="mt-2 rounded" id="name" type="text" placeholder="Name" value="<%=((Cat) request.getAttribute("cat")).getName()%>">
        <input class="mt-2 rounded" id="origin" type="text" placeholder="Origin" value="<%=((Cat) request.getAttribute("cat")).getOrigin()%>">
        <input class="mt-2 rounded" id="size" type="text" placeholder="Size" value="<%=((Cat) request.getAttribute("cat")).getSize()%>">
        <input class="mt-2 rounded" id="age" type="number" placeholder="Age" value="<%=((Cat) request.getAttribute("cat")).getAge()%>">
        <input class="mt-2 rounded" id="pounds" type="number" placeholder="Pounds" value="<%=((Cat) request.getAttribute("cat")).getPounds()%>">
        <button type="button" class="btn btn-success mt-2 rounded" onclick="sendEditedCat()">Сохранить</button>
    </form>
</div>
</body>
</html>