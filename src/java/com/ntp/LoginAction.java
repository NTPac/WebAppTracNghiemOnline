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
public class LoginAction {
    private final ConnectDBClass connDB = new ConnectDBClass();
    private String un;
    private String pw;
    private String useridString = null;

    public String getUseridString() {
        return useridString;
    }

    public void setUseridString(String useridString) {
        this.useridString = useridString;
    }
    public String getUn() {
        return un;
    }

    public void setUn(String un) {
        this.un = un;
    }

    public String getPw() {
        return pw;
    }

    public void setPw(String pw) {
        this.pw = pw;
    }
    
    public LoginAction() {
    }
    
    public String execute() throws Exception {
        String sql = "SELECT `IDUser` FROM `account` WHERE `IDUser` = '"+un+"' and `passWord` = '"+pw+"'";
        ResultSet rs = connDB.chonDuLieuTuDTB(sql);
        if(rs.next()){
            useridString = un;
            return "T";
        }
        useridString = "Dang nhap that bai";
        return "F";
    }
    
}
