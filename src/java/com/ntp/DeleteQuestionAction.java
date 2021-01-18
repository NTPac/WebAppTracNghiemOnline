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
public class DeleteQuestionAction {
    
    private String idQ;
    private String trangthaiq=null;

    public String getIdQ() {
        return idQ;
    }

    public void setIdQ(String idQ) {
        this.idQ = idQ;
    }

    public String getTrangthaiq() {
        return trangthaiq;
    }

    public void setTrangthaiq(String trangthaiq) {
        this.trangthaiq = trangthaiq;
    }
    
    
    public DeleteQuestionAction() {
    }
    
    public String execute() throws Exception {
        ConnectDBClass conn = new ConnectDBClass();
        String sql;
        sql = "DELETE FROM `nganhangcauhoi` WHERE `ID` = '"+idQ+"'";
        
        if(conn.thucThiCauLenhSQL(sql)){
            trangthaiq="Deleted successfully question "+idQ;
            return "T";
        }
        trangthaiq="Deleted failed question "+idQ;
        return "F";
    }
    
}
