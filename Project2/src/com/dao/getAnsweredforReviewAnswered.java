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
public class getAnsweredforReviewAnswered {
    private ArrayList<Question> listques=new ArrayList<>();
    public ArrayList<Question> getQues(int examid){
      String sql = "select QuestionID from examdetails where ExamID=?";
        Connection con = DBUtils.open();
        PreparedStatement stm=null,stm1=null;
        ResultSet rs=null,rs1=null;
        try {
            stm = con.prepareStatement(sql);
            stm.setInt(1, examid);
            rs = stm.executeQuery();
            while(rs.next()){
              stm1=con.prepareStatement("select * from questions where QuestionID=?");
              stm1.setInt(1, rs.getInt("QuestionID"));
              rs1=stm1.executeQuery();
              while(rs1.next()){
                 int id= rs1.getInt("QuestionID");
                 String quesdetail= rs1.getString("QuestionDetail");
                 int caid= rs1.getInt("CategoryID");
                 Categorys categorys=new Categorys();
                 categorys.setCategoryID(caid);
                 listques.add(new Question(id,quesdetail,categorys));
              }
                }
            return listques;
        } catch (SQLException ex) {
            return null;
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
    }
    
    private ArrayList<Answers> listposa=new ArrayList<>();
    public ArrayList<Answers> getPos(int examid){
      String sql = "select AnswerID from examdetails where ExamID=?";
        Connection con = DBUtils.open();
        PreparedStatement stm=null,stm1=null;
        ResultSet rs=null,rs1=null;
        try {
            stm = con.prepareStatement(sql);
            stm.setInt(1, examid);
            rs = stm.executeQuery();
            while(rs.next()){
              stm1=con.prepareStatement("select * from answers where AnswerID=?");
              stm1.setInt(1, rs.getInt("AnswerID"));
              rs1=stm1.executeQuery();
              while(rs1.next()){
                 int id= rs1.getInt("AnswerID");
                 String posdetail= rs1.getString("AnswerDetail");
                 int iscorrect= rs1.getInt("IsCorrect");
                 int quesidd= rs1.getInt("QuestionID");
                 
                 Question question=new Question();
                 question.setQuestionID(quesidd);
                 listposa.add(new Answers(id,posdetail,iscorrect,question));
              }
                }
            return listposa;
        } catch (SQLException ex) {
            return null;
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
    }
    
     private  Answers answer;
    public Answers getPoscorrect(int quesid){
      String sql = "select * from answers where QuestionID=? and IsCorrect=1";
        Connection con = DBUtils.open();
        PreparedStatement stm=null;
        ResultSet rs=null;
        try {
            stm = con.prepareStatement(sql);
            stm.setInt(1, quesid);
            rs = stm.executeQuery();
            while(rs.next()){
             int id =rs.getInt("AnswerID");
             String asd =rs.getString("AnswerDetail");
             int check =rs.getInt("IsCorrect");
             int quessid =rs.getInt("QuestionID");
             Question q=new Question();
             q.setQuestionID(quessid);
            answer=new Answers(id, asd, check, q);
              }
                
          return  answer;
        } catch (SQLException ex) {
            return null;
        }finally{
          
            DBUtils.closeAll(con, stm, rs);
          
        }
    }
    
}
