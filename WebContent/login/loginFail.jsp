<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<script	src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/Music_streaming/js/join.js"></script>
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>

	<!--content-->
	<div class="login">
		<div>
			<a href="http://localhost:9000/Music_streaming/index.jsp"><span>this my vibe</span></a>
		</div>
		<section class="section1">
			<div>
						<form name="loginForm" action="loginProc.jsp" method="post" class="login">
					<ul>
						<li><input type="text" name="id"
							placeholder="아이디" id="id"></li>
						<li><input type="password" name="pass"
							placeholder="비밀번호" id="pass"></li>
						<li><p class="loginError">가입하지 않은 아이디이거나,잘못된 비밀번호입니다.</p></li>
						<li>
							<button type="button" id="btnLogin">로그인</button>
						</li>
						<li>
							<a href="#"><span>아이디/비밀번호 찾기</span></a>
							<a href="../join/join.jsp"><span>회원가입</span></a>
						</li>
					</ul>
				</form>
			</div>
		</section>
		
	</div>

	<jsp:include page="../footer.jsp" />
</body>
</html>