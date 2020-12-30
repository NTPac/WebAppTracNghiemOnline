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
public class AddQuestionAction {
    
    private String content , level , option1 ,option2, option3, option4 , answer ;
    
    public AddQuestionAction() {
    }
    
    public String execute() throws Exception {
        ConnectDBClass conn = new ConnectDBClass();
        ResultSet rs = conn.chonDuLieuTuDTB("SELECT COUNT(*) FROM `nganhangcauhoi`");
        String id = "";
        if(rs.next())
            id = "Q"+ rs.getString(1);
        
        String sql;
        sql = "INSERT INTO `nganhangcauhoi`(`ID`, `Level`, `Noidung`, `TraLoi1`, `TraLoi2`, `TraLoi3`, `TraLoi4`, `DapAn`) VALUES ('"+id+"','"+level+"','"+content+"','"+option1+"','"+option2+"','"+option3+"','"+option4+"','"+answer+"')";
        
        if(conn.thucThiCauLenhSQL(sql))
            return "T";
        
        return "F";
    }
    
}
