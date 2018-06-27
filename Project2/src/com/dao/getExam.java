/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Exams;
import com.model.Users;
import com.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class getExam {
     public Exams getExamx(int userid){
     String sql = "SELECT * FROM exams where UserID=? ORDER BY ExamID DESC LIMIT 1 ";
        Connection con = DBUtils.open();
        Exams exams=null;
        PreparedStatement stm=null;
        ResultSet rs=null;
        try {
            stm=con.prepareStatement(sql);
            stm.setInt(1,userid);
        rs=stm.executeQuery();
        while(rs.next()){
         int id=rs.getInt("ExamID");
         Date date=rs.getDate("CreatedTime");
         int score=rs.getInt("Score");
        exams= new Exams(id,date,new Users(userid,"",0,"","",null),score);
        }
        return exams;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }finally{
             
            DBUtils.closeAll(con, stm,rs);
          
        }
         return null;
    }
}
