<#macro url path name="">
    <a href="${path}">
        ${name}
    </a>
</#macro>
<#macro nawigation>
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-end">
            <li class="page-item">
                <a class="align-text-top" href="/">Home</a>
            </li>
        </ul>
        <ul class="pagination justify-content-end">
            <li class="page-item">
                <a class="align-text-top" href="/users">Users</a>
            </li>
        </ul>
        <ul class="pagination justify-content-end">
            <li class="page-item">
                <a class="align-text-top" href="/user-register">Register</a>
            </li>
        </ul>
        <ul class="pagination justify-content-end">
            <li class="page-item">
                <a class="align-text-top" href="/logout">Logout</a>
            </li>
        </ul>
    </nav>
</#macro>

<#macro message msg>
        <div class="alert alert-info" role="alert">
            ${msg}
        </div>

</#macro>

<#macro error msg>
        <div class="alert alert-danger" role="alert">
            ${msg}
        </div>

</#macro>

<#macro dropdown username logoutUrl myAccountUrl>
    <div class="dropdown show">
        <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            ${username}
        </a>

        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
            <a class="dropdown-item" href=${myAccountUrl}>My Account</a>
            <a class="dropdown-item" href=${logoutUrl}>Logout</a>
        </div>
    </div>
</#macro>

<#macro menu>
<div class="dropdown">
    <a class="btn btn-secondary dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
        Dropdown link
    </a>

    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
        <a class="dropdown-item" href="#">Action</a>
        <a class="dropdown-item" href="#">Another action</a>
        <a class="dropdown-item" href="#">Something else here</a>
    </div>
</div

</#macro>