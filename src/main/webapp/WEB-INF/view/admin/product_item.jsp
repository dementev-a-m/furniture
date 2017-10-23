<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="spring_form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Форма мебели</title>
    <spring:url value="/resources/css/bootstrap.css" var="bootstrap"/>
    <spring:url value="/resources/css/modern-business.css" var="startertemplate"/>
    <link href="${bootstrap}" rel="stylesheet" />
    <link href="${startertemplate}" rel="stylesheet" />
</head>
<body>


<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/">Форма Мебели </a>
        </div>
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">

                <li>
                    <a href="/portfolio">Портфолио</a>
                </li>
                <li>
                    <a href="/about">О компании</a>
                </li>
                <li>
                    <a href="/contact">Контакты</a>
                </li>
                <li>
                    <a href="/contact">Выход</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
<div class="container">
    <p></p>

    <div class="row">
        <div class="jumbotron">

            <spring_form:form method="post" modelAttribute="product" action="/admin/product_added">
                <p class="input-group">
                    <span class="input-group-lg ">Название:</span>
                    <spring_form:input  path="name" type="text" class="form-control" name = "name"  value = "${product.name}"></spring_form:input>
                </p>
                <h2></h2>
                <p class="input-group">
                    <span class="input-group-lg">Цена:</span>
                    <spring_form:input path="price" type="text" class="form-control" name = "price" value="${product.price}" ></spring_form:input>
                </p>
                <h2></h2>
                <p class="input-group">
                    <span class="input-group-lg">Тип :</span>
                    <spring_form:select path="type"  cssClass="form-control" >
                        <spring_form:option  value="${product.type}" label="${product.type}"/>
                        <spring_form:options items="${typeList}" />
                    </spring_form:select>
                </p>
                <h2></h2>
                <p class="input-group-lg">
                    <span class="input-group-lg">Описание: </span>
                    <spring_form:textarea path ="description"  type="text" class="form-control" name = "description" value="${product.description}" ></spring_form:textarea>
                </p>

                <h2></h2>
                <spring_form:button class="btn btn-primary btn-lg" role="button">Изменить</spring_form:button>
                <button class="btn btn-danger btn-lg" role="button" href="/admin/product_item/delete/${product.id}">Удалить</button>
            </spring_form:form>
        </div>
    </div>
    <!-- /.row -->


</div>
<!-- /.container -->

<!-- jQuery -->
<script src="/resources/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="/resources/js/bootstrap.min.js"></script>

<!-- Script to Activate the Carousel -->
<script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
</script>

<div class="container">
    <!-- Footer -->
    <footer>
        <div class="row">
            <div class="col-lg-12">
                <p></p>
            </div>
        </div>
    </footer>
</div>

</body>

</html>