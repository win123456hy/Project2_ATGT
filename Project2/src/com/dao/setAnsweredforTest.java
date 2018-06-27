/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Answers;
import com.model.Question;
import com.model.Users;
import com.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class setAnsweredforTest {
    public void Answered(int examid,int quesid,int anwerid){
     String sql = "insert into examdetails(ExamID,QuestionID,AnswerID) values(?,?,?)";
        Connection con = DBUtils.open();
        
        PreparedStatement stm=null;
        
        try {
            con.setAutoCommit(false);
            stm=con.prepareStatement(sql);
            stm.setInt(1, examid);
        stm.setInt(2, quesid);
        stm.setInt(3, anwerid);
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
