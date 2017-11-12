<!DOCTYPE html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="spring_form" uri="http://www.springframework.org/tags/form" %>

<page:template_admin>
    <jsp:body>
        <!-- Header Carousel -->
        <div class="container">
            <p></p>

            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header">Галерия</h2>
                    <p><a class="btn btn-default btn-lg" role="button" href="product_add">Добавить</a></p>
                    <h2/>
                </div>
                <c:set var="count" value="1" scope="page" />
                <c:forEach var="item" items="${products}">

                    <div class="col-xs-12 col-xs-10 col-md-4 col-md-5 col-lg-4 col-lg-5 col-sm-6 col-sm-5">
                        <a href="product_item/${item.id}">
                            <img class=" img-portfolio img-thumbnail" src="/image/${item.image.id}" alt="">
                        </a>
                    </div>
                    <c:if test="${count%2 == 0}">
                        <div class="clearfix hidden-xs hidden-lg hidden-md"></div>
                    </c:if>
                    <c:if test="${count%3 == 0}">
                        <div class="clearfix hidden-xs hidden-sm"></div>
                    </c:if>
                    <c:set var="count" value="${count + 1}" scope="page"/>
                </c:forEach>
            </div>
            <!-- /.row -->


        </div>

        <!-- jQuery -->
        <script src="/resources/js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="/resources/js/bootstrap.min.js"></script>


    </jsp:body>
</page:template_admin>
