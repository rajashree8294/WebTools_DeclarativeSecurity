<%-- 
    Document   : viewProducts
    Created on : 11 Oct, 2019, 8:46:00 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %> 
<!DOCTYPE html>
<html>
    <head>
         <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>
        <div class="container"><br/>
        <h2 class="font-weight-normal lead" id="desc">Below products are added to cart successfully</h2>
        <br/>
        <form action="product.do?action=view" method="post">
        <input type="submit" class="btn btn-outline-danger" value="Logout" formAction="product.do?action=logout">
        <input type="submit" class="btn btn-outline-danger" value="Go Back" formAction="productList.jsp?action=add">
        <hr>
        <br/><br/>
            <div class="row" style="text-align: center">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div style="text-align: center" class="alert alert-info" role="alert">
                        Items
                    </div>
                    <c:forEach var="val" items="${sessionScope.recentlySelected}">
                            <c:out value="${val}"/> <br/>
                     </c:forEach>

                    <br/><br/>
                </div>
                <div class="col-sm-3"></div>
            </div>
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                <input type="submit" class="btn btn-outline-info" value="View Cart">
            </div>
            <div class="col-sm-3"></div>
        </div>
        </form>
        </div>
    </body>
</html>