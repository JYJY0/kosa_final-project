<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
  <title>Global</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="HTML5 website template">
  <meta name="keywords" content="global, template, html, sass, jquery">
  <meta name="author" content="Bucky Maler">
  <link rel="stylesheet" href="<c:url value="/resources/wellness/css/wellness_main.css"/>">
  
</head>
<body>

<!-- notification for small viewports and landscape oriented smartphones -->
<div class="device-notification">
  <a class="device-notification--logo" href="#0">
  
    <img src="<c:url value="/resources/wellness/img/logo.png"/>"alt="Global">
    <p>Global</p>
  </a>
  <p class="device-notification--message">Global has so much to offer that we must request you orient your device to portrait or find a larger screen. You won't be disappointed.</p>
</div>

<div class="perspective effect-rotate-left">
  <div class="container"><div class="outer-nav--return"></div>
    <div id="viewport" class="l-viewport">
      <div class="l-wrapper">
        <header class="header">
          <a class="header--logo" href="#0">
            <img src="<c:url value="/resources/wellness/img/logo.png"/>" alt="Global">
            <p>Global</p>
          </a>
          <button class="header--cta cta">Hire Us</button>
          <div class="header--nav-toggle">
            <span></span>
          </div>
        </header>
        <nav class="l-side-nav">
          <ul class="side-nav">
            <li class="is-active"><span>Home</span></li>
            
          </ul>
        </nav>
        <ul class="l-main-content main-content">
        <li class="l-section section section--is-active">
        
            <div class="hire">
              <h2>병명 정보</h2>
              <!-- checkout formspree.io for easy form setup -->
              
                <div class="work-request--options">
                  <span class="options-a">
                  <c:forEach var="property" items="${propertyList }" varStatus="status">
                    <input id="opt-${status.index + 1}" type="checkbox" value=${property.property } name="property-check" class="property-check">
                    <label for="opt-${status.index + 1 }">
                      <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                      viewBox="0 0 150 111" style="enable-background:new 0 0 150 111;" xml:space="preserve">
                      <g transform="translate(0.000000,111.000000) scale(0.100000,-0.100000)">
                        <path d="M950,705L555,310L360,505C253,612,160,700,155,700c-6,0-44-34-85-75l-75-75l278-278L550-5l475,475c261,261,475,480,475,485c0,13-132,145-145,145C1349,1100,1167,922,950,705z"/>
                      </g>
                      </svg>
                      ${property.property }
                    </label>
                    </c:forEach>
                  </span>
                </div>
                <div class="work-request--information"></div>
                <div class="descript">
                </div>
            </div>
           </li>
        </ul>
      </div>
    </div>
  </div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script>window.jQuery || document.write('<script src="<c:url value="/resources/wellness/js/vendor/jquery-2.2.4.min.js"/>"><\/script>')</script>
<script src="<c:url value="/resources/wellness/js/functions-min.js"/>"></script>
<!-- vue.js -->
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="<c:url value="/resources/wellness/js/info_ajax.js"/>"></script>

</body>

</html>