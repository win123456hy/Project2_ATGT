/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Trafficsigns;
import com.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Duc Va
 */
public class GetTrafficsignsforAdmin {
    private ArrayList<Trafficsigns> listsign= new ArrayList<>();
    public ArrayList<Trafficsigns> getSigns(){
        String sql= "select * from trafficsigns";
        Connection conn= DBUtils.open();
        PreparedStatement pre= null;
        ResultSet rs=null;
        try {
            pre= conn.prepareStatement(sql);
            rs=pre.executeQuery();
            while (rs.next()) {
                int TrafficSignID= rs.getInt("TrafficSignID");
                String  TrafficTitle= rs.getString("TrafficTitle");
                String  TrafficLink= rs.getString("TrafficLink");
                String  TrafficDetails= rs.getString("TrafficDetail");
                int Category= rs.getInt("CategoryID");
                
                listsign.add(new Trafficsigns(TrafficSignID, TrafficTitle, TrafficDetails, TrafficLink, Category));
            }
        return listsign;
        } catch (SQLException ex) {
            ex.printStackTrace();
        }finally{
             
            DBUtils.closeAll(conn, pre,rs);
          
        }
     return null;
    }
    
    
    
}
