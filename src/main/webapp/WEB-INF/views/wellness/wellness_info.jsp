<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
  <title>Wellness</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="HTML5 website template">
  <meta name="keywords" content="global, template, html, sass, jquery">
  <meta name="author" content="Bucky Maler">
  <link href="https://hangeul.pstatic.net/hangeul_static/css/nanum-square-round.css" rel="stylesheet">
  <link rel="stylesheet" href="<c:url value="/resources/wellness/css/wellness_main.css"/>">
  
</head>
<style type="text/css">
body{
	font-family: 'NanumSquareRound'; 
}
</style>
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
  <div class="container">
  	<div class="outer-nav--return"></div>
    <div id="viewport" class="l-viewport">
      <div class="l-wrapper">
        <header class="header">
        	<%-- <c:if test="${page }> 0"> --%>
        		<a href="info?page=${page-1}&name=${name}" class="prev-page">
        			<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-arrow-left-circle-fill" viewBox="0 0 16 16">
  						<path d="M8 0a8 8 0 1 0 0 16A8 8 0 0 0 8 0zm3.5 7.5a.5.5 0 0 1 0 1H5.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L5.707 7.5H11.5z"/>
					</svg>
			<%-- </c:if> 
          <a class="header--logo" href="#0">
            <img src="<c:url value="/resources/wellness/img/logo.png"/>" alt="Global">
            <p>Global</p>
          </a>--%>
          <!-- <button class="header--cta cta">Hire Us</button> -->
          <a href="info?page=${page+1}&name=${name}" class="next-page">
          	<svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-arrow-right-circle-fill" viewBox="0 0 16 16">
  					<path d="M8 0a8 8 0 1 1 0 16A8 8 0 0 1 8 0zM4.5 7.5a.5.5 0 0 0 0 1h5.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H4.5z"/>
			</svg>
		</a>
        </header>
        
        <ul class="l-main-content">
        <li class="l-section section section--is-active hire">
            <div class="information-container">
              <h2>병명 정보</h2>
              <!-- checkout formspree.io for easy form setup -->
                <div class="work-request--options">
                <span class="options-a"> 
                  <c:forEach var="property" items="${propertyList }" varStatus="status" >
                    <input id="opt-${status.index + 1}" type="checkbox" value=${property } name="property-check" class="property-check">
                    <label for="opt-${status.index + 1 }">
                      <svg version="1.1" id="Layer_1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
                      viewBox="0 0 150 111" style="enable-background:new 0 0 150 111;" xml:space="preserve">
                      <g transform="translate(0.000000,111.000000) scale(0.100000,-0.100000)">
                        <path d="M950,705L555,310L360,505C253,612,160,700,155,700c-6,0-44-34-85-75l-75-75l278-278L550-5l475,475c261,261,475,480,475,485c0,13-132,145-145,145C1349,1100,1167,922,950,705z"/>
                      </g>
                      </svg>
                      
                      ${property}
                    </label>
                     </c:forEach>
                     </span>
                      
                 <%-- <span class="options-a"> 
                  <c:forEach var="property" items="${propertyList }" varStatus="status" begin="0" end="${halfSize }">
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
                      <span class="options-b"> 
                  <c:forEach var="property" items="${propertyList }" varStatus="status" begin="${halfSize }">
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
                     </span> --%>
                    <div class="descript"> </div>
                </div>
                <!-- <div class="work-request--information"></div>
                <div class="descript"> -->
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
<script type="text/javascript">
$('.next-page').click(function(){
	if (${page} > 1){
		$('.prev-page').style.visibility = 'visible';
	}	
});

/* var texarea = $('.descript textarea');
if (textarea) {
    textarea.style.height = 'auto';
    let height = textarea.scrollHeight; // 높이
    textarea.style.height = `${height + 8}px`;
  }
 */

</script>
</body>

</html>