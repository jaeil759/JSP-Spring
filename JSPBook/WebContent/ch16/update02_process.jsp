<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="dbconn.jsp" %>
<%
   request.setCharacterEncoding("utf-8");

   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   String name = request.getParameter("name");
   
   ResultSet rs = null;
   PreparedStatement pstmt = null;
   
   try{
      String sql = "select * from member where mem_id = '"+ id +"'";
      pstmt = conn.prepareStatement(sql);
      rs = pstmt.executeQuery(sql);
      
      if(rs.next()){
         String rId = rs.getString("MEM_ID");
         String rPw = rs.getString("MEM_PW");
         
         if(id.equals(rId) && pw.equals(rPw)){
            sql = "update member set mem_name = ? WHERE MEM_ID = ?";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,name);
            pstmt.setString(2,id);
            pstmt.executeUpdate();
            out.println("member 테이블을 수정했습니다.");
         }else{
            out.println("일치하는 정보가 아닙니다");
         }
      }else{
            out.println("member 테이블에 일치하는 아이디가 없습니다.");
      }
   }catch(SQLException e){
      out.print("sqlexception : " + e.getMessage());
   }finally{
      if(rs != null) rs.close();
      if(pstmt != null) pstmt.close();
      if(conn != null) conn.close();
   }
%>
</body>
</html>