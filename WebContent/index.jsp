<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- dddddㅇㅇㅇㅇㅇㅇ -->
<head>
<meta charset="UTF-8">
<title>Index</title>
<style>
div.content {
<<<<<<< HEAD
	width: 100%;
	height: 1900px;
	/* 	border: 1px solid red; */
}

section {
	/* 	float:center; */
	width: 1300px;
	margin: auto;
	border: 1px solid lightgray;
	border-right: white;
	border-top: white;
	border-left: white;
}

div.content div h1 a.subtitle {
	margin: 10px;
	text-decoration: none;
	color: #333;
	font-size: 23px;
}
div.content div h1 a.subtitle:hover{
	color:red;
}

section.section1 article img {
	width: 300px;
	height: 300px;
	/* border: 2px solid blue; */
	margin: 30px 8px 20px 8px;
}

section.section1 article {
=======
	width: 93.7%;
	text-align: center;
	padding-left: 120px;
>>>>>>> refs/heads/master
	display: inline-block;
}
/**매거진 크기 설정**/
section.section1>div>img {
	border: 1px solid white;
	border-radius: 18px;
	width: 340px;
	height: 320px;
	margin: 6px 8px;
}
div.content>section.section1, div.content>section.section2, div.content>section.section3
	{
	text-align: center;
}
div.content>section.section1>div {
	display: inline-block;
}
div.content>section.section1>div>div>a>p.title {
	text-align: left;
	font-size: 15px;
}
div.content>section.section1>div>div>a>p.date {
	text-align: left;
	font-size: 13px;
}
div.content>section.section1>div>div>a {
	text-decoration: none;
}
div.content>section.section1>div>div>a:hover {
	text-decoration: underline;
}
section.section2>div>img {
	border: 1px solid white;
	border-radius: 18px;
	width: 550px;
	height: 350px;
}
section.section2>div>iframe, section.section3>div>iframe {
	border: 1px solid white;
	border-radius: 18px;
}
section.section3>div:last-child>iframe {
	margin-bottom: 100px;
}
section.section2>div {
	margin: auto;
	display: inline-block;
}
section.section3>div>span {
	display: inline-block;
	background-color: gray;
	width: 3px;
	height: 150px;
}
section.section3 span.aaa {
	padding-top: 100px;
	margin-bottom: 30px;
}
section.section3 span.ccc {
	padding-top: 100px;
	margin-bottom: 130px;
}
div.content>div>img {
	width: 300px;
	height: 300px;
}
<<<<<<< HEAD

