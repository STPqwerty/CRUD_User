<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Пользователи</title>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Users.com</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Все пользователи</a></li>
            <li><a href="newUser">Добавить пользователя</a></li>
        </ul>
    </div>
</nav>

<div class="container">
    <c:choose>
        <c:when test="${mode == 'USER_VIEW'}">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th></th>
                        <th>Имя</th>
                        <th>Фамилия</th>
                        <th>Отчество</th>
                        <th>Телефон</th>
                        <th>Адрес</th>
                        <th>Email</th>
                        <th>Год рождения</th>
                        <th>Править</th>
                        <th>Удалить</th>
                    </tr>
                </thead>
                <tbody>

                    <c:forEach var="user" items="${users}">
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.firstName}</td>
                            <td>${user.lastName}</td>
                            <td>${user.middleName}</td>
                            <td>${user.phone}</td>
                            <td>${user.address.region}, город:${user.address.city},  ул.:${user.address.street}, дом:${user.address.houseNum},  кв.:${user.address.apartment}</td>
                            <td>${user.email}</td>
                            <td>${user.birthYear}</td>
                            <td><a href="updateUser?id=${user.id}"><div class="glyphicon glyphicon-pencil"></div></a> </td>
                            <td><a href="deleteUser?id=${user.id}"><div class="glyphicon glyphicon-trash"></div></a> </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </c:when>
    </c:choose>
</div>

</body>
</html>