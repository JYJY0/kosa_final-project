<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <div class="pre-loader">
        <div class="load-con">
            <img src="<c:url value="/resources/chatbot/img/logo.png"/>" class="animated fadeInDown" alt="">
            <div class="spinner">
              <div class="bounce1"></div>
              <div class="bounce2"></div>
              <div class="bounce3"></div>
            </div>
        </div>
    </div>
<header class="masthead">
            <!-- Fixed navbar -->
            <div class="navbar navbar-static-top" id="nav" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <i class="fa fa-align-justify"></i>
                        </button>
                        <a class="navbar-brand" href="<c:url value="/chatbot/main"/>">
                            <img src="<c:url value="/resources/chatbot/img/logo.png"/>" alt="">
                        </a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-right">
                            <li class="active"><a href="../faq/list">FAQ 게시판</a></li>
                            <li><a href="../facility">육아시설 검색</a></li>
                            <li><a href="#download">제품검색</a></li>
                            <li><a href="#subscribe">로그아웃</a></li>
                            <li><a href="#contact">contact</a></li>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!--/.container -->
            </div>
            <!--/.navbar -->
            
        </header>
