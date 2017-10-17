<!DOCTYPE html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="spring_form" uri="http://www.springframework.org/tags/form" %>

<page:template>
    <jsp:body>

        <!-- Header Carousel -->
        <header id="myCarousel" class="glyphicon-log-in">


        </header>

        <!-- Page Content -->
        <div class="container">
            <div class="row">
                <spring_form:form method="post" modelAttribute="user" action="admin/login">
                    <p class="input-group">
                        <span class="input-group-lg ">Имя пользователя:</span>
                        <spring_form:input  path="username" type="text" class="form-control" name = "username" placeholder="" ></spring_form:input>
                    </p>
                    <h2></h2>
                    <p class="input-group">
                        <span class="input-group-lg">Имя:</span>
                        <spring_form:input path="password" type="text" class="password" name = "password" placeholder="" ></spring_form:input>
                    </p>
                    <h2></h2>
                    <p class="input-group">
                        <span class="input-group-lg">Номер телефона: </span>
                        <spring_form:input path ="phone"  type="text" class="form-control" name = "phoneNumber" placeholder="" ></spring_form:input>
                    </p>

                    <h2></h2>
                    <p><spring_form:button class="btn btn-primary btn-lg" role="button">Оставить заявку</spring_form:button></p>
                </spring_form:form>
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



    </jsp:body>
</page:template>
