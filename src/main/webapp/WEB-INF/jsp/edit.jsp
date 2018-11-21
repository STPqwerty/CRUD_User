<!DOCTYPE html>
<html>
<head>
    <title>User Edit</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<form action="save" method="get">
    <input type="hidden" class="form-control" name="id" value="${user.id}" id="id">
    <div class="form-group">
        <label for="first_name">First Name</label>
        <input type="text" class="form-control" value="${user.first_name}" name="first_name" id="first_name">
    </div>
    <div class="form-group">
        <label for="last_name">Last Name</label>
        <input type="text" class="form-control" value="${user.last_name}" name="last_name" id="last_name">
    </div>
    <div class="form-group">
        <label for="middle_name">Middle Name</label>
        <input type="text" class="form-control" value="${user.middle_name}" name="middle_name" id="middle_name">
    </div>
    <div class="form-group">
        <label for="phone">Phone</label>
        <input type="text" class="form-control" value="${user.phone}" name="phone" id="phone">
    </div>
    <div class="form-group">
        <label for="email">Email</label>
        <input type="text" class="form-control" value="${user.email}" name="email" id="email">
    </div>
    <div class="form-group">
        <label for="birth_year">Birth Year</label>
        <input type="text" class="form-control" value="${user.birth_year}" name="birth_year" id="birth_year">
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
</form>

</body>
</html>