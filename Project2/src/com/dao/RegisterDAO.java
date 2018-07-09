/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Answers;
import com.model.Question;
import com.utils.DBUtils;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;


public class RegisterDAO {
    public boolean checktrung(String username){
     String sql = "select * from users where username=?";
        Connection con = DBUtils.open();
        PreparedStatement stm=null;
        ResultSet rs=null;
        try {
            stm = con.prepareStatement(sql);
            stm.setString(1, username);
            rs = stm.executeQuery();
            if(rs.next()){
            return true;
                }
             return false;
        } catch (SQLException ex) {
            return false;
        }finally{
             
            DBUtils.closeAll(con, stm, rs);
          
        }
    }
    public boolean regis(String userName, String pass,int gender,String email) {
        if(checktrung(userName)==true)
            return false;
        else{
        String sql = "INSERT INTO users(UserName,Gender,Email,Password,CreatedTime) VALUES (?,?,?,?,?)";
        Connection con = DBUtils.open();
        PreparedStatement stm=null;
        MessageDigest digest;
        try {
            con.setAutoCommit(false);
            String encodedString = Base64.getEncoder().encodeToString(pass.getBytes());
            Date date = new Date();
        java.sql.Date sqlStartDate = new java.sql.Date(date.getTime());
            stm = con.prepareStatement(sql);
            stm.setString(1, userName);
            stm.setInt(2, gender);
            stm.setString(3, email);
            stm.setString(4, encodedString);
            stm.setDate(5, sqlStartDate);
            
           stm.executeUpdate();
            con.commit();
          if(stm.executeUpdate()>0)
              return true;
          
           
            
            
        } catch (Exception ex) {
            try {
                con.rollback();
                return false;
            } catch (SQLException ex1) {
                Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }finally{
            DBUtils.closeTwo(con, stm);
        }
                    }
          return false; 
    }
}