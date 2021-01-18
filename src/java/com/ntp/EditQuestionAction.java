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
    private String trangthaiq;
    
    public String getIdQ() {
        return idQ;
    }

    public void setIdQ(String idQ) {
        this.idQ = idQ;
    }

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

    public String getTrangthaiq() {
        return trangthaiq;
    }

    public void setTrangthaiq(String trangthaiq) {
        this.trangthaiq = trangthaiq;
    }
    
    public EditQuestionAction() {
    }
    
    public String execute() throws Exception {
        ConnectDBClass conn = new ConnectDBClass();
        String sql;
        sql = "UPDATE `nganhangcauhoi` SET `Level`='"+level+"',`Noidung`='"+content+"',`TraLoi1`='"+option1+"',`TraLoi2`='"+option2+"',`TraLoi3`='"+option3+"',`TraLoi4`='"+option4+"',`DapAn`='"+answer+"' WHERE `ID`='"+idQ+"'";
        
        if(conn.thucThiCauLenhSQL(sql)){
            trangthaiq="Edited successfully question "+idQ;
            return "T";
        }
        trangthaiq="Edited failed question "+idQ;
        return "F";
    }
    
}
