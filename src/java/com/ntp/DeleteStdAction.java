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
    private String trangthais;
    public String getIdStd() {
        return idStd;
    }

    public void setIdStd(String idStd) {
        this.idStd = idStd;
    }

    public String getTrangthais() {
        return trangthais;
    }

    public void setTrangthais(String trangthais) {
        this.trangthais = trangthais;
    }
    
    
    public DeleteStdAction() {
    }
    
    public String execute() throws Exception {
        ConnectDBClass conn = new ConnectDBClass();
        
        String sql;
        sql = "DELETE FROM `account` WHERE `IDUser` = '"+idStd+"'";
        
        if(conn.thucThiCauLenhSQL(sql)){
            trangthais="Deleted successfully user "+idStd;
            return "T";
        }
        trangthais="Deleted failed user "+idStd;
        return "F";
    }
    
}




















































