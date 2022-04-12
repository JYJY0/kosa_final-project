<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html class="h-100">
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="/resources/member/img/bbbot.png">
    <link href="/resources/member/css/style-register.css" rel="stylesheet">
   <link rel="stylesheet" href="//code.jquery.com/ui/1.13.1/themes/base/jquery-ui.css">
  
<style>
	.select {
	    padding: 15px 10px;
	}
	.select input[type=radio]{
	    display: none;
	}
	.select input[type=radio]+label{
	    display: inline-block;
	    cursor: pointer;
	    height: 24px;
	    width: 90px;
	    border: 1px solid #333;
	    line-height: 24px;
	    text-align: center;
	    font-weight:bold;
	    font-size:13px;
	}
	.select input[type=radio]+label{
	    background-color: #fff;
	    color: #333;
	}
	.select input[type=radio]:checked+label{
	    background-color: #333;
	    color: #fff;
	}
</style>
</head>
<body class="h-100">
		<div class = "authincation h-100">
			<div class="container-fluid h-100">
				<div class="row justify-content-center h-100 align-items-center">
					<div class="col-md-6">
                    <div class="authincation-content">
                        <div class="row no-gutters">
                            <div class="col-xl-12">
                                <div class="auth-form">
                                    <h4 class="text-center mb-4">회원가입</h4>
                                    	<form action =""  method="post">
                                    		<div class="form-group">
	                                            <label><strong>Id</strong></label>
	                                            <input type="text" class="form-control" name="id" placeholder="Id">
                                        	</div>
                                        	<div class="form-group">
	                                            <label><strong>Password</strong></label>
	                                            <input type="text" class="form-control" name="password" placeholder="password">
                                        	</div>
                                        	<div class="form-group">
	                                            <label><strong>Residence</strong></label>
	                                            <input type="text" class="form-control" name="residence" placeholder="주소(구까지 입력)">
                                            </div>
                                            <button type="button" id="pluschild">자녀추가</button>
                                            <div class="child">
	                                            <div class="select">
													<label>Child Information</label>
													<br/>
													<select name="gender" >
														<option value=1>남</option>
														<option value=2>여</option>
													</select>
				
												</div>
												<div>
													<label>생년월일</label>
													<input type="date" name="birth" class="birth" autocomplete="off" placeholder="yyyymmdd" value="" min="1997-01-01" max="2030-12-21">
												</div>
											<!-- <td>
												<input type="text" name="birth_y" maxlength="4" placeholder="년(4자)" size="6" class="birth">
												<select name="birth_m" id="birth">
													<option value="">월</option>
													<option value="01">1</option>
													<option value="02">2</option>
													<option value="03">3</option>
													<option value="04">4</option>
													<option value="05">5</option>
													<option value="06">6</option>
													<option value="07">7</option>
													<option value="08">8</option>
													<option value="09">9</option>
													<option value="10">10</option>
													<option value="11">11</option>
													<option value="12">12</option>
												</select>
											</td> -->
												<input type="hidden" name="member_code" value="0">
											</div>
											<div class="childList">
											</div>
											<div class="text-center mt-4">
                                            	<button type="button" class="btn btn-primary btn-block" id="signUpBtn">Sign up</button>
                                        	</div>
											</form>
											<div class="new-account mt-3">
                                        		<p>Already have an account? <a class="text-primary" href="/member/login">Sign in</a></p>
                                    		</div>
											
		<!-- <div class ="input_wrap">
			<label>ID</label>
			<input name="id">
		</div>
		<div class="input_wrap">
			<label>Password</label>
			<input name="password">
		</div>
		<div class="input_wrap">
			<label>Residence</label>
			<textarea rows="2" name="residence"></textarea>
		</div>
		<hr/>
		
		<button class="btn" type="submit">가입하기</button> -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div> 

<script src="/resources/member/js/global.min.js"></script>
<script src="/resources/member/js/quixnav-init.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>

<script>

	 $(document).on('click', "#pluschild", function(e){
    var target = document.querySelector(".child").cloneNode(true);
    document.querySelector(".childList").innerHTML += target.innerHTML;
    
    /* $(".ui-datepicker-trigger").remove();
	$(".birth").removeClass('hasDatepicker').datepicker(); */
	}); 
	
	/* document.getElementById("pluschild").addEventListener("click", function(e){
    var target = document.querySelector(".child").cloneNode(true);
    document.querySelector(".childList").innerHTML += target.innerHTML;
	}); */ 
	
	/* $(function(){
		$('#birth').datepicker({
			dateFormat: "yymmdd",
			changeMonth: true,
			dayNames: ['월요일','화요일','수요일','목요일','금요일','토요일','일요일'],
			dayNamesMin: ['월','화','수','목','금','토','일'],
			monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
		});	
		$('#birth').datepicker('setDate','today');
	}); */
	
	
  	/* $(function(){
  		$(".birth").datepicker({
  			dateFormat:"yymmdd",
  			changeMonth: true,
			dayNames: ['월요일','화요일','수요일','목요일','금요일','토요일','일요일'],
			dayNamesMin: ['월','화','수','목','금','토','일'],
			monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
  		});	
  	});
	
	$(document).on('click',".birth",function(e){
		$(".ui-datepicker-trigger").remove();
		$(".birth").removeClass('hasDatepicker').datepicker();
		
	}) */
  	

    $('#signUpBtn').click(function(){
    	
    	$(document).find("input[name=birth]").removeClass('birth').datepicker();
      	
    	var id = $(':input[name="id"]').val();
        var password = $(':input[name="password"]').val();
        var residence = $(':input[name="residence"]').val();
    	
        var childs=[];
    	
        $('select[name=gender]').each(function(i){
    		var gender = $('select[name="gender"]:eq('+i+')').val();
    		var birth = $('input[name="birth"]:eq('+i+')').val();
    		/* var birth_m = $('select[name="birth_m"]:eq('+i+')').val(); */
    		
    		childs.push({'gender':gender, 'birth':birth});
    		
    		/* childs.push({'gender':gender, 'birth':birth_y + birth_m}); */
    	});
   
        /* var birth = $('.birth').val() + $("#birth option:selected").val(); */
        
        var postdata = {
    			'id':id,
    			'password':password,
    			'residence':residence,
    			'childs': childs
    	};
        /* console.log(postdata); */
          	
    		$.ajax({
    			type: 'POST',
    			url: '/member/register',
    			//data: postdata,
    			data: JSON.stringify(postdata),
    			dataType:'text',
    			//        async: false,
    			contentType: "application/json; charset=utf-8",
    			success: function(data) {
    				alert(123);
    				location.href = '/member/login';
    			},
    			error: function(xtr, status, error) {
    				alert(xtr + ":" + status + ":" + error);
    			}
    		}); 
    });
   

</script>

</body>
</html>