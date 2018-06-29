/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Categorys;
import com.model.Trafficsigns;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import com.utils.DBUtils;
import java.sql.Statement;
import java.util.Locale;
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
    
    public ArrayList<Trafficsigns> getlistTrafficsign(){
      ArrayList<Trafficsigns> list= new ArrayList<>();
      String sql= "SELECT * FROM trafficsigns, categories";
      
        try {
            PreparedStatement pre= conn.prepareStatement(sql);
            ResultSet rs= pre.executeQuery();
            while (rs.next()) {
              Trafficsigns  traffic= new Trafficsigns();
                Categorys cate= new Categorys();
              traffic.setTrafficSignID(rs.getInt("TrafficSignID"));
              traffic.setTrafficTitle(rs.getString("TrafficTitle"));
               traffic.setTrafficDetails(rs.getString("TrafficDetail"));
               traffic.setTrafficLink(rs.getString("TrafficLink"));
               cate.setCategoryName(rs.getString("CategoryName"));
              
               list.add(traffic);
            }
        } catch (Exception e) {
           e.printStackTrace();
        }
        
        
        
    return null;
    }
      
}
 