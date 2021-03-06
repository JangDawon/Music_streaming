package com.music.dao;

import java.sql.ResultSet;
import java.util.ArrayList;

import com.music.vo.MusicChartVO;

public class MusicChartDAO extends DBConn{
	
	/**
	 * rownum -> mid 구하기
	 */
	public String getMid(int rownum_int) {
		String result = "";

		try {
			String sql = "SELECT MID\r\n" + 
					"FROM (SELECT MID, ROWNUM RNO, MUSIC_IMAGE, SONG, ARTIST, MHITS, TO_CHAR(MDATE,'YYYY/MM/DD'), MUSIC_SIMAGE\r\n" + 
					"FROM (SELECT * FROM MUSICCHART ORDER BY MDATE DESC)) \r\n" + 
					"WHERE RNO=?";

			getPreparedStatement(sql);
			pstmt.setInt(1, rownum_int);

			ResultSet rs = pstmt.executeQuery();
			while (rs.next())
				result = rs.getString(1);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return result;
	}
	
	/**
	 * Update : 좋아요 수 업데이트(-1)
	 */
	public void getUpdateHitsMinus(String mid) {
		try {
			String sql = "update musicchart set mhits=mhits-1 "
					+ "where mid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, mid);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * Update : 좋아요 수 업데이트(+1)
	 */
	public void getUpdateHitsPlus(String mid) {
		try {
			String sql = "update musicchart set mhits=mhits+1 "
					+ "where mid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, mid);
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 전체 row count
	 * @return
	 */
	public int getListCount() {
		int result = 0;
		
		try {
			String sql = "select count(*) from musicchart";
			
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) result = rs.getInt(1);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Delete : 음악 삭제 void
	 */
	public void getDeleteChk(String mid) {
		
		try {
			String sql = "delete from musicchart where mid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, mid);
			
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	/**
	 * Delete : 음악 삭제
	 */
	public boolean getDelete(String mid) {
		boolean result = false;
		
		try {
			String sql = "delete from musicchart where mid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, mid);
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Update : 음악정보 수정 - 이미지 O, 음악파일 O
	 */
	public boolean updateMusic(MusicChartVO vo, String mid) {
		boolean result = false;
		
		try {
			String sql = "UPDATE MUSICCHART SET MUSIC_IMAGE=?, MUSIC_SIMAGE=?, SONG=?, ARTIST=?, LYRICIST=?, COMPOSER=?, LYRICS=?, MUSIC_FILE=?, MUSIC_SFILE=? WHERE MID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getMusic_image());
			pstmt.setString(2, vo.getMusic_simage());
			pstmt.setString(3, vo.getSong());
			pstmt.setString(4, vo.getArtist());
			pstmt.setString(5, vo.getLyricist());
			pstmt.setString(6, vo.getComposer());
			pstmt.setString(7, vo.getLyrics());
			pstmt.setString(8, vo.getMusic_file());
			pstmt.setString(9, vo.getMusic_sfile());
			pstmt.setString(10, mid);
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Update : 음악정보 수정 - 이미지 O, 음악파일 X
	 */
	public boolean updateMusicImg(MusicChartVO vo, String mid) {
		boolean result = false;
		
		try {
			String sql = "UPDATE MUSICCHART SET MUSIC_IMAGE=?, MUSIC_SIMAGE=?, SONG=?, ARTIST=?, LYRICIST=?, COMPOSER=?, LYRICS=? WHERE MID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getMusic_image());
			pstmt.setString(2, vo.getMusic_simage());
			pstmt.setString(3, vo.getSong());
			pstmt.setString(4, vo.getArtist());
			pstmt.setString(5, vo.getLyricist());
			pstmt.setString(6, vo.getComposer());
			pstmt.setString(7, vo.getLyrics());
			pstmt.setString(8, mid);
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Update : 음악정보 수정 - 이미지 X, 음악파일 O
	 */
	public boolean updateMusicFile(MusicChartVO vo, String mid) {
		boolean result = false;
		
		try {
			String sql = "UPDATE MUSICCHART SET SONG=?, ARTIST=?, LYRICIST=?, COMPOSER=?, LYRICS=?, MUSIC_FILE=?, MUSIC_SFILE=? WHERE MID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getSong());
			pstmt.setString(2, vo.getArtist());
			pstmt.setString(3, vo.getLyricist());
			pstmt.setString(4, vo.getComposer());
			pstmt.setString(5, vo.getLyrics());
			pstmt.setString(6, vo.getMusic_file());
			pstmt.setString(7, vo.getMusic_sfile());
			pstmt.setString(8, mid);
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Update : 음악정보 수정 - 이미지 X, 음악파일 X
	 */
	public boolean updateMusicNofile(MusicChartVO vo, String mid) {
		boolean result = false;
		
		try {
			String sql = "UPDATE MUSICCHART SET SONG=?, ARTIST=?, LYRICIST=?, COMPOSER=?, LYRICS=? WHERE MID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getSong());
			pstmt.setString(2, vo.getArtist());
			pstmt.setString(3, vo.getLyricist());
			pstmt.setString(4, vo.getComposer());
			pstmt.setString(5, vo.getLyrics());
			pstmt.setString(6, mid);
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Insert : 음악 등록
	 */
	public boolean registerMusic(MusicChartVO vo) {
		boolean result = false;
		
		try {
			String sql = "INSERT INTO MUSICCHART VALUES('m_'||SEQU_COMMENTID.nextval,"
					+ "?,?,?,?,?,?,?,0,SYSDATE,?,?)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getMusic_image());
			pstmt.setString(2, vo.getMusic_simage());
			pstmt.setString(3, vo.getSong());
			pstmt.setString(4, vo.getArtist());
			pstmt.setString(5, vo.getLyricist());
			pstmt.setString(6, vo.getComposer());
			pstmt.setString(7, vo.getLyrics());
			pstmt.setString(8, vo.getMusic_file());
			pstmt.setString(9, vo.getMusic_sfile());
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * Insert : 댓글 등록
	 */
	public boolean getCommentInsert(MusicChartVO vo, String id, String mid) {
		boolean result = false;
		
		try {
			String sql = "INSERT INTO MUSICCOMMENT VALUES('comm_'||SEQU_COMMENTID.nextval,"
					+ "?,SYSDATE,?,0,?)";
			
			getPreparedStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, vo.getComment_write());
			pstmt.setString(3, mid);
			
			int val = pstmt.executeUpdate();
			if(val != 0) result = true;
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	/**
	 * List : 댓글 리스트
	 */
	public ArrayList<MusicChartVO> getComm_List(String mid){
		ArrayList<MusicChartVO> list = new ArrayList<MusicChartVO>();
		
		try {
			String sql = "SELECT COMM_ID, ID, COMM_DATE, COMMENT_WRITE, MID FROM MUSICCOMMENT WHERE MID=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, mid);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicChartVO vo = new MusicChartVO();
				vo.setComm_id(rs.getString(1));
				vo.setId(rs.getString(2));
				vo.setComm_date(rs.getString(3));
				vo.setComment_write(rs.getString(4));
				vo.setMid(rs.getString(5));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * Select : 같은 아티스트
	 */
	public ArrayList<MusicChartVO> getSameArtist(String artist) {
		ArrayList<MusicChartVO> list = new ArrayList<MusicChartVO>();
		try {
			String sql = "select mid, music_image, song, artist, lyricist, composer, lyrics, music_simage, to_char(mdate,'yyyy/mm/dd'),\r\n" + 
					"music_file, mhits \r\n" + 
					"from musicchart \r\n" + 
					"where artist=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, artist);
			
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				MusicChartVO vo = new MusicChartVO();
				vo.setMid(rs.getString(1));
				vo.setMusic_image(rs.getString(2));
				vo.setSong(rs.getString(3));
				vo.setArtist(rs.getString(4));
				vo.setLyricist(rs.getString(5));
				vo.setComposer(rs.getString(6));
				vo.setLyrics(rs.getString(7));
				vo.setMusic_simage(rs.getString(8));
				vo.setMdate(rs.getString(9));
				vo.setMusic_file(rs.getString(10));
				vo.setMhits(rs.getInt(11));
				
				list.add(vo);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * Select : 상세 내용
	 */
	public MusicChartVO getContent(String mid) {
		MusicChartVO vo = new MusicChartVO();
		try {
			String sql = "select mid, music_image, song, artist, lyricist, composer, lyrics, music_simage, to_char(mdate,'yyyy/mm/dd'), music_file, mhits from musicchart where mid=?";
			
			getPreparedStatement(sql);
			pstmt.setString(1, mid);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				vo.setMid(rs.getString(1));
				vo.setMusic_image(rs.getString(2));
				vo.setSong(rs.getString(3));
				vo.setArtist(rs.getString(4));
				vo.setLyricist(rs.getString(5));
				vo.setComposer(rs.getString(6));
				vo.setLyrics(rs.getString(7));
				vo.setMusic_simage(rs.getString(8));
				vo.setMdate(rs.getString(9));
				vo.setMusic_file(rs.getString(10));
				vo.setMhits(rs.getInt(11));
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vo;
	}
	
	/**
	 * List : 최신 TOP5차트
	 */
	public ArrayList<MusicChartVO> getList2(){
		ArrayList<MusicChartVO> list = new ArrayList<MusicChartVO>();
		
		try {
			String sql = "SELECT MID, ROWNUM RNO, MUSIC_IMAGE, SONG, ARTIST, MHITS, MDATE, MUSIC_SIMAGE\r\n" + 
					"FROM (SELECT * FROM MUSICCHART ORDER BY MDATE DESC)";
			
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MusicChartVO vo = new MusicChartVO();
				vo.setMid(rs.getString(1));
				vo.setRno(rs.getInt(2));
				vo.setMusic_image(rs.getString(3));
				vo.setSong(rs.getString(4));
				vo.setArtist(rs.getString(5));
				vo.setMhits(rs.getInt(6));
				vo.setMdate(rs.getString(7));
				vo.setMusic_simage(rs.getString(8));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * List : 최신 TOP5차트 - 페이징
	 */
	public ArrayList<MusicChartVO> getList2(int start, int end){
		ArrayList<MusicChartVO> list = new ArrayList<MusicChartVO>();
		
		try {
			String sql = "SELECT * FROM (SELECT MID, ROWNUM RNO, MUSIC_IMAGE, SONG, ARTIST, MHITS, TO_CHAR(MDATE,'YYYY/MM/DD'), MUSIC_SIMAGE\r\n" + 
					"FROM (SELECT * FROM MUSICCHART ORDER BY MDATE DESC)) WHERE RNO BETWEEN ? AND ?";
			
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MusicChartVO vo = new MusicChartVO();
				vo.setMid(rs.getString(1));
				vo.setRno(rs.getInt(2));
				vo.setMusic_image(rs.getString(3));
				vo.setSong(rs.getString(4));
				vo.setArtist(rs.getString(5));
				vo.setMhits(rs.getInt(6));
				vo.setMdate(rs.getString(7));
				vo.setMusic_simage(rs.getString(8));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * List : 많이 들은 TOP5차트 - 페이지
	 */
	public ArrayList<MusicChartVO> getList1(int start, int end){
		ArrayList<MusicChartVO> list = new ArrayList<MusicChartVO>();
		
		try {
			String sql = "SELECT *\r\n" + 
					"FROM (SELECT MID, ROWNUM RNO, MUSIC_IMAGE, SONG, ARTIST, MHITS, MDATE, MUSIC_SIMAGE\r\n" + 
					"FROM (SELECT * FROM MUSICCHART ORDER BY MHITS DESC))\r\n" + 
					"WHERE RNO BETWEEN ? AND ?";
			
			getPreparedStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MusicChartVO vo = new MusicChartVO();
				vo.setMid(rs.getString(1));
				vo.setRno(rs.getInt(2));
				vo.setMusic_image(rs.getString(3));
				vo.setSong(rs.getString(4));
				vo.setArtist(rs.getString(5));
				vo.setMhits(rs.getInt(6));
				vo.setMdate(rs.getString(7));
				vo.setMusic_simage(rs.getString(8));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	/**
	 * List : 많이 들은 TOP5차트
	 */
	public ArrayList<MusicChartVO> getList1(){
		ArrayList<MusicChartVO> list = new ArrayList<MusicChartVO>();
		
		try {
			String sql = "SELECT MID, ROWNUM RNO, MUSIC_IMAGE, SONG, ARTIST, MHITS, MDATE, MUSIC_SIMAGE\r\n" + 
					"FROM (SELECT * FROM MUSICCHART ORDER BY MHITS DESC)";
			
			getPreparedStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MusicChartVO vo = new MusicChartVO();
				vo.setMid(rs.getString(1));
				vo.setRno(rs.getInt(2));
				vo.setMusic_image(rs.getString(3));
				vo.setSong(rs.getString(4));
				vo.setArtist(rs.getString(5));
				vo.setMhits(rs.getInt(6));
				vo.setMdate(rs.getString(7));
				vo.setMusic_simage(rs.getString(8));
				
				list.add(vo);
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
