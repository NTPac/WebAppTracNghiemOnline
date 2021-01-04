/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp;

import java.sql.ResultSet;
import java.util.Random;

/**
 *
 * @author Administrator
 */
public class AddQuestionAction {
    
    private String content , level , option1 ,option2, option3, option4 , answer ;

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getOption1() {
        return option1;
    }

    public void setOption1(String option1) {
        this.option1 = option1;
    }

    public String getOption2() {
        return option2;
    }

    public void setOption2(String option2) {
        this.option2 = option2;
    }

    public String getOption3() {
        return option3;
    }

    public void setOption3(String option3) {
        this.option3 = option3;
    }

    public String getOption4() {
        return option4;
    }

    public void setOption4(String option4) {
        this.option4 = option4;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }
    
    
    
    public AddQuestionAction() {
    }
    
    public String execute() throws Exception {
        ConnectDBClass conn = new ConnectDBClass();
        ResultSet rs ;
        String id = creatID();
        rs=conn.chonDuLieuTuDTB("SELECT `IDUser` FROM `account` WHERE `IDUser`='"+id+"'");
        while(rs.next())
        {
            id = creatID();
            rs=conn.chonDuLieuTuDTB("SELECT `IDUser` FROM `account` WHERE `IDUser`='"+id+"'");
        }
        
        String sql;
        sql = "INSERT INTO `nganhangcauhoi`(`ID`, `Level`, `Noidung`, `TraLoi1`, `TraLoi2`, `TraLoi3`, `TraLoi4`, `DapAn`) VALUES ('"+id+"','"+level+"',N'"+content+"',N'"+option1+"',N'"+option2+"',N'"+option3+"',N'"+option4+"','"+answer+"')";
        
        if(conn.thucThiCauLenhSQL(sql))
            return "T";
        
        return "F";
    }
    
    private String creatID()
    {
        Random generator = new Random();
        int i = generator.nextInt(99999);
        return "Q"+Integer.toString(i);
    }
    
}
