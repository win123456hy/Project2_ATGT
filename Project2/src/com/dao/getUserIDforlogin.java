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
import java.util.ArrayList;
import java.util.Date;

/**
 *
 * @author Admin
 */
public class getUserIDforlogin {
    
    public int getUserID(String username){
     String sql = "select * from users where UserName=?";
        Connection con = DBUtils.open();
        PreparedStatement stm=null;
        ResultSet rs=null;
        try {
            stm = con.prepareStatement(sql);
            stm.setString(1, username);
            rs = stm.executeQuery();
            if(rs.next()){
              int id=rs.getInt("UserID");
              return id;
                }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }finally{
             
            DBUtils.closeAll(con, stm, rs);
          
        }
        return 0;
    }
    public String getusername(int  id){
     String sql = "select * from users where userid=?";
        Connection con = DBUtils.open();
        PreparedStatement stm=null;
        ResultSet rs=null;
        try {
            stm = con.prepareStatement(sql);
            stm.setInt(1, id);
            rs = stm.executeQuery();
            if(rs.next()){
              String userna=rs.getString("UserName");
              return userna;
                }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }finally{
             
            DBUtils.closeAll(con, stm, rs);
          
        }
        return null;
    }
     public Users get1usser(int  id){
     String sql = "select * from users where userid=?";
        Connection con = DBUtils.open();
        PreparedStatement stm=null;
        ResultSet rs=null;
        Users u=null;
        try {
            stm = con.prepareStatement(sql);
            stm.setInt(1, id);
            rs = stm.executeQuery();
            if(rs.next()){
                
              String userna=rs.getString("UserName");
              String pass=rs.getString("Password");
              int gender=rs.getInt("Gender");
              String email=rs.getString("Email");
              Date createtime=rs.getDate("CreatedTime");
              u=new Users(id, userna, gender, email, pass, createtime);
                }
            return u;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }finally{
             
            DBUtils.closeAll(con, stm, rs);
          
        }
        return null;
    }
}
