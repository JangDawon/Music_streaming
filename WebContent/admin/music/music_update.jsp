<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.dao.*, com.music.vo.*, java.util.*"%>
	
<%  
	String mid = request.getParameter("mid");
	MusicChartDAO dao = new MusicChartDAO();
	MusicChartVO vo = dao.getContent(mid);  
	ArrayList<MusicChartVO> commlist = dao.getComm_List(mid);  
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="http://localhost:9000/Music_streaming/css/music_streaming.css">
<script>
	$(document).ready(function(){
		
		var imgfileName = "";
		var musicfileName = "";
		
		//파일선택
		$("input[type=file]#music_image").on('change', function(){
			if(window.FileReader){
				imgfileName = $(this)[0].files[0].name;  //파일선택 0번지의 첫번째 파일의 이름을 fileName변수에 넣는다
				$("#fname_album").text("").text(imgfileName);//기존 데이터 지우고 fileName 값을 넣음
			}
		});
		
		$("input[type=file]#music_file").on('change', function(){
			if(window.FileReader){
				musicfileName = $(this)[0].files[0].name;  //파일선택 0번지의 첫번째 파일의 이름을 fileName변수에 넣는다
				$("#fname_music").text("").text(musicfileName);//기존 데이터 지우고 fileName 값을 넣음
			}
		});
		
		/** 유효성 체크 **/
		$("#musicbtnUpdate").click(function(){
			
			if($("#song").val() == ""){
				alert("음악제목을 입력해주세요");
				$("#song").focus();
				return false;
			}else if($("#artist").val() == ""){
				alert("가수를 입력해주세요");
				$("#artist").focus();
				return false;
			}else if($("#lyricist").val() == ""){
				alert("작사가를 입력해주세요");
				$("#lyricist").focus();
				return false;
			}else if($("#composer").val() == ""){
				alert("작곡가를 입력해주세요");
				$("#composer").focus();
				return false;
			}else if($("#lyrics").val() == ""){
				alert("가사를 입력해주세요");
				$("#lyrics").focus();
				return false;
			}else{
				//폼이름.submit()
				musicUpdateForm.submit();
			}
		});//btn_songRegister click -- validation check
		
	});	
</script>
</head>
<body class="music_update">
	<!-- header -->
	<jsp:include page="../../manager_header.jsp"></jsp:include>

	<!-- content -->
	<div class="content_board">
		<section class="section_1">
			<div>
				<h1>음악 수정</h1>
				<form name="musicUpdateForm" action="musicUpdateProc.jsp" method="post" enctype="multipart/form-data"
					class="admin_music_update">
					<input type="hidden" name="mid" value="<%= mid %>">
					<ul>
						<li><label>음악제목</label> <input type="text" name="song" id="song" value="<%= vo.getSong() %>"></li>
						<li><label>아티스트</label> <input type = "text" name="artist" id="artist" value ="<%= vo.getArtist() %>"></li>
						<li><label>작사가</label> <input type = "text" name="lyricist" id="lyricist" value ="<%= vo.getLyricist() %>"></li>
						<li><label>작곡가</label> <input type = "text" name="composer" id="composer" value ="<%= vo.getComposer() %>"></li>
						<li class="lyrics"><label>가사</label><textarea name="lyrics" id="lyrics"><%= vo.getLyrics() %></textarea></li>
						<li class="music_image"><label>앨범커버</label> 
							<input type="file" name="music_image" id="music_image" value="<%= vo.getMusic_image() %>">
							<span id="fname_album" class="fname"><%= vo.getMusic_image() %></span>
						</li>
						<li class="music_file"><label>음악파일</label> 
							<input type="file" name="music_file" id="music_file" value="<%= vo.getMusic_file() %>">
							<span id="fname_music" class="fname"><%= vo.getMusic_file() %></span>
						</li>
						<li>
							<button type="button" class="btn_style" id="musicbtnUpdate">수정완료</button>
							<a href="music_info.jsp?mid=<%= mid %>">
								<button type="button"class="btn_style_2">이전페이지</button></a> 
							<a href="music_list.jsp">
								<button type="button" class="btn_style">목록으로</button></a>
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