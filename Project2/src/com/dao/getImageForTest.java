/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Answers;
import com.model.Images;
import com.model.Question;
import com.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public class getImageForTest {

    public Images getImage(int quesid){
     String sql = "select * from images where QuestionID=?";
        Connection con = DBUtils.open();
        PreparedStatement stm=null;
        ResultSet rs=null;
        Images imga=null;
        try {
            stm = con.prepareStatement(sql);
            stm.setInt(1, quesid);
            rs = stm.executeQuery();
            if(rs.next()){
              int id=rs.getInt("ImageID");
               String imageLink=rs.getString("ImageLink");
              
               Question question=new Question();
               question.setQuestionID(quesid);
               imga=new Images(id,imageLink,question);
                }
           
             return imga;
        } catch (SQLException ex) {
            return null;
        }finally{
             
            DBUtils.closeAll(con, stm, rs);
          
        }
    }
}
