package com.blah.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.blah.dto.buyDTO;
import com.blah.dto.cartDTO;
import com.blah.dto.cartViewDTO;
import com.blah.dto.guestDTO;

import util.DBManager;

public class guestDAO {

	private static guestDAO guestdao = null;
	
	public static guestDAO getInstace() {
		if(guestdao == null) {
			guestdao = new guestDAO();
		}
		return guestdao;
	}
	
	
	public int insertJoin(guestDTO dto) {
		String sql = "insert into guest("
				+ "id, pw, name, phon, address, email, who)"
				+ "values(?, ?, ?, ?, ?, ?, 1)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getPhon());
			pstmt.setString(5, dto.getAddress());
			pstmt.setString(6, dto.getEmail());
			int check = pstmt.executeUpdate();
			return check;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally{
			DBManager.close(conn, pstmt);
		}
		return 0;
	}
	
	
	public String selectLogin(guestDTO dto) {
		String sql = "select count(*) from guest where id = ? and pw = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String check = null;
		conn = DBManager.getConnection();
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPw());
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				check = rs.getString("count(*)");
			}
			System.out.println("체크 뭐 나왔어 ?-> " + check);
			return check;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		
		return null;
	}
	
	
	public int insertCart(cartDTO cdto) {
		String sql = "insert into cart(no, id, num, name, amount, price)"
					+ "values(cart_no.nextval, ?, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cdto.getId());
			pstmt.setInt(2, cdto.getNum());
			pstmt.setString(3, cdto.getName());
			pstmt.setInt(4, cdto.getAmount());
			pstmt.setInt(5, cdto.getPrice());
			int check = pstmt.executeUpdate();
			
			return check;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	
	public ArrayList<cartViewDTO> selectCartView(String id) {
		ArrayList<cartViewDTO> list = new ArrayList<>();

		String sql = "select * from cartview where id = ? order by no desc";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				cartViewDTO cvdto = new cartViewDTO();
				cvdto.setNo(rs.getInt("no"));
				cvdto.setNum(rs.getInt("num"));
				cvdto.setImage(rs.getString("image"));
				cvdto.setName(rs.getString("name"));
				cvdto.setAmount(rs.getInt("amount"));
//				int amount = cvdto.getAmount();
//				int price = rs.getInt("price");
//				int totalPrice = amount * price;
//				cvdto.setPrice(totalPrice);
				cvdto.setPrice(rs.getInt("price"));
				
				list.add(cvdto);
			}
			return list;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	public int deleteCart(String id, String no) {
		String sql = "delete cart where id = ? and no = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, no);
			
			int check = pstmt.executeUpdate();
			return check;
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
		
	}
	
	
	public int updateCart(String no, String amount) {
		String sql = "update cart set amount = ? where no = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, amount);
			pstmt.setString(2, no);
			int check = pstmt.executeUpdate();
			return check;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	
	public ArrayList<cartDTO> selectBuy(ArrayList<String> list) {
		String sql = "select * from cart where no = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<cartDTO> clist = new ArrayList<>();
			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(sql);
				
			for (int i = 0; i < list.size(); i++) {
				pstmt.setString(1, list.get(i));
				rs = pstmt.executeQuery();
				while (rs.next()) {
					cartDTO cdto = new cartDTO();
					cdto.setNo(rs.getInt("no"));
					cdto.setId(rs.getString("id"));
					cdto.setNum(rs.getInt("num"));
					cdto.setName(rs.getString("name"));
					cdto.setAmount(rs.getInt("amount"));
					cdto.setPrice(rs.getInt("price"));
					
					clist.add(cdto);
				}
			}
			return clist;
			
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return clist;
	}
	
	
	public ArrayList<Integer> insertBuy(ArrayList<cartDTO> clist) {
		String sql = "insert into buy(no, id, productnum, name, amount, price)"
				+ "values(buy_no.nextval, ?, ?, ?, ?, ?)";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		ArrayList<Integer> returnList = new ArrayList<>();
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			
			for(int i = 0 ; i < clist.size() ; i++) {
				int check = 0;
				pstmt.setString(1, clist.get(i).getId());
				pstmt.setInt(2, clist.get(i).getNum());
				pstmt.setString(3, clist.get(i).getName());
				pstmt.setInt(4, clist.get(i).getAmount());
				pstmt.setInt(5, clist.get(i).getPrice());
				
				System.out.println(i + " > " + clist.get(i).getNum());
				System.out.println(i + " > " + clist.get(i).getId());
				System.out.println(i + " > " + clist.get(i).getName());
				System.out.println(i + " > " + clist.get(i).getAmount());
				System.out.println(i + " > " + clist.get(i).getPrice());
				
				check = pstmt.executeUpdate();
				returnList.add(check);
			}
			return returnList;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return returnList;
	}
	
	
	public ArrayList<Integer> deleteBuyCart(ArrayList<cartDTO> clist) {
		String sql = "delete cart where id = ? and num = ?";
		Connection conn = null;
		PreparedStatement pstmt = null;
		
		ArrayList<Integer> dList = new ArrayList<>();
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(sql);
			for(int i = 0 ; i < clist.size() ; i++) {
				int check = 0 ;
				pstmt.setString(1, clist.get(i).getId());
				pstmt.setInt(2, clist.get(i).getNum());
				check = pstmt.executeUpdate();
				dList.add(check);
			}
			return dList;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dList;
		
	}
	
	
	
	
	
	
}

