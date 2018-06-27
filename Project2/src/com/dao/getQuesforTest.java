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
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Random;

/**
 *
 * @author Admin
 */
public class getQuesforTest {
    ArrayList<Question> list=new ArrayList<>();
        ArrayList<Question> listfull=new ArrayList<>();

    public ArrayList<Question> CategoryTest(int category){
         String sql = "select * from questions where CategoryID=?";
        Connection con = DBUtils.open();
        PreparedStatement stm=null;
        ResultSet rs=null;
        try {
            stm = con.prepareStatement(sql);
            stm.setInt(1, category);
            rs = stm.executeQuery();
            while(rs.next()){
               
                   int quesid= rs.getInt("QuestionID");                   
                   String quesdetail= rs.getString("QuestionDetail");
                   Categorys a=new Categorys();
                   a.setCategoryID(rs.getInt("CategoryID"));
                 
                   Question q=new Question(quesid,quesdetail,a);
                   listfull.add(q);
                }
               Random rd = new Random();
            HashSet<Integer> set=new HashSet<>();
   
            while(set.size()<20){
                int random=rd.nextInt(listfull.size());
                set.add(random);
                
            }
            int a[]=new int[20];
            int i=0;
         for (Integer integer : set) {
             a[i]=integer;
             i++;
        }
            for (int j = 0; j < a.length; j++) {
                list.add(listfull.get(a[j]));
            }
   
             return list;
        } catch (SQLException ex) {
            return null;
        }finally{
           
            DBUtils.closeAll(con, stm, rs);
          
        }
    }
}