section.section2 div:last-child iframe, section.section3 div:last-child iframe
	{
	/* 	border: 2px solid blue; */
	margin: 30px 19px;
=======
section.release {
	background: rgb(242, 242, 242);
	width: 100%;
	padding-bottom:15px;
	margin-top:15px;
}
div.content>section.release>table.tb {
	border-collapse:collapse;
	margin-left:auto;
	margin-right:auto;
>>>>>>> refs/heads/master
}
<<<<<<< HEAD

section.section4{
	padding:50px 100px;
=======
div.content>section.release>table.tb tr td{
	background-color:rgb(255,255,255);
	text-align:left;
	text-indent:8px;
>>>>>>> refs/heads/master
}
<<<<<<< HEAD

section.section1 article a {
/* 	border:1px solid blue; */
	text-decoration:none;
	text-align:center;
	color:gray; 
	font-size:15px;
	font-weight:800;
=======
div.content>section.release>table.tb tr:nth-child(2)>td>a{
	font-size:30px;
>>>>>>> refs/heads/master
}
div.content>section.release>table.tb tr td>button{
		background-color:rgb(126,1,228);
		border:1px solid white;
		border-radius:10px;
		font-family:"나눔바른고딕";
		font-size:14px;
		font-weight:bold;
		color:white;
		width:15%;
		padding:12px 0;	
}
</style>
</head>
<body>
	<!-- header -->
	<jsp:include page="header.jsp" />
	<div class="content">
<<<<<<< HEAD
	
		<section class="section4">
		<div>
			<h1></h1>
		</div>
=======
		<section class="release">
			<table class="tb">
				<tr>
					<th rowspan="3"><img
						src="http://localhost:9000/Music/images/represent.png"></th>
					<td><button>GENRE</button></td>
				</tr>

				<tr>
					<td><a href ="#">"NEW RELEASE #16 : 이적 빌리 아일리시"</a></td>
				</tr>
				<tr>
					<td><a href = "#">고래의 포효같은 강렬한 에너지로 돌아온 이적, 4개월만에 새로운 싱글을 발표한 빌리 아일리시</a></td>
				</tr>
			</table>
>>>>>>> refs/heads/master
		</section>



		<section class="section1">
			<h1>메거진</h1>
			<div>
				<img src="http://localhost:9000/Music/images/magazine1.png">
				<div>
					<a href=""><p class="title">넓은 음악적 스펙트럼을 자랑하는 함소윤</p></a> <a
						href=""><p class="date">2020.11.16</p></a>
				</div>
			</div>
<<<<<<< HEAD
			<!--매거진 테스트용 이미지-->
			<article class="art1">
				<img
					src="http://localhost:9000/Music_streaming/images/magazineTest_1.gif">
				<a href="#">관리자 소개글 등록1</a>
			</article>
			<article class="art1">
				<img
					src="http://localhost:9000/Music_streaming/images/magazineTest_2.jpg">
				<a href="#">관리자 소개글 등록2</a>
			</article>
			<article class="art1">
				<img
					src="http://localhost:9000/Music_streaming/images/magazineTest_3.jpg">
				<a href="#">관리자 소개글 등록3</a>
			</article>
			<article class="art1">
				<img
					src="http://localhost:9000/Music_streaming/images/magazineTest_4.png">
				<a href="#">관리자 소개글 등록4</a>
			</article>
=======
			<div>
				<img src="http://localhost:9000/Music/images/magazine2.png">
				<div>
					<a href=""><p class="title">아리아나 그란데의 콜라보레이터</p></a> <a href=""><p
							class="date">2020.11.12</p></a>
				</div>
			</div>
			<div>
				<img src="http://localhost:9000/Music/images/magazine3.png">
				<div>
					<a href=""><p class="title">한국재즈가 있어 따듯한 가을</p></a> <a href=""><p
							class="date">2020.11.11</p></a>
				</div>
			</div>
			<div>
				<img src="http://localhost:9000/Music/images/magazine4.png">
				<div>
					<a href=""><p class="title">이주의 디깅 #83</p></a> <a href=""><p
							class="date">2020.11.10</p></a>
				</div>
			</div>
>>>>>>> refs/heads/master
		</section>

		<section class="section2">
			<div>
				<h1>음악</h1>
				<iframe width="700" height="350"
					src="https://www.youtube.com/embed/c0gZnxJ5U6c" frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<img src="http://localhost:9000/Music/images/album.jpg">
			</div>
		</section>

		<section class="section3">
			<h1>뮤직비디오</h1>
			<div>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/D1PvIWdJ8xo?autoplay=1&mute=1"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<span class="aaa"></span>

				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/gIOyB9ZXn8s?autoplay=1&mute=1"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>

<<<<<<< HEAD
		<!--추후 광고글-->
		<section class="section4">
			<h1>지금 바로 로그인하고 한땀 한땀 만든 플레이리스트 듣기!</h1>
				<p>K-Pop부터 클래식까지 모든 장르를 아우르는 건 기본. 수천 개의 플레이리스트가 트렌드에 맞게 업데이트.</p>
			<img src="http://localhost:9000/Music_streaming/images/bottom_ad.PNG">
		</section>
=======
			<div>
				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/XsX3ATc3FbA?autoplay=1&mute=1"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
				<span class="ccc"></span>
>>>>>>> refs/heads/master

				<iframe width="560" height="315"
					src="https://www.youtube.com/embed/mrAIqeULUL0?autoplay=1&mute=1"
					frameborder="0"
					allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
					allowfullscreen></iframe>
			</div>

		</section>
	</div>
	<!-- footer -->
	<jsp:include page="footer.jsp" />

</body>
</html>
