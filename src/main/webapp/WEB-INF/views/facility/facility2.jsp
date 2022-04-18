
 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko" class="no-js">
<jsp:include page="../common/chatbot_header.jsp" />
 
<body>
	<!-- Wrap all page content here -->
	<div id="wrap">
	<jsp:include page="../common/chatbot_nav.jsp" />
			<!-- Main Part -->
			<div class="col-md-12">
				<!-- <div id="carousel-example-generic" class="carousel slide"
					data-ride="carousel"> -->
					<div class="carousel-inner">
						<div class="item active">
							<div class="row">
								<div class="col-md-6 col-md-push-3" >
								<h3 class="scrollpoint sp-effect3"><span>제품</span>검색</h3>
									<div class="btn-group btn-group-justified btn-lg small" style="margin-bottom:40px">
										<div class="btn-group">
											<span class="select-title">자치구 선택</span>
											 <select class="district" name="district">
											 <option value="" selected disabled hidden>자치구</option>
												<c:forEach var="district" items="${districtList}">
													<option value="${district}">${district}</option>
												</c:forEach>
											</select>
										</div>
										<div class="btn-group">
											<span class="select-title">타입 선택</span> 
											<select class="type" name="type">
											<option value="" selected disabled hidden>육아시설</option>
												<c:forEach var="type" items="${typeList}">
													<option value ="${type }">${type}</option>
												</c:forEach>
											</select>
										</div>
										<div class="btn-group">
											<span class="input-group-btn">
												<button class="btn" type="button" id="searchBtn">search</button>
											</span>
										</div>
									</div>
								</div>
								<div class="btn-group btn-group-justified btn-lg">
								<div class="map-outer">
									<div id="map" ></div>
								</div>
								</div>
							</div>

						</div>
					</div>
				<!-- </div> -->
			</div>
	</div>

</body>
<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=eba00c6d889626da66f3cc0ff395ba49"></script>
<script src="<c:url value="/resources/chatbot/js/map_ajax.js"/>"></script>
</html>