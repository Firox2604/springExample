<#import "macros.ftl" as utils/>
<html>
    <head>
        <title>Welcome!</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script    src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <script    src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="static/css/style.css" />
    </head>
    <body>
    <@utils.nawigation/>
    <@utils.menu/>

    <h1>Users List</h1>
    <#if message??>
        <@utils.message msg="${message}"></@utils.message>
    </#if>
     <@utils.url"http://wwww.wp.pl","Wirtualna Polska"/>
        <table class="table table-striped">
            <thead>
            <th>Login</th>
            <th>First name</th>
            <th>Last name</th>
            <th>Email</th>
            <th></th>
            <th></th>
            </thead>
            <tbody>
            <#list users as user>
                <tr>
                    <td>${user.login}</td>
                    <td>${user.name}</td>
                    <td>${user.lastname}</td>
                    <td>${user.email}</td>
                    <td>
                        <a href="/update/${user.id}">Update</a>
                    </td>
                    <td>
                        <a href="/delete/${user.id}">Delete</a>
                    </td>
                </tr>
            </#list>

            </tbody>
        </table>

    </body>
</html>