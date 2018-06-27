/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Categorys;
import com.model.Question;
import com.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashSet;
import java.util.Random;

/**
 *
 * @author Admin
 */
public class CalcuTest {
    public int Score(int examid){
      String sql = "select * from examdetails where ExamID=?";
        Connection con = DBUtils.open();
        PreparedStatement stm=null,stm1=null;
        ResultSet rs=null,rs1=null;
        int score=0;
        try {
            stm = con.prepareStatement(sql);
            stm.setInt(1, examid);
            rs = stm.executeQuery();
            while(rs.next()){
                stm1=con.prepareStatement("select *from answers where AnswerID=?");
                stm1.setInt(1, rs.getInt("AnswerID"));
                rs1=stm1.executeQuery();
                while(rs1.next()){
                if(rs1.getInt("IsCorrect")==1)
                    score++;
                }
                }
             return score;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }finally{
           if (rs1 != null) {
            try {
                rs1.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        if (stm1 != null) {
            try {
                stm1.close();
            } catch (SQLException ex) {
              ex.printStackTrace();
            }
        }
            DBUtils.closeAll(con, stm, rs);
          
        }
        return 0;
    }
}
