<#import "spring.ftl" as spring/>
<#import "macros.ftl" as utils/>
<html>
<head>
    <title>Welcome!</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="static/css/style.css"/>
</head>
<body>
<@utils.nawigation/>
<h1>Register Account</h1>
<form class="form-horizontal" action="/user-register" method="post">
    <div class=" form-group">
        <label for="login" class="col-sm-2 control-label">Login</label>
        <div class="col-sm-2">
            <@spring.formInput "user.login" "class='form-control' id='login' placeholder='login'" "text" />
        </div>
    </div>
    <div class="form-group">
        <label for="firstName" class="col-sm-2 control-label">First name</label>
        <div class="col-sm-2">
            <@spring.formInput "user.name" "class='form-control' id='firstName' placeholder='first name'" "text" />
        </div>
    </div>
    <div class="form-group">
        <label for="lastName" class="col-sm-2 control-label">Last name</label>
        <div class="col-sm-2">
            <@spring.formInput "user.lastname" "class='form-control' id='lastName' placeholder='last name'" "text" />
        </div>
    </div>
    <div class="form-group">
        <label for="email" class="col-sm-2 control-label"> Email address</label>
        <div class="col-sm-2">
            <@spring.formInput "user.email" "class='form-control' id='email' placeholder='email'" "text" />
        </div>
    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-default">Submit</button>
    </div>
</div>
</form>
</body>
</html>