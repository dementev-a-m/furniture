
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
            <div class="row">
                <form method="POST" action="/admin" class="form-signin">
                    <h2 class="form-heading">Вход</h2>

                    <div class="form-group ${error != null ? 'has-error' : ''}">
                        <span>${message}</span>
                        <input name="username" type="text" class="form-control" placeholder="Username"
                               autofocus="true"/>
                        <input name="password" type="password" class="form-control" placeholder="Password"/>
                        <span>${error}</span>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

                        <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
                        <h4 class="text-center"><a href="${contextPath}/registration">Create an account</a></h4>
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
