/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.model;

/**
 *
 * @author Duc Va
 */
public class Trafficsigns {
    private String TrafficTitle ;
    
    private String TrafficDetails;
    
    private String TrafficLink;
    
    private String Category;

    public Trafficsigns(String TrafficTitle, String TrafficDetails, String TrafficLink, String Category) {
        this.TrafficTitle = TrafficTitle;
        this.TrafficDetails = TrafficDetails;
        this.TrafficLink = TrafficLink;
        this.Category = Category;
    }

    public Trafficsigns() {
      
    }

    public String getTrafficTitle() {
        return TrafficTitle;
    }

    public void setTrafficTitle(String TrafficTitle) {
        this.TrafficTitle = TrafficTitle;
    }

    public String getTrafficDetails() {
        return TrafficDetails;
    }

    public void setTrafficDetails(String TrafficDetails) {
        this.TrafficDetails = TrafficDetails;
    }

    public String getTrafficLink() {
        return TrafficLink;
    }

    public void setTrafficLink(String TrafficLink) {
        this.TrafficLink = TrafficLink;
    }

    public String getCategory() {
        return Category;
    }

    public void setCategory(String Category) {
        this.Category = Category;
    }
    


    
    
}
