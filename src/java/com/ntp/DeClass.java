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
    public boolean checkDB(String qs, String op) throws Exception{
        try {
            String sql = "SELECT * FROM nganhangcauhoi WHERE ID = '"+ qs +"' and '"+op+"'";
            ResultSet rs = connDB.chonDuLieuTuDTB(sql);
            if(rs.next()){ 
                return true;
                };
            } 
        catch (Exception e) {
        }
        return false;
    }
    
    
}
