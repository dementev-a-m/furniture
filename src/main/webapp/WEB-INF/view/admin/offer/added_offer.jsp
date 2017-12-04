<!DOCTYPE html>


<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template_admin>
    <jsp:body>

        <!-- Header Carousel -->
        <header id="myCarousel" class="carousel slide">
            <!-- Indicators -->
            <ol class="carousel-indicators">

                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>

            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner">

                        <div class="item active" >
                            <a  href="offer_item/${offer.id}">
                                <div class="fill"  style="background-image:url('/image/${offer.image.id}');"></div>
                            </a>
                            <div class="carousel-caption" >
                                <h2>${offer.title}</h2>
                            </div>
                        </div>


            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                <span class="icon-prev"></span>
            </a>
            <a class="right carousel-control" href="#myCarousel" data-slide="next">
                <span class="icon-next"></span>
            </a>

        </header>

        <!-- Page Content -->
        <div class="container">
            <!-- Features Section -->
            <p></p>
            <div class="row">
                <div class="col-lg-12">
                    <h2 class="page-header">Для перехода к настройки слайдов, нажмите перейти.</h2>
                    <p><a class="btn btn-default btn-lg" role="button" href="/admin/setting_offer">Перейти</a></p>
                </div>
            </div>

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
</page:template_admin>
