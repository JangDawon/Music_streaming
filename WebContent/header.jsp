<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><!--이미지 추가 작업-->
<head>
<meta charset="UTF-8">
<title>header</title>
<style>
body {
<<<<<<< HEAD
	padding-left: 210px;
=======
		margin: 0px;
>>>>>>> refs/heads/master
}
header {
	background-image: url("http://localhost:9000/Music/images/header.png");
	width: 170px;
	float: left;
	position: fixed;
<<<<<<< HEAD
	float: left;
	background-color: black;
	left: 0;
	top: 0;
	bottom: 0;
	height: 100%;
	width: 210px;
	padding: 0 10px;
	/* border: 2px solid red; */
	/* 	margin:auto; */
=======
	height:100%;
	z-index:4;
>>>>>>> refs/heads/master
}
/**로고이미지**/
header>div>nav>div>a>img {
	width: 170px;
	height: 140px;
	/* border:1px solid red; */
}
<<<<<<< HEAD

header>div>nav>ul>img {
	float: left;
	padding: 10px ;
	/* 	border: 2px solid blue; */
=======
nav>ul {
	margin: auto;
	padding: 0 0 0 0;
/* 	border:1px solid blue;  */
	
>>>>>>> refs/heads/master
}
<<<<<<< HEAD

header>div>nav>ul>li>a {
	display:block;
	color: white;
	font-size: 15px;
	padding: 14px 15px;
=======
nav>ul>li {
	list-style-type: none;
	padding: 10px 5px 5px 10px;
	clear: both;
}
nav>ul>li>a {
	font-size: 16px;
	font-family: "나눔바른고딕";
>>>>>>> refs/heads/master
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
<<<<<<< HEAD
	margin-top: 30px;
	margin-bottom: 25px;
	border:2px solid gray; 
	border-right:black; 
	border-left:black; 
}
header>div>nav>ul>li.logo>a {
	/* border: 2px solid yellow; */
	border-width: 2px 0;
/*  	line-height: 40px;  */
}


header>div>nav>ul>li.login>a {
/* 	font-size: 18px; */
	margin-top: 30px;
	margin-bottom: 25px;
	border:2px solid gray; 
	border-right:black; 
	border-left:black; 
}

header>div>nav>ul>li>a:hover{
	color:red;
	font-weight:1000px;
=======
	background-color: lightgray;
	border: 1px solid lightgray;
	border-radius:12px;
}
nav>ul>li:first-child>button:hover {
	text-decoration: underline;
>>>>>>> refs/heads/master
}

header>div>nav>ul>li>a>label>img{
	display:inline-block;
	width:33px;	height:33px;
	margin:3px;
/* 	border:1px solid red; */
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
<<<<<<< HEAD
					<li class="logo"><a href="#">SIST</a>
						<div></div></li>
					<li class="login"><a href="#"><label><img
								src="http://localhost:9000/Music_streaming/images/login.png"></label>로그인</a>
						<div></div></li>
					<li><a href="#"><label><img
								src="http://localhost:9000/Music_streaming/images/music.png"></label>최신차트</a>
						<div></div></li>
					<li><a href="#"><label><img
								src="http://localhost:9000/Music_streaming/images/magazine.png"></label>매거진</a>
						<div></div></li>
					<li><a href="#"><label><img
								src="http://localhost:9000/Music_streaming/images/music_video.png"></label>뮤직비디오</a>
						<div></div></li>
					<li><a href="#"><label><img
								src="http://localhost:9000/Music_streaming/images/board.png"></label>게시판</a>
						<div></div></li>
					<li><a href="#"><label><img
								src="http://localhost:9000/Music_streaming/images/notice_2.png"></label>공지사항</a>
						<div></div></li>
=======

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
>>>>>>> refs/heads/master
				</ul>
			</nav>
		</div>
	</header>
</body>
</html>