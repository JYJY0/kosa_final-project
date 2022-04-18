<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko" class="no-js">
<!-- 구글차트 -->
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<!-- Step 1 - Include the fusioncharts core library -->
    <script type="text/javascript" src="https://cdn.fusioncharts.com/fusioncharts/latest/fusioncharts.js"></script>
    <!-- Step 2 - Include the fusion theme -->
    <script type="text/javascript" src="https://cdn.fusio	ncharts.com/fusioncharts/latest/themes/fusioncharts.theme.fusion.js"></script>
    
<%-- <script src="<c:url value="/resources/chatbot/js/admin_eda_chart.js"/>"></script> --%>
<jsp:include page="../../common/chatbot_header.jsp" />

<body>
	<jsp:include page="../../common/chatbot_nav.jsp" />
	<section id="team">
            <div class="container">
            
                <div id="carousel-team" class="carousel slide" data-ride="carousel">
                	
                    <div class="row" >
                        <div class="col-md-12">
                            <div class="section-heading scrollpoint sp-effect3" >
                                <div class="newsletter-wrapper">
		                            <h3 class="scrollpoint sp-effect3" style="font-size:40px; "><span>사용자 통계</span></h3>
		                            
                       			</div>
                           </div>
                        </div>
                    </div>
                </div>
            </div>
            </section>
            <div class="slider-container" id="slider">
                <div class="container">
                      <div class="row">
		                    <!-- <div class="col-md-8 col-md-push-2 clearfix">
		                        <div class="section-heading scrollpoint sp-effect3">
		                            <span class="divider"></span>
		                        </div>
		                    </div> -->
		                    <div class="col-md-12">
		                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
		                            <!-- Wrapper for slides -->
		                            <div class="carousel-inner">
		                                <div class="item active">
		                                	<div class="row">
	                                        <div class="col-md-6 col-sm-6">
	                                            <div class="feature scrollpoint sp-effect1">
	                                                <div id="bar_chart" style="width: 500px; height: 500px;"></div>
	                                            </div>
	                                        </div>
	                                        <div class="col-md-6 col-sm-6">
	                                            <div class="feature scrollpoint sp-effect1">
	                                                <div id="chart-container"></div>
	                                            </div>
	                                        </div>
	                                        </div>
		                                        <div class="row">
		                                        <div class="col-md-12 col-sm-6">
		                                            <div class="feature scrollpoint sp-effect2">
		             									<div id="curve_chart" style="width: 900px; height: 500px"></div>	                                       
		                                                </div>
		                                                
		                                            </div>
		                                        
		                                         <div class="col-md-6 col-sm-6">
		                                            <div class="feature scrollpoint sp-effect2">
		                                                <div id="chart_div" style="width: 900px; height: 500px; margin-bottom : 50px"></div>
		                                                  
		                                            </div>
		                                        </div>
		                                        </div>
		                                    </div>
		                                </div>
		                                
		                            </div>
		                            
		                        </div>
		                    </div>
		                </div>
		                </div>

</body>


<script>
/* #chart1 */
 chart1_bar();
 chart3_tree();
  chart2_pie(); 
 chart4_line();
 
	/*
	var data = google.visualization.arrayToDataTable([
		['symptom','resource','count'],
	<c:forEach items="${testList}" var="item">
	['${item.symptom_area}','${item.resource}',${item.count}],
	</c:forEach>
	]);
	
	
	for (var i = 0; i <${testList.size()}; i++){
		alert(i)
		 dataList.push([${testList.get(i).getResource()},'${testList.get(i).getSymptom_area()}',${testList.get(i).getCount()}]); */
		/* data.addRows([
			[${testList.get(i).getResource()},'${testList.get(i).getSymptom_area()}',${testList.get(i).getCount()}]
			]); 
	}*/
 
