/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Base64;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author duy.nn
 */
public class LoginDAO {

    public boolean login(String userName,String pass) {
        String sql = "select * from users where Username=? ";
        Connection con = DBUtils.open();
        PreparedStatement stm=null;
        ResultSet rs=null;
        try {
           
            stm = con.prepareStatement(sql);
            stm.setString(1, userName);
            rs = stm.executeQuery();
            if(rs.next()){
                String passs=rs.getString("Password");
                 byte[] decodedBytes = Base64.getDecoder().decode(passs);
String decodedString = new String(decodedBytes);
if(decodedString.compareTo(pass)==0)
    return true;
else
    return false;
            }
        } catch (SQLException ex) {
            return false;
        }finally{
            DBUtils.closeAll(con, stm, rs);
        }
        return false;
    }
}
