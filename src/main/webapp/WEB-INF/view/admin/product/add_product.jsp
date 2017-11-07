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
        <div class="jumbotron">
        <div class="row">



                <div class="col-md-6">
                        <spring_form:form method="post" modelAttribute="product" action="add_product_step2">
                            <p class="input-group">
                                <span class="input-group-lg ">Название:</span>
                                <spring_form:input  path="name" type="text" class="form-control" name = "name" placeholder="" ></spring_form:input>
                            </p>
                            <h2></h2>
                            <p class="input-group">
                                <span class="input-group-lg">Тип :</span>
                                <spring_form:select path="type"  cssClass="form-control" >
                                    <spring_form:option  value="NONE" label="Выберите значение"/>
                                    <spring_form:options items="${typeList}" />
                                </spring_form:select>
                            </p>
                            <h2></h2>
                            <p class="input-group-lg">
                                <span class="input-group-lg">Описание: </span>
                                <spring_form:textarea path ="description"  type="text" class="form-control" name = "description" placeholder="" ></spring_form:textarea>
                            </p>
                            <%--<spring_form:input path="image" type ="image" name = "image"/>--%>
                            <h2></h2>
                            <p><spring_form:button class="btn btn-primary btn-lg" role="button">Добавить</spring_form:button></p>

                        </spring_form:form>

                    </div>
                    <!-- /.row -->

                </div>
        </div>

        <!-- jQuery -->
        <script src="/resources/js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="/resources/js/bootstrap.min.js"></script>


    </jsp:body>
</page:template_admin>
