package com.test.guhau.admin;

import com.test.guhau.DBUtil;
import com.test.guhau.member.MemberDTO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class AdminDAO {
    private Connection conn;
    private Statement stat;
    private PreparedStatement pstat;
    private ResultSet rs;

    public AdminDAO() {
        conn = DBUtil.open();
    }

    public AdminDTO getMember(String auth) {

        return null;
    }

    public AdminDTO login(AdminDTO dto) {
        try {

            String sql = "select * from admin where a_id = ? and a_pw = ?";

            pstat = conn.prepareStatement(sql);

            pstat.setString(1, dto.getA_id());
            pstat.setString(2, dto.getA_pw());

            rs = pstat.executeQuery();

            if (rs.next()) {

                MemberDTO result = new MemberDTO();

                dto.setA_id(rs.getString("a_id"));
                dto.setA_pw(rs.getString("a_pw"));


                return dto;


            }

        } catch (Exception e) {
            System.out.println("AdminDAO.login");
            e.printStackTrace();
        }

        return null;
    }

    public int get() {

        try {

            String sql = "select count(*) as cnt from MEMBER where M_GENDER = 'm'";

            stat = conn.createStatement();

            rs = stat.executeQuery(sql);

            if (rs.next()) {
                return rs.getInt("cnt");
            }
        } catch (Exception e) {
            System.out.println("AdminDTO.get");
            e.printStackTrace();
        }

        return 0;
    }

    public ArrayList<AdminDTO> clist() {
        try{
            String sql = "select creview_seq,creview_txt,creview_title,c_id,creview_star,creview_date from creview";
            pstat = conn.prepareStatement(sql);
            rs = pstat.executeQuery();

            ArrayList<AdminDTO> list = new ArrayList<AdminDTO>();

            while (rs.next()) {

                AdminDTO dto = new AdminDTO();

                dto.setCreview_seq(rs.getString("creview_seq"));

                dto.setCreview_txt(rs.getString("creview_txt"));
                dto.setCreview_title(rs.getString("creview_title"));
//                dto.setM_id(rs.getString("m_id"));
                dto.setC_id(rs.getString("c_id"));
                dto.setCreview_star(rs.getString("creview_star"));
                dto.setCreview_date(rs.getString("creview_date"));
//                dto.setCarrer_seq(rs.getString("carrer_seq"));

                list.add(dto);

            }

            return list;

        }catch (Exception e){
            System.out.println("AdminDAO.clist");
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<AdminDTO> mlist() {
        try{
            String sql = "select ireview_seq, ireview_txt, ireview_title, m_id, ireview_date from ireview";
            pstat = conn.prepareStatement(sql);
            rs = pstat.executeQuery();

            ArrayList<AdminDTO> list = new ArrayList<AdminDTO>();

            while (rs.next()) {

                AdminDTO dto = new AdminDTO();

                dto.setIreview_seq(rs.getString("ireview_seq"));
                dto.setIreview_txt(rs.getString("ireview_txt"));
                dto.setIreview_title(rs.getString("ireview_title"));
                dto.setM_id(rs.getString("m_id"));
                dto.setIreview_date(rs.getString("ireview_date"));

                list.add(dto);

            }

            return list;

        }catch (Exception e){
            System.out.println("AdminDAO.mlist");
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<AdminDTO> adminclass() {
        try{
            String sql = "select class_pic, class_name, class_content from class";
            pstat = conn.prepareStatement(sql);
            rs = pstat.executeQuery();

            ArrayList<AdminDTO> list = new ArrayList<AdminDTO>();

            while (rs.next()) {

                AdminDTO dto = new AdminDTO();

                dto.setClass_pic(rs.getString("class_pic"));
                dto.setClass_name(rs.getString("class_name"));
                dto.setClass_content(rs.getString("class_content"));


                list.add(dto);

            }

            return list;
        }catch (Exception e){
            System.out.println("AdminDAO.adminclass");
            e.printStackTrace();
        }
        return null;
    }

    public ArrayList<AdminDTO> jlist() {
        try{
            String sql = "select\n" +
                    "    E.EMP_TITLE,\n" +
                    "    E.EMP_txt,\n" +
                    "    cp.CDATA_NAME,\n" +
                    "    E.EMP_CAREER,\n" +
                    "    E.EMP_DATE ,\n" +
                    "    E.EMP_PAY\n" +
                    "from\n" +
                    "    COMPANY cp\n" +
                    "        inner join CMEMBER cm\n" +
                    "            on cp.CDATA_SEQ = cm.CDATA_SEQ\n" +
                    "                inner join EMPLOYMENT E on cm.C_ID = E.C_ID";

            pstat = conn.prepareStatement(sql);
            rs = pstat.executeQuery();

            ArrayList<AdminDTO> list = new ArrayList<AdminDTO>();

            while (rs.next()) {

                AdminDTO dto = new AdminDTO();

                dto.setEmp_title(rs.getString("emp_title"));
                dto.setEmp_txt(rs.getString("emp_txt"));
                dto.setCdata_name(rs.getString("cdata_name"));
                dto.setEmp_career(rs.getString("emp_career"));
                dto.setEmp_date(rs.getString("emp_date"));
                dto.setEmp_pay(rs.getString("emp_pay"));

                list.add(dto);

            }

            return list;
        }catch (Exception e){
            System.out.println("AdminDAO.jlist");
            e.printStackTrace();
        }
        return null;
    }
}
