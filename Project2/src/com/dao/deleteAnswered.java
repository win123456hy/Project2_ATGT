/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class deleteAnswered {
    public void delete(int examid){
     String sql = "delete  from examdetails where examid=?";
        Connection con = DBUtils.open();
        PreparedStatement stm=null;
        try {
            stm = con.prepareStatement(sql);
            stm.setInt(1, examid);
            stm.executeUpdate();
        } catch (SQLException ex) {
           ex.printStackTrace();
        }finally{
             
            DBUtils.closeTwo(con, stm);
          
        }
    }
}
