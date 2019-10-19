<%-- 
    Document   : cart
    Created on : 11 Oct, 2019, 9:44:34 PM
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
        <h2 class="font-weight-normal lead" id="desc">Your Cart</h2>
        <br/>
        <form action="product.do?action=remove" method="post">
        <input type="submit" class="btn btn-outline-danger" value="Logout" formAction="product.do?action=logout">
        <input type="submit" class="btn btn-outline-danger" value="Shop More" formAction="productList.jsp?action=add">
        <hr>
        <br/><br/>
            <div class="row" style="text-align: center">
                <div class="col-sm-3"></div>
                <div class="col-sm-6">
                    <div style="text-align: center" class="alert alert-warning" role="alert">
                        <h2 class="font-weight-normal lead" id="desc">Cart Items</h2>
                    </div>
                        <c:if test="${sessionScope.cart.size() <= 0}">
                            <h2 class="font-weight-normal lead" id="desc">Cart is Empty</h2><br/>
                        </c:if>

                        <c:if test="${sessionScope.cart == null}">
                            <h2 class="font-weight-normal lead" id="desc">Cart is Empty</h2><br/>
                        </c:if>
                            
                        <c:if test="${sessionScope.cart.size() > 0}">
                            <c:forEach var="val" items="${sessionScope.cart}">
                                <input type="checkbox" name="item" value="${val}"/>
                                <label for="item"> <c:out value="${val}"/></label> <br/>
                            </c:forEach>
                        </c:if>
                    <br/><br/>
                </div>
                <div class="col-sm-3"></div>
            </div>
        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-6">
                 <input type="submit" class="btn btn-outline-warning" value="Remove Selected">
            </div>
            <div class="col-sm-3"></div>
        </div>
        </form>
        </div>
    </body>
</html>