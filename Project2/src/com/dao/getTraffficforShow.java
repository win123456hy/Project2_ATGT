/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Answers;
import com.model.Categorys;
import com.model.Images;
import com.model.Question;
import com.model.Trafficsigns;
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
public class getTraffficforShow {
     private ArrayList<Trafficsigns> arrayList=new ArrayList<>();

    public ArrayList<Trafficsigns> gettraffic(int categoryid){
     String sql = "select * from trafficsigns where CategoryID=?";
        Connection con = DBUtils.open();
        PreparedStatement stm=null;
        ResultSet rs=null;
        try {
            stm = con.prepareStatement(sql);
            stm.setInt(1, categoryid);
            rs = stm.executeQuery();
            while(rs.next()){
              int id=rs.getInt("TrafficSignID");
               String link=rs.getString("TrafficLink");
               String title=rs.getString("TrafficTitle");
              String trafficdetail=rs.getString("TrafficDetail");
              Categorys a=new Categorys(categoryid,null, null);
               Trafficsigns tra=new Trafficsigns(id, title, trafficdetail, link,a);
               arrayList.add(tra);
                }
            
            
             return arrayList;
        } catch (SQLException ex) {
            return null;
        }finally{
             
            DBUtils.closeAll(con, stm, rs);
          
        }
    }
}
