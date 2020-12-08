/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp;


import com.ntp.ConnectDBClass;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
/**
 *
 * @author Administrator
 */
public class DeClass {
    private ConnectDBClass connDB = new ConnectDBClass();

    public DeClass() {
    }
    
    
    public int checkDB(String qs, String op) throws Exception{
        try {
            ResultSet rs = connDB.chonDuLieuTuDTB("SELECT * FROM nganhangcauhoi WHERE ID = '" + qs +"' and dapan = '" + op+"'");
            if(rs.next()){ 
                return 1;
                };
            } 
        catch (Exception e) {
        }
        return 0;
    }
    
    
}
