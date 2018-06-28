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
 * @author Duc Va
 */
public class getCategoryForAdmin {
    ArrayList<Categorys> list=new ArrayList<>();
        

    public ArrayList<Categorys> CategoryTest(){
         String sql = "select * from categories";
        Connection con = DBUtils.open();
        PreparedStatement stm=null;
        ResultSet rs=null;
        try {
            stm = con.prepareStatement(sql);
            rs = stm.executeQuery();
            while(rs.next()){
               
                   int id= rs.getInt("CategoryID");                   
                   String name= rs.getString("CategoryName");
                    String dess= rs.getString("CategoryDescription");
                 
                   list.add(new Categorys(id,name,dess));
                }
              
                
        
   
             return list;
        } catch (SQLException ex) {
            return null;
        }finally{
           
            DBUtils.closeAll(con, stm, rs);
          
        }
    }
}