function chart1_bar(){
	google.charts.load('current', {packages: ['corechart', 'bar']});
	google.charts.setOnLoadCallback(drawBarColors);
	
	function drawBarColors() {
		var data = google.visualization.arrayToDataTable([
			['word_token', 'count'],
		<c:forEach items="${bar}" var="item">
		['${item.word_token}',${item.cnt}],
		</c:forEach>
		]);
		
		/*var data = google.visualization.arrayToDataTable([
	    	  ['word_token', 'count'],
	         ['New York City, NY', 8175000, 8008000],
	        ['Los Angeles, CA', 3792000, 3694000],
	        ['Chicago, IL', 2695000, 2896000],
	        ['Houston, TX', 2099000, 1953000],
	        ['Philadelphia, PA', 1526000, 1517000] 
	      ]);*/

	      var options = {
	        title: '가장 많이 입력한 단어 TOP10',
	        chartArea: {width: '50%'},
	        colors: ['#F27649', '#8FADBF'],
	        hAxis: {
	          title: '횟수',
	          minValue: 0
	        },
	        vAxis: {
	          title: '단어'
	        }
	      };
	      var chart = new google.visualization.BarChart(document.getElementById('bar_chart'));
	      chart.draw(data, options);
	    }	
}
function chart2_pie(){
	FusionCharts.ready(function(){
		var chartObj = new FusionCharts({
			type: 'multilevelpie',
			renderAt: 'chart-container',
			
			width: '500',
			height: '500',
			dataFormat: 'json',
			dataSource: {
					    "chart": {
					        "caption": "아이 나이별 성별별 가입자 수 ",
					        
					        "showPlotBorder": "1",
					        "piefillalpha": "60",
					        "pieborderthickness": "2",
					        "hoverfillcolor": "#CCCCCC",
					        "piebordercolor": "#FFFFFF",
					        "hoverfillcolor": "#CCCCCC",
					        "numberprefix": "$",
					         /* "plottooltext": "$label, $$valueK, $percentValue",  */
					        //Theme
					        "theme": "fusion"
					    },${pieData}

}
}
);
		chartObj.render();
	});
}



function chart3_tree(){
	/* #chart3 */
	 google.charts.load('current', {'packages':['treemap']});
	     google.charts.setOnLoadCallback(drawChart);
			
	      	function drawChart() {
	      		var data = google.visualization.arrayToDataTable([
	    			['word_token', 'residence','count'],
	    			['자치구',null,0],
	    			['강남구','자치구',0],
	    			['강동구','자치구', 0],
	    			['강북구','자치구', 0],
	    			['강서구','자치구', 0],
	    			['관악구','자치구', 0],
	    			['광진구','자치구', 0],
	    			['구로구','자치구', 0],
	    			['금천구','자치구', 0],
	    			['노원구','자치구', 0],
	    			['도봉구','자치구', 0],
	    			['동대문구','자치구', 0],
	    			['동작구','자치구', 0],
	    			['마포구','자치구', 0],
	    			['서대문구','자치구', 0],
	    			['서초구','자치구', 0],
	    			['성동구','자치구', 0],
	    			['성북구','자치구', 0],
	    			['송파구','자치구', 0],
	    			['양천구','자치구', 0],
	    			['영등포구','자치구', 0],
	    			['용산구','자치구', 0],
	    			['종로구','자치구', 0],
	    			['은평구','자치구', 0],
	    			['중구','자치구', 0],
	    			['중랑구','자치구', 0],
	    			
	    		<c:forEach items="${tree}" var="item">
	    		['${item.word_token}','${item.residence}',${item.cnt}],
	    		</c:forEach>
	    		]);
	      	
	        tree = new google.visualization.TreeMap(document.getElementById('chart_div'));

	       tree.draw(data, {
	    	   title : '자치구별 많이 검색한 단어',
	    	   minColor: '#14A697',
	    	    midColor: '#fff',
	    	    maxColor: '#F2C12E',
	         headerHeight: 15,
	         fontColor: 'black',
	         fontFamily: 'NanumSquareRound',
	         fontSize: 15,
	          generateTooltip: showFullTooltip, 
	         showScale: true
	       });

	       
	       function showFullTooltip(row, size, value) {
	         return '<div style="background:#fd9; padding:10px; border-style:solid">' +
	                '<span style="font-family:Courier"><b>' + data.getValue(row, 0) +
	                '</b>, ' + data.getValue(row, 1) + ', ' + data.getValue(row, 2) +
	                ',</span><br>' +
	           data.getColumnLabel(2) +
	                ' (total value of this cell and its children): ' + size + '<br></div>';
	       }


	     }

}
function chart4_line(){
	/* chart4 */
     google.charts.load('current', {'packages':['corechart']});
	google.charts.setOnLoadCallback(drawChart);

function drawChart() {
	var data = google.visualization.arrayToDataTable([
		['hour', 'weekday','weekend'],
	<c:forEach items="${line}" var="item">
	[${item.hour},${item.weekday},${item.weekend}],
	</c:forEach>
	]);
  /* var data = google.visualization.arrayToDataTable([
    ['Year', 'Sales', 'Expenses'],
    ['2004',  1000,      400],
    ['2005',  1170,      460],
    ['2006',  660,       1120],
    ['2007',  1030,      540]
  ]); */

  var options = {
    title: '시간별 챗 사용 횟수',
    curveType: 'function',
    legend: { position: 'bottom' },
    series: {
        0: { color: '#253D71' },
        1: { color: '#E1B522' }
    }
  };

  var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

  chart.draw(data, options);
}
	
	
}
 </script>
</html>

