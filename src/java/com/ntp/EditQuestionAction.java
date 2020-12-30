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
public class EditQuestionAction {
    
    private String idQ, content , level , option1 ,option2, option3, option4 , answer ;
    
    public EditQuestionAction() {
    }
    
    public String execute() throws Exception {
        ConnectDBClass conn = new ConnectDBClass();
        String sql;
        sql = "UPDATE `nganhangcauhoi` SET `Level`='"+level+"',`Noidung`='"+content+"',`TraLoi1`='"+option1+"',`TraLoi2`='"+option2+"',`TraLoi3`='"+option3+"',`TraLoi4`='"+option4+"',`DapAn`='"+answer+"' WHERE `ID`='"+idQ+"'";
        
        if(conn.thucThiCauLenhSQL(sql))
            return "T";
        
        return "F";
    }
    
}
