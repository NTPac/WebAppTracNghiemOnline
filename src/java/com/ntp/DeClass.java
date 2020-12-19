/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp;


import java.sql.ResultSet;
/**
 *
 * @author Administrator
 */
public class DeClass {
    private final ConnectDBClass connDB = new ConnectDBClass();

    public DeClass() {
    }
    
    
    @SuppressWarnings("empty-statement")
    public String checkDB(String qs) throws Exception{
        try {
            ResultSet rs = connDB.chonDuLieuTuDTB("SELECT * FROM nganhangcauhoi WHERE ID = '" + qs +"'");
            if(rs.next()){ 
                return rs.getString(8);
                };
            } 
        catch (Exception e) {
        }
        return null;
    }
    
    
}
