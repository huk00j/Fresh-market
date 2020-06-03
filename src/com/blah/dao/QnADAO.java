package com.blah.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.blah.dto.QnADTO;

import util.DBManager;

public class QnADAO {

	private static QnADAO QnAdao = null;

	public static QnADAO getInstace() {
		if (QnAdao == null) {
			QnAdao = new QnADAO();
		}
		return QnAdao;
	}

	public int insertQuestion(String id, String title, String content) { // 회원용.
		String sql = "insert into qna(no, id, title, content, views, grp, seq, lvl)"
				+ "values(qna_no.nextval, ?, ?, ?, 0, qna_no.nextval, 1, 1)";
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, title);
			pstmt.setString(3, content);
			int check = pstmt.executeUpdate();
			return check;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public ArrayList<QnADTO> selectList() {
		String sql = "select * from qna order by grp desc, seq asc";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		ArrayList<QnADTO> list = new ArrayList<>();
		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				QnADTO qnadto = new QnADTO();
				qnadto.setNo(rs.getInt("no"));
				qnadto.setId(rs.getString("id"));
				qnadto.setTitle(rs.getString("title"));
				qnadto.setContent(rs.getString("content"));
				qnadto.setViews(rs.getInt("views"));
				qnadto.setGrp(rs.getInt("grp"));
				qnadto.setSeq(rs.getInt("seq"));
				qnadto.setLvl(rs.getInt("lvl"));
				qnadto.setQnadate(rs.getTimestamp("qnadate"));

				list.add(qnadto);
			}
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;

	}

	public int updateReadCount(String no) {
		String sql = "update qna set views = views+1 where no = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			int check = pstmt.executeUpdate();
			return check;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	public QnADTO selectQuestionDetail(String no) {
		String sql = "select * from qna where no = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				QnADTO qnadto = new QnADTO();
				qnadto.setTitle(rs.getString("title"));
				qnadto.setId(rs.getString("id"));
				qnadto.setQnadate(rs.getTimestamp("qnadate"));
				qnadto.setViews(rs.getInt("views"));
				qnadto.setContent(rs.getString("content"));
				
				qnadto.setNo(Integer.valueOf(no));	// QnA 답변할 때 번호 가져가려고 만듦.
//				qnadto.setGrp(Integer.valueOf("grp"));	// 이하 동문.
				qnadto.setLvl(rs.getInt("lvl"));
				
				return qnadto;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;

	}
	
	
/*	//----- 답글 디테일에서 원글만 뽑기 위한 메소드 -----------------------------
	public QnADTO selectOriginDetail(int grp, int lvl) {
		String sql = "select * from qna where grp = ? and lvl = 2";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, grp);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				QnADTO Answerdto = new QnADTO();
				Answerdto.setTitle(rs.getString("title"));
				Answerdto.setContent(rs.getString("content"));
				Answerdto.setQnadate(rs.getTimestamp("qnadate"));
//				qnadto.setViews(rs.getInt("views"));
				
//				qnadto.setNo(Integer.valueOf(no));	// QnA 답변할 때 번호 가져가려고 만듦.
				Answerdto.setGrp(rs.getInt("grp"));	// 이하 동문.
				Answerdto.setSeq(rs.getInt("seq"));
				Answerdto.setLvl(rs.getInt("lvl"));
				
				return Answerdto;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;

	}
	
*/	
	
	//-------- 계층형 게시판 영역 -------------------------------------------------
	
	public int selectSeq(String no) {
		String sql = "select count(*) from qna where grp = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, no);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				int count = rs.getInt("count(*)");
				return count;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	
	
	
	
	public int insertAnswer(QnADTO qdto, int count) {
		String sql = "insert into qna(no, id, title, content, views, grp, seq, lvl)"
				+ "values(qna_no.nextval, ?, ?, ?, 0, ?, ?, 2)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, qdto.getId());
			pstmt.setString(2, "Re: " + qdto.getTitle());
			pstmt.setString(3, qdto.getContent());
			pstmt.setInt(4, qdto.getNo());
			pstmt.setInt(5, count);
			
			int check = pstmt.executeUpdate();
			return check;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;

	}
	
	
	
}
