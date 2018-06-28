/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import Model.Trafficsigns;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.utils.DBUtils;
import java.sql.Statement;
/**
 *
 * @author Duc Va
 */
public class BienbaoDAO {
   
    private static Connection conn =DBUtils.open();
   
    
    public boolean Thembienbao(Trafficsigns traffic){
        String sql= "insert into trafficsigns(TrafficLink,TrafficTitle,TrafficDetalt) values (?,?,?)";
        try {
       
            PreparedStatement pre= conn.prepareStatement(  sql);
       pre.setString(1, traffic.getTrafficTitle() );
       
      
        } catch (Exception e) {
        }
        return false;
    }
    
}
 