<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import = "com.music.vo.*, com.music.dao.*, java.util.*"
	%>
<%
MusicNoticeDAO dao = new MusicNoticeDAO();
 String nid = request.getParameter("nid"); 
 boolean result = dao.getDelete(nid);
/* 	ArrayList<MusicNoticeVO> list = dao.getList(); */
	
		String rpage = request.getParameter("rpage");
		
		int start = 0;
		int end = 0;
		int pageSize = 5; 
		int pageCount = 1; 
		int dbCount = dao.getListCount(); 
		int reqPage = 1; 
		
		if(dbCount % pageSize == 0){
			pageCount = dbCount/pageSize;		
		}else{
			pageCount = dbCount/pageSize +1;
		}
		
		if(rpage != null){
			reqPage = Integer.parseInt(rpage);
			start = (reqPage-1) * pageSize +1 ;
			end = reqPage*pageSize;	
		}else{
			start = reqPage;
			end = pageSize;
		}
		ArrayList<MusicNoticeVO> list = dao.getList(start, end);
%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet"
	href="http://localhost:9000/Music_streaming/css/music_streaming.css"> 
		<link rel="stylesheet" href = "http://localhost:9000/Music_streaming/css/am-pagination.css">
		<script src="http://localhost:9000/Music_streaming/js/jquery-3.5.1.min.js"></script>
		<script src="http://localhost:9000/Music_streaming/js/am-pagination.js"></script>
<script>
/*전체 선택*/
/* 	function allCheck(){
		var all =document.getElementById("all");
		var chk_list = document.getElementsByName("chk");

		if(all.checked){
			for(var i=0; i<chk_list.length; i++){
				chk_list[i].checked = true;
			}
		}else{
			for(var i=0; i<chk_list.length; i++){
				chk_list[i].checked = false;
			}
		}
	}
	
	function chk_delete(){
		var chk_list = document.getElementsByName("chk");
		var del_list="";
		
		for(var i in chk_list){
			if(chk_list[i].checked){
				del_list += chk_list[i].getAttribute("id")+",";
			}
		}
		alert(del_list);	
		noticeDeleteProc.submit();
	} */
	
	$(document).ready(function(){
		
	/** 전체선택 **/
	$("#all").change(function(){
		$("#all:checked").length == 0
		if($(this).is(":checked")){
			//선택 - 하위 checkbox 선택
			$("input[name='chk']").prop("checked",true);
		}else{
			//해제 - 하위 checkbox 해제
			$("input[name='chk']").prop("checked",false);
		}	
	});
	/**전체선택후 개별선택시 전체선택 체크해제**/
	$("input[name='chk']").click(function(){
		  $("#all").prop("checked", false);
		 });
	
	/** 삭제 버튼 클릭 : 클릭된 체크박스의 id 값을 리턴 **/
	$("#btnDelete").click(function(){
		 var del_list =""
		 $("input[name='chk']:checked").each(function(index){
			del_list += $(this).attr("id")+",";
		});
			alert(del_list); 	
	
		//ajax를 이용하여 서버로 전송 후 삭제 진행
		$.ajax({
			url:"noticeDeleteProc.jsp?del_list="+del_list,
			sucees:function(result){
				 if(result == 1) {     
					 alert("삭제 성공");
				/* location.href = "/shop/cartList"; */
		      } else {
		       alert("삭제 실패");
		      }
			}
			
				
		})//ajax
		
	});//btnDelete
	
	
	/*페이징 처리*/
		var pager = jQuery("#ampaginationsm").pagination({
			maxSize : 5,			
			totals:<%=dbCount%>,
			page : <%=reqPage%>,
			pageSize : <%=pageSize%>,
					
			lastText : '&raquo;&raquo;',
			firstText : '&laquo;&laquo',
			prevTest : '&laquo;',
			nextTest : '&raquo;',
			
			btnSize : 'sm' 			
		}); 
		
		jQuery("#ampaginationsm").on('am.pagination.change',function(e){
			$(location).attr('href','http://localhost:9000/Music_streaming/board/board_list.jsp?rpage='+e.page);  

		});
		
	});//ready
</script>

</head>
<body class="ad_notice_list">
	<!-- header -->
	<jsp:include page="../../manager_header.jsp"></jsp:include>
	<!-- content -->
	<div>
		<section class="section_1">
			<div>
				<h1>공지사항 관리</h1>
				<table class="ad_notice">
					<tr>
						<td colspan="5">
						<%-- <a href="noticeDeleteProc.jsp?nid=<%=nid%>"> --%>
							<button type="button" class="btn_style" id="btnDelete" >공지사항 삭제</button>
						<!-- </a> -->
						<a href="notice_write.jsp" >
								<button type="button" class="btn_style" id="insert">공지사항 등록</button>
						</a>
					</td>
					</tr>
					<tr>
						<th><input type="checkbox" id="all" >전체선택</th>
						<th>번호</th>
						<th>제목</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
					
					<% for (MusicNoticeVO vo : list) { %>
					<tr>
						<td><input type="checkbox" name="chk" id="<%=vo.getNid() %>"></td>	<!-- 번호 바꿔야해ㅑ  -->
						<td><%= vo.getRno() %></td>
						<td><a href="notice_content.jsp?nid=<%=vo.getNid()%>"><%= vo.getNtitle() %></a></td>
						<td><%= vo.getNdate() %></td>
						<td><%= vo.getNhits() %></td>
					</tr>
					<%} %>
					<tr>
						<td colspan="5"><div id="ampaginationsm"></div></td>
					</tr>
				</table>
			</div>
		</section>
	</div>

	<!-- footer -->
	<jsp:include page="../../footer.jsp"></jsp:include>
</body>
</html>