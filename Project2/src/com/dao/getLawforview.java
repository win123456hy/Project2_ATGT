/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.dao;

import com.model.Answers;
import com.model.Categorys;
import com.model.Law;
import com.model.Question;
import com.utils.DBUtils;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;


public class getLawforview {
     private ArrayList<Law> arrayList=new ArrayList<>();

    public ArrayList<Law> getlaw(int categoryid){
     String sql = "select * from laws where categoryid=?";
        Connection con = DBUtils.open();
        PreparedStatement stm=null;
        ResultSet rs=null;
        try {
            stm = con.prepareStatement(sql);
            stm.setInt(1, categoryid);
            rs = stm.executeQuery();
            while(rs.next()){
             int id=rs.getInt("LawID");
             String title=rs.getString("LawTitle");
             String detail=rs.getString("LawDetail");
             Date rele=rs.getDate("LawTimeRelease");
             Categorys c=new Categorys();
             c.setCategoryID(categoryid);
             arrayList.add(new Law(id, title, detail, rele,c));
                }
            
            
             return arrayList;
        } catch (SQLException ex) {
            return null;
        }finally{
             
            DBUtils.closeAll(con, stm, rs);
          
        }
    }
}