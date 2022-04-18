<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <div class="pre-loader">
        <div class="load-con">
            <img src="<c:url value="/resources/chatbot/img/logo.jpg"/>" class="animated fadeInDown" alt="">
            
            <div class="spinner">
              <div class="bounce1"></div>
              <div class="bounce2"></div>
              <div class="bounce3"></div>
            </div>
        </div>
    </div>
<header class="masthead">
            <!-- Fixed navbar -->
            <div class="navbar navbar-static-top" id="nav" role="navigation" style="font-size:20px">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <i class="fa fa-align-justify"></i>
                        </button>
                        <a class="navbar-brand" href="<c:url value="/chatbot/main"/>">
                            <img src="<c:url value="/resources/chatbot/img/logo1.jpg"/>" alt="" style="margin-top:10px;">
                        </a>
                         <a class="navbar-brand" href="<c:url value="/wellness"/>">
                            <img src="<c:url value="/resources/wellness/img/wellness_green.png"/>" style="width:70px; margin-left: -10px"> 
                        </a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="margin-top:30px">
                        <ul class="nav navbar-nav navbar-right">
                        <% if(session.getAttribute("id") != null) {
							  if(session.getAttribute("id").equals("admin")){                      	
                        %>
                        <!-- class="active" -->
                            <li><a href="../admin/eda">사용자 통계</a></li>
                            <li><a href="../faq/list">FAQ 게시판 관리</a></li>
                            <% }else{ %>
                            <li><a href="../chatbot/main">BBBOT</a></li>
                            <li><a href="../facility">육아시설 검색</a></li>
                            <li><a href="../product">제품검색</a></li>
                            <li><a href="../faq/list">FAQ</a></li>
                            <%} %>
                            <li><a href="../member/logout">로그아웃</a></li>
                            <%}%>
                        </ul>
                    </div>
                    <!-- /.navbar-collapse -->
                </div>
                <!--/.container -->
            </div>
            <!--/.navbar -->
            
        </header>
        
        <script type="text/javascript">
        
        	var url = window.location.pathname;
        	
        	url = '..' + url;
        	$('.navbar-nav').find('li').each(function(){
        		$(this).toggleClass('active',$(this).children('a').attr('href') == url);
        	})
        </script>
