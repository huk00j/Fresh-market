package com.blah.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import com.blah.dto.guestDTO;
import com.blah.dto.productDTO;

import util.DBManager;

public class productDAO {

	private static productDAO productdao = null;

	public static productDAO getInstace() {
		if (productdao == null) {
			productdao = new productDAO();
		}
		return productdao;
	}

	public int insertProduct(productDTO pdto) {
		String sql = "insert into sale(" + "num, type, name, amount, price, origin, introduce, image)"
				+ "values(sale_num.nextval, ?, ?, ?, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pdto.getType());
			pstmt.setString(2, pdto.getName());
			pstmt.setInt(3, pdto.getAmount());
			pstmt.setInt(4, pdto.getPrice());
			pstmt.setString(5, pdto.getOrigin());
			pstmt.setString(6, pdto.getIntroduce());
			if (pdto.getImage() == null) {
				pstmt.setString(7, "없음");
			} else {
				pstmt.setString(7, pdto.getImage());
			}
			int check = pstmt.executeUpdate();
			return check;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}

	
	public ArrayList<productDTO> selectProduct() {
		ArrayList<productDTO> plist = new ArrayList<>();
		String sql = "select * from sale";
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while (rs.next()) {
				productDTO pdto = new productDTO();
				pdto.setNum(rs.getInt("num"));
				pdto.setImage(rs.getString("image"));
				pdto.setType(rs.getString("type"));
				pdto.setName(rs.getString("name"));
				pdto.setOrigin(rs.getString("origin"));
				pdto.setPrice(rs.getInt("price")); //-> 회원 상품 목록에 가격 표시가 안 되어서 추가 함. //문제 있을 시 참고.
//				pdto.setIntroduce(rs.getString("introduce")); //-> 상품 디테일 때문에 추가함.
//				pdto.setAmount(rs.getInt("amount"));	// -> 상품 디테일 때문에 추가.
				
				plist.add(pdto);
			}
			return plist;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	
	public int deleteProduct(String productNum) {
		String sql = "delete sale where num = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, productNum);
			int check = pstmt.executeUpdate();
			return check;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	
	public ArrayList<productDTO> selectModProduct(String modNum) {
		String sql = "select * from sale where num = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<productDTO> slist = new ArrayList<>(); 
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, modNum);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				productDTO pdto = new productDTO();
				pdto.setNum(Integer.valueOf(modNum));
				pdto.setType(rs.getString("type"));
				pdto.setName(rs.getString("name"));
				pdto.setAmount(rs.getInt("amount"));
				pdto.setPrice(rs.getInt("price"));
				pdto.setOrigin(rs.getString("origin"));
				pdto.setIntroduce(rs.getString("introduce"));
				pdto.setImage(rs.getString("image"));
				slist.add(pdto);
			}
			return slist;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	public int updateModProduct(productDTO pdto) {
		String sql = "update sale set type = ?, name = ?, amount = ?, price = ?,"
					+ "origin = ?, introduce = ?, image = ?"
					+ "where num = ?";
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pdto.getType());
			pstmt.setString(2, pdto.getName());
			pstmt.setInt(3, pdto.getAmount());
			pstmt.setInt(4, pdto.getPrice());
			pstmt.setString(5, pdto.getOrigin());
			pstmt.setString(6, pdto.getIntroduce());
			pstmt.setString(7, pdto.getImage());
			pstmt.setInt(8, pdto.getNum());
			int check = pstmt.executeUpdate();
			return check;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	
	
	public productDTO selectDetailProduct(String pNum) {
		String sql = "select * from sale where num = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pNum);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				productDTO pdto = new productDTO();
				pdto.setNum(rs.getInt("num"));
				pdto.setType(rs.getString("type"));
				pdto.setName(rs.getString("name"));
				pdto.setAmount(rs.getInt("amount"));	// -> 상품 디테일 때문에 추가.
				pdto.setPrice(rs.getInt("price")); //-> 회원 상품 목록에 가격 표시가 안 되어서 추가 함. //문제 있을 시 참고.
				pdto.setOrigin(rs.getString("origin"));
				pdto.setIntroduce(rs.getString("introduce")); //-> 상품 디테일 때문에 추가함.
				pdto.setImage(rs.getString("image"));
				
				return pdto;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
}
