
<!DOCTYPE html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>
    <jsp:body>
        <!-- Header Carousel -->

        <div class="container">
            <!-- Features Section -->
            <h2/>
            <div class="jumbotron">

                <form method="POST" action="/admin" class="form-control">
                    <h2 class="form-heading">Вход</h2>
                    <h3/>
                    <div class="form-group ${error != null ? 'has-error' : ''}">
                            <span>${message}</span>
                        <input name="username" type="text" class="form-control" placeholder="Имя пользователя"
                               autofocus="true"/>
                        <h3/>
                        <input name="password" type="password" class="form-control" placeholder="Пароль"/>
                        <h3/>

                            <span>${error}</span>

                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                        <button class="btn btn-lg btn-primary btn-block" type="submit">Войти</button>
                        <%--<h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>--%>
                    </div>

                </form>

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
