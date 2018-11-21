<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Users</title>
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
            <a class="navbar-brand" href="#">WebSiteName</a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">All Users</a></li>
            <li><a href="newUser">New user</a></li>
        </ul>
    </div>
</nav>

<div class="container">
    <c:choose>
        <c:when test="${mode == 'USER_VIEW'}">
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>Id</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Middle Name</th>
                        <th>Phone</th>
                        <th>Email</th>
                        <th>Birth Year</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>
                <tbody>

                    <c:forEach var="user" items="${users}"  >
                        <tr>
                            <td>${user.id}</td>
                            <td>${user.first_name}</td>
                            <td>${user.last_name}</td>
                            <td>${user.middle_name}</td>
                            <td>${user.phone}</td>
                            <td>${user.email}</td>
                            <td>${user.birth_year}</td>
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