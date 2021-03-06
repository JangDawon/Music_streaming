<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	 import="com.music.vo.*, com.music.dao.*"%>
	 
	 <%
	String vid= request.getParameter("vid");
	 MusicVideoDAO dao = new MusicVideoDAO();
	 MusicVideoVO vo = dao.getContent(vid);
	%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<script>
	$(document).ready(function() {
		
		var vfile1Name = "";
		var vfile2Name = "";
		
		//파일선택
		$("input[type=file]#vfile1").on('change', function(){
			if(window.FileReader){
				vfile1Name = $(this)[0].files[0].name;  //파일선택 0번지의 첫번째 파일의 이름을 fileName변수에 넣는다
				$("#vfile1_msg").text("").text(vfile1Name);//기존 데이터 지우고 fileName 값을 넣음
			}
		});
		
		$("input[type=file]#vfile2").on('change', function(){
			if(window.FileReader){
				vfile2Name = $(this)[0].files[0].name;  //파일선택 0번지의 첫번째 파일의 이름을 fileName변수에 넣는다
				$("#vfile2_msg").text("").text(vfile2Name);//기존 데이터 지우고 fileName 값을 넣음
			}
		});
	});
</script>
</head>
<body>
	<!-- header -->
	<jsp:include page="../../manager_header.jsp"></jsp:include>

	<!-- content -->
	<div class="content_board">
		<section class="section_1">
			<div>
				<h1>뮤비 수정</h1>
				<form name="movieUpdateForm" action="movieUpdateProc.jsp" method="post"
					class="admin_movie_update" enctype="multipart/form-data">
					<input type="hidden" name="vid" value="<%=vid%>">
					<ul>
						<li><label>가수명</label> <input type="text" name="vartist" value="<%=vo.getVartist()%>"></li>
						<li><label>노래제목</label> <input type="text"name="vtitle" value="<%=vo.getVtitle()%>"></li>
						<li><label>영상주소</label> <input type="text"name="vcontent" value = '<%= vo.getVcontent()%>'></li>
						<li><label>영상소개</label> <textarea name="vintro"><%=vo.getVintro()%></textarea></li>
						<li><label>뮤비사진</label> 
							<input type="file"name="vfile1" id="vfile1" value= "<%=vo.getVfile1() %>">
							<span id="vfile1_msg" class="vfile_msg"><%= vo.getVfile1() %></span>
						</li>
						<li><label>가수사진</label> 
							<input type="file"name="vfile2" id="vfile2" value= "<%=vo.getVfile1() %>">
							<span id="vfile2_msg" class="vfile_msg"><%= vo.getVfile2() %></span>
						</li>
						<li>
							<button type="submit" class="btn_style">수정완료</button>
							<button type="reset" class="btn_style_2">취소</button> 
							<a href="movie_info.jsp?vid=<%= vid %>"><button type="button"class="btn_style_2">이전페이지</button></a> 
							<a href="movie_list.jsp"><button type="button" class="btn_style">목록으로</button></a>
						</li>
					</ul>
				</form>
			</div>
		</section>
	</div>
	<!-- footer -->
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>