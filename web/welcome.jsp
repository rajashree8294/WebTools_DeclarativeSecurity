<%-- 
    Document   : welcome
    Created on : 12 Oct, 2019, 5:35:44 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
    <div class="container">
        <form method="post">
        <br/><br/><br/>
        <div class="d-flex justify-content-center align-items-center" id="main">
            <h1 class="mr-3 pr-3 align-top border-right inline-block align-content-center">Welcome</h1>
            <div class="inline-block align-middle">
                <h2 class="font-weight-normal lead" id="desc">Click <b>SHOP NOW</b> to shop</h2>
            </div>
        </div>
         <hr>
        <br/><br/><br/>
        <div class="d-flex justify-content-center align-items-center">
            <input type="submit" class="btn btn-outline-primary" value="Shop Now" formAction="product.do?action=userlogin"/> &nbsp;
            <input type="submit" class="btn btn-outline-danger" value="Logout" formAction="product.do?action=logout"/>
        </div>
        </form>
    </div>
</body>
</html>
