<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><!--이미지 추가 작업-->
<head>
<meta charset="UTF-8">
<title>header</title>
<style>
body {
		margin: 0px;
}

header {
	background-image: url("http://localhost:9000/Music/images/header.png");
	width: 170px;
	float: left;
	position: fixed;
	height:100%;
	z-index:4;
}
/**로고이미지**/
header>div>nav>div>a>img {
	width: 170px;
	height: 140px;
	/* border:1px solid red; */
}

nav>ul {
	margin: auto;
	padding: 0 0 0 0;
/* 	border:1px solid blue;  */
	
}

nav>ul>li {
	list-style-type: none;
	padding: 10px 5px 5px 10px;
	clear: both;
}

nav>ul>li>a {
	font-size: 16px;
	font-family: "나눔바른고딕";
	text-decoration: none;
	color: white;
}

nav>ul>li>a>span {
	/* border:1px solid violet;  */
	display: inline-block;
	margin: 14px 0 0 12px;
	font-weight:bold;
}

nav>ul>li>a>span:hover {
	text-decoration: underline;
}

nav>ul>li>a>img {
	display: inline-block;
	width: 50px;
	height: 50px;
	float: left;
}
/**로그인버튼**/
nav>ul>li:first-child {
	text-align: center;
	padding :auto;
}

nav>ul>li:first-child>button {
	padding: 8px 40px;
	font-size: 20px;
	font-weight: bold;
	background-color: lightgray;
	border: 1px solid lightgray;
	border-radius:12px;
}

nav>ul>li:first-child>button:hover {
	text-decoration: underline;
}
</style>
</head>
<body>
	<header>
		<div>
			<nav>
				<div>
					<a href=""><img
						src="http://localhost:9000/Music/images/logo.jpg"></a>
				</div>
				<ul>

					<li><button type="button">로그인</button></li>
					<li><a href="#"><img
							src="http://localhost:9000/Music/images/login.png"><span>마이페이지</span></a></li>
					<li><a href="#"><img
							src="http://localhost:9000/Music/images/music.png"><span>차트</span></a></li>
					<li><a href="#"><img
							src="http://localhost:9000/Music/images/music_video.png"><span>뮤직비디오</span></a></li>
					<li><a href="#"><img
							src="http://localhost:9000/Music/images/magazine.png"><span>메거진</span></a></li>
					<li><a href="#"><img
							src="http://localhost:9000/Music/images/board.png"><span>게시판</span></a></li>
					<li><a href="#"><img
							src="http://localhost:9000/Music/images/notice_2.png"><span>공지사항</span></a></li>
				</ul>
			</nav>
		</div>
	</header>
</body>
</html>
