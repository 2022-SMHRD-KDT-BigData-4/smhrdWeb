package com.smart.paging;

public class BoardDAO {
	DBCP dbcp = new DBCP();
	  Connection conn = null;
	  PreparedStatement pstmt = null;
	  Statement stmt = null;
	  ResultSet rs = null;
	  String sql = null;
	   
	  public void closeDB() {
	    try {
	      if(rs != null) rs.close();
	      if(stmt != null) stmt.close();
	      if(pstmt != null) pstmt.close();
	      if(conn != null) conn.close();
	    } catch (SQLException e) {
	      e.printStackTrace();
	    }
	  }
	   
	  public ArrayList<boarddto> getList(int startRow, int endRow) {
	 
	    ArrayList<boarddto> list = new ArrayList<boarddto>();
	     
	    try {
	      conn = dbcp.getConnection();
	       
	      sql = "select *, (select u_name from user where idx = writer_fk) writer, (select idx from answer where idx = answer_fk) answer from board order by idx desc limit "+startRow+", "+endRow;
	       
	      stmt = conn.createStatement();
	      rs = stmt.executeQuery(sql);
	       
	      while(rs.next()) {
	        int idx = rs.getInt("idx");
	        String title = rs.getString("title");
	        int count = rs.getInt("count");
	        String writer = rs.getString("writer");
	        String answer = rs.getString("answer");
	        String enroll = rs.getString("enroll");
	         
	        BoardDTO dto = new BoardDTO();
	        dto .setIdx(idx);
	        dto .setTitle(title);
	        dto .setCount(count);
	        dto .setWriter(writer);
	        dto .setAnswer(answer);
	        dto .setEnroll(enroll);
	        list.add(dto);
	      }
	       
	    } catch (Exception e){
	      e.printStackTrace();
	    } finally {
	      closeDB();
	    }
	    return list;
	  }
	   
	  public int getTotalCount(){
	    int total = 0;
	     
	    try {
	      conn = dbcp.getConnection();
	       
	      sql = "select count(*) from board";
	      pstmt = conn.prepareStatement(sql);
	       
	      rs = pstmt.executeQuery();
	      if(rs.next()){
	        total = rs.getInt(1);
	      }
	    } catch (Exception e){
	      e.printStackTrace();
	    } finally {
	      closeDB();
	    }
	    return total;
	  }

}
