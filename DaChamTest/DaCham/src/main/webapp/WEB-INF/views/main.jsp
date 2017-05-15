<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<!-- 상단 내비게이션 표시를 위한 임시 CSS -->
<style>
.bg {
	background-color: lightgray;
	margin-top: 20px;
}

.box {
	display: inline-block;
	height: 50px;
	padding: 0 20px;
	font-size: 25px;
}

.loginBox {
	text-align: right;
}


#infoBox {
	display: none;
}
</style>

</head>
<body>
	<div id="infoBox">
		<h4><b>${memberName}</b>님 반갑습니다. 오늘도 다참으로 건강한 하루~!</h4> 
		마이페이지 로그아웃
	</div>
	<!-- 고객 메인 -->
	<!-- 상단 메뉴바 -->
	<div class="bg">
		<ul type="none" class="">
			<!-- 메뉴 리스트 -->
			<li class="box"><a href="dachamInfo" id="dachamInfo">다참소개</a></li>
			<li class="box"><a href="dietOrder" id="dietOrder">식단주문하기</a></li>
			<li class="box"><a href="menuShow" id="menuShow">이달의메뉴</a></li>
			<li class="box"><a href="nutritionInfo" id="nutritionInfo">영양소개</a></li>
			<li class="box"><a href="counsel" id="counsel">문의하기</a></li>

		</ul>

	</div>

	<!-- 고객 로그인 전용 페이지 -->
	<h1>다참 고객 로그인 페이지</h1>
	<form method="post" action="main" class="loginBox">
		아이디: <input type="text" name="id"><br> 비밀번호: <input
			type="password" name="pw"><br> <input type="submit"
			value="로그인">
	</form>

	<input id="loginResult" type="hidden" value="${result}" />


</body>
<!--폴더정리2  -->
<script>
	$(document).ready(function() {

		var result = $("#loginResult").val();
		if (result == "0") {
			alert("비밀번호가 틀렸습니다. 다시 확인해주세요.");
		} else if (result == "-1") {
			alert("아이디가 존재하지 않습니다.");
		} else if (result == "1") {
			$('.loginBox').hide(); //로그인 성공하면 로그인 박스 숨기고 상단에 회원 정보 출력
			$('#infoBox').show();

		} else {

		}
	});
</script>







</html>