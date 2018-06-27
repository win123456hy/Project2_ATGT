/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Categorys;
import com.model.Answers;
import com.model.Question;
import com.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Random;

/**
 *
 * @author Admin
 */
public class getAnswerforTest {
    private ArrayList<Answers> arrayList=new ArrayList<>();

    public ArrayList<Answers> getanswer(int quesid){
     String sql = "select * from answers where QuestionID=?";
        Connection con = DBUtils.open();
        PreparedStatement stm=null;
        ResultSet rs=null;
        try {
            stm = con.prepareStatement(sql);
            stm.setInt(1, quesid);
            rs = stm.executeQuery();
            while(rs.next()){
              int posid=rs.getInt("AnswerID");
               String answerdt=rs.getString("AnswerDetail");
               int check=rs.getInt("IsCorrect");
               Question question=new Question();
               question.setQuestionID(quesid);
               Answers possibleAnswer=new Answers(posid,answerdt,check,question);
               arrayList.add(possibleAnswer);
                }
            
            
             return arrayList;
        } catch (SQLException ex) {
            return null;
        }finally{
             
            DBUtils.closeAll(con, stm, rs);
          
        }
    }
}
