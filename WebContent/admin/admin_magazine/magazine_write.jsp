<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.music.vo.*"%>
<%	SessionVO svo = (SessionVO)session.getAttribute("svo");

	//svo 객체 != null ==>> 로그인 성공!!
	//svo 객체 == null ==>> 로그인 하지 않은 상태
	if(svo != null){
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>magazine_write</title>
<link rel="stylesheet"
	href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<script
	src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
<script src="http://localhost:9000/Music_streaming/js/join.js"></script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../../manager_header.jsp" />

	<!-- content -->
	<div class="magazine_write">
		<section class="section_1">
			<div>
				<h1>매거진 등록</h1>
				<form name="magazineWriteForm" action="magazineWriteProc.jsp"
					method="post" class="magazine_wirte" enctype="multipart/form-data">
					<ul>
						<li><label>제 목</label> <input type="text" name="mtitle">
						</li>
						<li><label>요 약</label> <input type="text" name="msummary">
						</li>
						<li><label>소제목</label> <input type="text" name="msubtitle">
						</li>
						<li><label>내 용</label> <textarea name="mcontent"></textarea>
						</li>
						<li><label>파일첨부</label> <input type="file" name="mfile">
						</li>
						<li>
							<button type="button" class="btn_style" id="btnMagazineWrite">등록</button>
							<button type="reset" class="btn_style_2">취소</button> <a
							href="magazine_list.jsp"><button type="button"
									class="btn_style">목록으로</button></a>
						</li>
					</ul>
				</form>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../../footer.jsp" />
</body>
</html>
<% }else{ %>
<script>
	alert("접근불가합니다.");
</script>
<% } %>