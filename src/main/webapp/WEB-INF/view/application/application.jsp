<!DOCTYPE html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="spring_form" uri="http://www.springframework.org/tags/form" %>

<page:template>
    <jsp:body>

        <div class="container">
            <div class="jumbotron">
                <h2>Пожалуйста заполните следующте поля:</h2>

                <spring_form:form method="post" modelAttribute="customer" action="application/created">
                   <p class="input-group">
                        <span class="input-group-lg ">Фамилия:</span>
                       <spring_form:input  path="firstName" type="text" class="form-control" name = "firstName" placeholder="" ></spring_form:input>
                    </p>
                    <h2></h2>
                    <p class="input-group">
                        <span class="input-group-lg">Имя:</span>
                        <spring_form:input path="lastName" type="text" class="form-control" name = "lastName" placeholder="" ></spring_form:input>
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
            </div>
    </jsp:body>
</page:template>