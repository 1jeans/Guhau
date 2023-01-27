package com.test.guhau.comm;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;

import com.test.guhau.DBUtil;




public class CommDAO {

   private Connection conn;
   private Statement stat;
   private PreparedStatement pstat;
   private ResultSet rs;
   
   public CommDAO() {
      conn = DBUtil.open();
   }

   public int add(CommDTO dto) {
      
      try {
         
         
         String sql =  "insert into commuity (comm_seq, comm_cate, comm_title, comm_txt, comm_date, m_id, comm_count, comm_bancount, duty_seq, comm_black)"
               + "values (seqcommuity.nextval, ?, ?, ?, sysdate, ?, default, default, ?, default)";
         	
         pstat = conn.prepareStatement(sql);
         
         
         pstat.setString(1, dto.getComm_cate());
         pstat.setString(2, dto.getComm_title());
         pstat.setString(3, dto.getComm_txt());
         pstat.setString(4, dto.getM_id());
         pstat.setString(5, dto.getDuty_seq());
         
         System.out.println(dto);
         
         
         return pstat.executeUpdate();
         
      } catch (Exception e) {
         System.out.println("CommDAO.add");
         e.printStackTrace();
      }
      
      return 0;
   }
   
   

   public ArrayList<CommDTO> list(HashMap<String, String> map) {
      try {
         
         String sql = "";
         String where = "";
         
         //검색하기
         if (map.get("isSearch").equals("y")) {
            
            where = String.format("where %s like '%%' || '%s' || '%%'"
                                    , map.get("column")
                                    , map.get("word"));
            
         }
         
         
          sql = String.format("select * from vwcommuity %s", where);
          
          //System.out.println(sql);
         
         pstat = conn.prepareStatement(sql);
         
         rs = pstat.executeQuery();
         
         ArrayList<CommDTO> list = new ArrayList<CommDTO>();
         
         while (rs.next()) {
            
            CommDTO dto = new CommDTO();
            
            dto.setComm_seq(rs.getString("comm_seq"));
            dto.setComm_cate(rs.getString("comm_cate"));
            dto.setComm_title(rs.getString("comm_title"));
            dto.setComm_txt(rs.getString("comm_txt"));
            dto.setComm_date(rs.getString("comm_date"));
            dto.setComm_count(rs.getString("comm_count"));
            dto.setM_name(rs.getString("m_name"));
            dto.setDuty_name(rs.getString("duty_name"));
            
            list.add(dto);
         }
         
         return list;
         
         
      } catch (Exception e) {
         System.out.println("CommDAO.list");
         e.printStackTrace();
      }
      return null;
   }

   public CommDTO get(String comm_seq) {
            
      try {
         
         String sql = "select comm_seq, comm_cate, comm_title, comm_txt, comm_date, comm_count, m_name, commuity.m_id, duty_name\r\n"
               + "      from commuity\r\n"
               + "        inner join member\r\n"
               + "            on commuity.m_id = member.m_id\r\n"
               + "                inner join duty\r\n"
               + "                    on commuity.duty_seq = duty.duty_seq\r\n"
               + "                        where comm_seq = ?";
         
               
         pstat = conn.prepareStatement(sql);
         
         
         pstat.setString(1, comm_seq);
         
         rs = pstat.executeQuery();
         
         if(rs.next()) {
            
            CommDTO dto = new CommDTO();
            
            dto.setM_id(rs.getString("m_id"));
            dto.setComm_seq(rs.getString("comm_seq"));
            dto.setComm_cate(rs.getString("comm_cate"));
            dto.setComm_title(rs.getString("comm_title"));
            dto.setComm_txt(rs.getString("comm_txt"));
            dto.setComm_date(rs.getString("comm_date"));
            dto.setComm_count(rs.getString("comm_count"));
            dto.setM_name(rs.getString("m_name"));
            dto.setDuty_name(rs.getString("duty_name"));
            
            return dto;
            
         }
            
         
      } catch (Exception e) {
         System.out.println("CommDAO.get");
         e.printStackTrace();
      }
      return null;
   }

   //커뮤니티 게시판 조회수 증가
   public void addComm_Count(String comm_seq) {
      
      try {
         
         String sql = "update commuity set comm_count = comm_count + 1 where comm_seq = ?";
         
         pstat = conn.prepareStatement(sql);
                  
         pstat.setString(1, comm_seq);
         
         pstat.executeUpdate(); 
         
         
      } catch (Exception e) {
         System.out.println("CommDAO.addComm_Count");
         e.printStackTrace();
      }
      
   }

   //커뮤니티 게시글 수정하기
   public int edit(CommDTO dto) {
      
      try {
         
         
         String sql =  "update commuity set comm_cate = ?, comm_title = ?, comm_txt = ?, duty_seq = ? where comm_seq = ?";
         
         pstat = conn.prepareStatement(sql);
         
         
         pstat.setString(1, dto.getComm_cate());
         pstat.setString(2, dto.getComm_title());
         pstat.setString(3, dto.getComm_txt());
         pstat.setString(4, dto.getDuty_seq());
         pstat.setString(5, dto.getComm_seq());
         
         
         
         
         return pstat.executeUpdate();
         
      } catch (Exception e) {
         System.out.println("CommDAO.edit");
         e.printStackTrace();
      }
      
      
      return 0;
   }

   //커뮤니티글 삭제하기
   
   public int del(String comm_seq) {
      
      try {
         
         
         String sql =  "delete from commuity where comm_seq = ?";
         
         pstat = conn.prepareStatement(sql);
                                             
         pstat.setString(1, comm_seq);
         
         return pstat.executeUpdate();
                           
         
         
      } catch (Exception e) {
         System.out.println("CommDAO.del");
         e.printStackTrace();
      }
      
      return 0;
   }
   
   

   
   
}
   

















