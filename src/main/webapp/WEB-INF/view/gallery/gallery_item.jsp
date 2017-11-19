<!DOCTYPE html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>
<%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
<%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />--%>
<%--<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>--%>
<style>
    .images--block {
        cursor: pointer;
        position: relative;
        max-height: 500px;
        overflow: hidden;
        -moz-transition: max-height .5s;
        -webkit-transition: max-height .5s;
        -o-transition: max-height .5s;
        -ms-transition: max-height .5s;
        transition: max-height .5s;
    }
    .images--block:hover {
        max-height: 1000px;
        height: 100%;
    }
    .images--full {
        background: rgba(0, 0, 0, 0.13);
        position: absolute;
        cursor: pointer;
        padding: 5px;
        color: #fff;
        right: 0;
        top: 0;
    }
    .images--modal {
        display: none;
        position: fixed;
        z-index: 99999;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        padding-top: 25px;
        padding-bottom: 25px;
        background-color: rgb(120, 168, 255);
        background-color: rgba(32, 27, 59, 0.9);
    }
    .images--content {
        margin: auto;
        display: block;
    }
    .images--content {
        max-height:100%;
        max-width:100%;
        -webkit-animation-name: images--zoom;
        -webkit-animation-duration: 0.6s;
        animation-name: images--zoom;
        animation-duration: 0.6s;
    }
    @-webkit-keyframes images--zoom {
        from {-webkit-transform: scale(0)}
        to {-webkit-transform: scale(1)}
    }
    @keyframes images--zoom {
        from {transform: scale(0.1)}
        to {transform: scale(1)}
    }
    .images--close--modal {
        position: absolute;
        top: 13px;
        right: 13px;
        color: #f1f1f1;
        font-size: 40px;
        font-weight: bold;
        transition: 0.3s;
    }
    .images--close--modal:hover,
    .images--close--modal:focus {
        color: #ffffff;
        text-decoration: none;
        cursor: pointer;
        /*transform: rotate( -180deg );*/
        /*transition: transform 150ms ease;*/
    }
    @media only screen and (max-width: 700px){
        .images--content {
            width: 100%;
        }
    }
</style>

<page:template>
    <jsp:body>
        <!-- Header Carousel -->
        <header id="myCarousel" class="carousel slide">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <c:set var="count" value="0" scope="page" />
                <c:forEach var="item" items="${offers}">

                    <c:if test="${count==0}">
                        <li data-target="#myCarousel" data-slide-to="${count}" class="active"></li>
                    </c:if>
                    <c:if test="${count !=0}">
                        <li data-target="#myCarousel" data-slide-to="${count}"></li>
                    </c:if>
                    <c:set var="count" value="${count + 1}" scope="page"/>
                </c:forEach>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">
                <c:set var="count" value="0" scope="page" />
                <c:forEach var="item" items="${offers}">

                    <c:if test="${count==0}">
                        <div class="item active">
                            <div class="fill" style="background-image:url('/image/${item.image.id}');"></div>
                            <div class="carousel-caption">
                                <h2>${item.title}</h2>
                            </div>
                        </div>
                    </c:if>
                    <c:if test="${count !=0}">
                        <div class="item">
                            <div class="fill" style="background-image:url('/image/${item.image.id}');"></div>
                            <div class="carousel-caption">
                                <h2>${item.title}</h2>
                            </div>
                        </div>
                    </c:if>
                    <c:set var="count" value="${count + 1}" scope="page"/>


                </c:forEach>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="icon-prev"></span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="icon-next"></span>
            </a>

        </header>


        <!-- Features Section -->
        <div class="container">
            <!-- /.row -->

            <!-- Features Section -->
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header">${product.name}</h2>
                </div>
                <div class="col-md-6">
                    <p class="text-info">${product.description}</p>
                </div>
                <div id="images--container" class="col-md-6">
                    <img class="img-responsive" src="/image/${product.image.id}" alt="">
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

        <script src="/resources/js/image_con.js">

        </script>

    </jsp:body>
</page:template>
