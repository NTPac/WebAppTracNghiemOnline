/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.ResultSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Administrator
 */
public class LoginAction extends ActionSupport{
    private final ConnectDBClass connDB = new ConnectDBClass();
    private String un;
    private String pw;
    private String trangthai = null;

    public String getTrangthai() {
        return trangthai;
    }

    public void setTrangthai(String trangthai) {
        this.trangthai = trangthai;
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
        HttpServletRequest request = ServletActionContext.getRequest();
        
        HttpSession session = request.getSession();
        
        
        trangthai = "Dang nhap that bai";
        String sql = "SELECT `IDUser`, `role` FROM `account` WHERE `IDUser` = '"+un+"' and `passWord` = '"+pw+"'";
        ResultSet rs = connDB.chonDuLieuTuDTB(sql);
        String resultString = "F";
        if(rs.next()){
            trangthai = null;
            session.setAttribute("ID", un);
            String role = rs.getString("role");
            if("Admin".equals(role))
                resultString = "A";
            else
            resultString = "T";           
        }
        
        return resultString;
    }

    @Override
    public void validate() {
        if(this.trangthai != null)
            addFieldError("report", trangthai);
    }
    
    
}
