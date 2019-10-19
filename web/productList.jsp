<%-- 
    Document   : productList
    Created on : 11 Oct, 2019, 8:05:29 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  

<html>
    <head>
         <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>
        <div class="container"><br/>
        <h2 class="font-weight-normal lead" id="desc">Check out our items!</h2>
        <br/>
        <form method="post">
            <input type="submit" class="btn btn-outline-danger" value="Logout" formAction="product.do?action=logout">&nbsp;
        <input type="submit" class="btn btn-outline-danger" formAction="cart.jsp" value="View Cart">
        <hr>
        <br/><br/>
            <div class="row">
                <div class="col-sm-4">
                    <div style="text-align: center" class="alert alert-info" role="alert">
                        <h2 class="font-weight-normal lead" id="desc">Our brand new Laptops</h2>
                    </div>
                    <c:forEach var="val" items="${sessionScope.productList}">
                        <c:if test="${fn:contains(val.catagory, 'Laptop')}">
                            <input type="checkbox" name="item" value="${val.name}"/>
                            <label for="item"><c:out value="${val.name}"/></label> <br/>
                        </c:if>
                    </c:forEach>
                    <br/><br/>
                    <input type="submit" class="btn btn-outline-info" formAction="product.do?action=add" value="Add to Cart">
                </div>
                
                <div class="col-sm-4">
                    <div style="text-align: center" class="alert alert-success" role="alert">
                        <h2 class="font-weight-normal lead" id="desc">Our Top Rated Book Collection</h2>
                    </div>
                    <c:forEach var="val" items="${sessionScope.productList}">
                        <c:if test="${fn:contains(val.catagory, 'Book')}">
                            <input type="checkbox" name="item" value="${val.name}"/>
                            <label for="item"><c:out value="${val.name}"/></label> <br/>
                        </c:if>
                    </c:forEach>
                    <br/><br/>
                    <input type="submit" class="btn btn-outline-success" formAction="product.do?action=add" value="Add to Cart">
                </div>
                
                   <div class="col-sm-4">
                    <div style="text-align: center" class="alert alert-warning" role="alert">
                        <h2 class="font-weight-normal lead" id="desc">Our Brand New Music Collection</h2>
                    </div>
                    <c:forEach var="val" items="${sessionScope.productList}">
                        <c:if test="${fn:contains(val.catagory, 'Music')}">
                            <input type="checkbox" name="item" value="${val.name}"/>
                            <label for="item"><c:out value="${val.name}"/></label> <br/>
                        </c:if>
                    </c:forEach>
                    <br/><br/>
                    <input type="submit" class="btn btn-outline-warning" formAction="product.do?action=add" value="Add to Cart">
                </div>
            </div>
        </form>
        </div>
    </body>
</html>
