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
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author duy.nn
 */
public class LoginDAO {

    public String login(String userName, String pass) {
        String sql = "select nv.ten_nv as ten from admin a inner join nhan_vien  nv on a.admin_id = nv.nhanvien_id where a.user_name = ? and a.pass_word = ?";
        Connection con = DBUtils.open();
        PreparedStatement stm=null;
        ResultSet rs=null;
        try {
            stm = con.prepareStatement(sql);
            stm.setString(1, userName);
            stm.setString(2, pass);
            rs = stm.executeQuery();
            if(rs.next()){
                return rs.getString("ten");
            }
        } catch (SQLException ex) {
            return null;
        }finally{
            DBUtils.closeAll(con, stm, rs);
        }
        return null;
    }
}
