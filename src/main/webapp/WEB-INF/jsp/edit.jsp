<!DOCTYPE html>
<html>
<head>
    <title>User Edit</title>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <meta http-equiv="Content-Type" content="text/html; charset=windows-1251">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

    <body>
        <form action="save" method="get">
            <input type="hidden" class="form-control" name="id" value="${user.id}" id="id">
            <div class="form-group">
                <label for="firstName">Имя</label>
                <input type="text" class="form-control" value="${user.firstName}" name="firstName" id="firstName">
            </div>
            <div class="form-group">
                <label for="lastName">Фамилия</label>
                <input type="text" class="form-control" value="${user.lastName}" name="lastName" id="lastName">
            </div>
            <div class="form-group">
                <label for="middleName">Отчество</label>
                <input type="text" class="form-control" value="${user.middleName}" name="middleName" id="middleName">
            </div>
            <div class="form-group">
                <label for="phone">Телефон</label>
                <input type="text" class="form-control" value="${user.phone}" name="phone" id="phone">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="text" class="form-control" value="${user.email}" name="email" id="email">
            </div>
            <div class="form-group">
                <label for="birthYear">Год рожждения</label>
                <input type="text" class="form-control" value="${user.birthYear}" name="birthYear" id="birthYear">
            </div>
            <div class="form-group">
                <label for="region">Область</label>
                <input type="text" class="form-control" value="${address.region}" name="region" id="region">
            </div>
            <div class="form-group">
                <label for="city">Город</label>
                <input type="text" class="form-control" value="${address.city}" name="city" id="city">
            </div>
            <div class="form-group">
                <label for="street">Улица</label>
                <input type="text" class="form-control" value="${address.street}" name="street" id="street">
            </div>
            <div class="form-group">
                <label for="houseNum">Номер дома</label>
                <input type="text" class="form-control" value="${address.houseNum}" name="houseNum" id="houseNum">
            </div>
            <div class="form-group">
                <label for="apartment">Квартира</label>
                <input type="text" class="form-control" value="${address.apartment}" name="apartment" id="apartment">
            </div>
            <button type="submit" class="btn btn-default">Добавить</button>
        </form>
    </body>
</html>