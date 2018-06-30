/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Answers;
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
}
