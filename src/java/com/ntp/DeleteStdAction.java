/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp;

/**
 *
 * @author Administrator
 */
public class DeleteStdAction {
    
    private String idStd;

    public String getIdStd() {
        return idStd;
    }

    public void setIdStd(String idStd) {
        this.idStd = idStd;
    }
    
    
    public DeleteStdAction() {
    }
    
    public String execute() throws Exception {
        ConnectDBClass conn = new ConnectDBClass();
        
        String sql;
        sql = "DELETE FROM `account` WHERE `IDUser` = '"+idStd+"'";
        
        if(conn.thucThiCauLenhSQL(sql))
            return "T";
        
        return "F";
    }
    
}
