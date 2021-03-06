<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="com.music.vo.*, com.music.dao.*" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>

<%-- <% request.setCharacterEncoding("utf-8"); %>
<jsp:useBean id="vo" class="com.music.vo.MusicMemberVO" /><!-- 객체생성 -->
<jsp:setProperty name="vo" property="*" /> --%>

<%
	//1. 파일이 저장되는 경로 설정 : upload폴더 주소
	String save_path = request.getServletContext().getRealPath("/upload"); 
	//System.out.println("path==>>" + save_path);	

	//2. 파일 업로드 사이즈 설정
	int max_size = 1024*1024*15;

	//3. MultipartRequest 객체 생성 -- 생성되는 동시에 파일이 자동업로드(서버에 저장)
	MultipartRequest multi 
		= new MultipartRequest(request,save_path,max_size,"utf-8", new DefaultFileRenamePolicy()); 
	
	//4. VO 객체 생성
	MusicMemberVO vo = new MusicMemberVO();
	
	vo.setBfile(multi.getOriginalFileName("bfile"));
	vo.setBsfile(multi.getFilesystemName("bfile"));
	vo.setName(multi.getParameter("name"));
	vo.setNickname(multi.getParameter("nickname"));
	vo.setId(multi.getParameter("id"));
	vo.setPass(multi.getParameter("pass"));
	vo.setEmail1(multi.getParameter("email1"));
	vo.setEmail2(multi.getParameter("email2"));
	vo.setEmail_agr(multi.getParameter("email_agr"));
	vo.setCp1(multi.getParameter("cp1"));
	vo.setCp2(multi.getParameter("cp2"));
	vo.setCp3(multi.getParameter("cp3"));
	vo.setSms_agr(multi.getParameter("sms_agr"));
	vo.setGenre(multi.getParameterValues("genre"));
	
	//DB연동 후 저장
	MusicMemberDAO dao = new MusicMemberDAO();
	boolean result = dao.getInsert(vo);
	
	if(result){
		response.sendRedirect("joinSuccess.jsp");
	}else{
		response.sendRedirect("../errorPage.jsp");
	}
%>
