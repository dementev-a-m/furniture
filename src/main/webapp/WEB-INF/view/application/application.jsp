<!DOCTYPE html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="spring_form" uri="http://www.springframework.org/tags/form" %>

<page:template>
    <jsp:body>
        <header id="myCarousel" class="carousel slide"/>
        <div class="container">
            <div class="jumbotron">
                <h2>Пожалуйста, заполните следующие поля:</h2>

                <spring_form:form name="form" method="post" modelAttribute="application" action="application/created">

                        <p class="input-group col-lg-6">
                            <span class="input-group-lg ">Имя:</span>
                           <spring_form:input  path="firstName" type="text" class="form-control" name = "firstName" placeholder="" ></spring_form:input>
                        </p>
                        <h3></h3>
                        <p class="input-group col-lg-6">
                            <span class="input-group-lg">Фамилия:</span>
                            <spring_form:input path="lastName" type="text" class="form-control" name = "lastName" placeholder="" ></spring_form:input>
                        </p>
                        <h3></h3>
                        <p class="input-group col-lg-4">
                            <span class="input-group-lg">Номер телефона: </span>
                            <spring_form:input path ="phone"  type="text" class="form-control" name = "phoneNumber" placeholder="+7(XXX)XXX XX XX" ></spring_form:input>
                        </p>
                        <h3></h3>
                        <p class="input-group col-lg-4">
                            <span class="input-group-lg">Электронная почта: </span>
                            <spring_form:input path ="email"  type="text" class="form-control" name = "phoneNumber" placeholder="" ></spring_form:input>
                        </p>
                        <div class="form-check" >
                            <label class="form-check-label">
                                <input id ="checked" type="checkbox" class="form-check-input" onclick="showOrHidden(this)">
                                Выезд для замера:
                            </label>
                        </div>

                        <div id = "address"  hidden  >
                            <p class="input-group col-lg-4">

                                <span name = "label_city"  disabled="none" class="input-group-lg">Город: </span>
                                <spring_form:input path ="address.city"  type="text" class="form-control" name = "city" placeholder="" ></spring_form:input>
                            </p>
                            <h3></h3>
                            <p class="input-group col-lg-6">
                                <span name = "label_street" class="input-group-lg">Улица: </span>
                                <spring_form:input path ="address.street"  type="text" class="form-control" name = "street" placeholder="" ></spring_form:input>
                            </p>
                            <h3></h3>
                            <p class="input-group col-lg-1">
                                <span name = "label_house" class="input-group-lg">Дом: </span>
                                <spring_form:input path ="address.house"  type="text" class="form-control" name = "house" placeholder="" ></spring_form:input>
                            </p>
                            <h3></h3>
                            <p class="input-group col-lg-1">
                                <span name = "label_flat" class="input-group-lg">Квартира: </span>
                                <spring_form:input path ="address.flat"  type="text" class="form-control" name = "flat" placeholder="" ></spring_form:input>
                            </p>
                            <h3></h3>
                        </div>
                        <p class="input-group col-lg-10">
                            <span class="input-group-lg">Комментарий: </span>
                            <spring_form:textarea path ="comment" rows="8" type="text" class="form-control" name = "comment" placeholder="" ></spring_form:textarea>
                        </p>

                    <p><spring_form:button class="btn btn-primary btn-lg" role="button">Оставить заявку</spring_form:button></p>
                </spring_form:form>
                </div>
            </div>
        <script>

            function showOrHidden(a) {
                    document.getElementById("address").hidden = !a.checked;
            }
        </script>
    </jsp:body>
</page:template>