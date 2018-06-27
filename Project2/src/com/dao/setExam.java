/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class setExam {
     public void createExam(int userid){
     String sql = "insert into exams(CreatedTime,UserID,Score) values(?,?,?)";
        Connection con = DBUtils.open();
        
        PreparedStatement stm=null;
        
        try {
            con.setAutoCommit(false);
            stm=con.prepareStatement(sql);
	Date date = new Date();
        java.sql.Date sqlStartDate = new java.sql.Date(date.getTime());
            stm.setDate(1, sqlStartDate);
            stm.setInt(2, userid);
        stm.setInt(3, 0);
        
        stm.executeUpdate();
        
        con.commit();
        } catch (SQLException ex) {
         try {
             con.rollback();
             ex.printStackTrace();
         } catch (SQLException ex1) {
             Logger.getLogger(setAnsweredforTest.class.getName()).log(Level.SEVERE, null, ex1);
         }
        }finally{
             
            DBUtils.closeTwo(con, stm);
          
        }
    }
}
