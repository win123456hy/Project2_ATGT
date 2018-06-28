/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.utils.DBUtils;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class RegisterDAO {
    public String regis(String userName, String pass,int gender,String email) {
        
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
        } catch (Exception ex) {
            try {
                con.rollback();
                return null;
            } catch (SQLException ex1) {
                Logger.getLogger(RegisterDAO.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }finally{
            DBUtils.closeTwo(con, stm);
        }
        return null;
    }
}
