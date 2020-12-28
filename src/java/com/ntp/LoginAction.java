/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp;

import com.opensymphony.xwork2.ActionContext;
import static com.sun.corba.se.spi.presentation.rmi.StubAdapter.request;
import java.sql.ResultSet;
import java.util.Map;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Administrator
 */
public class LoginAction {
    private final ConnectDBClass connDB = new ConnectDBClass();
    private String un;
    private String pw;
    private String useridString = null;
    private Map sessionn ;
   


    public Map getSession() {
        return sessionn;
    }

    public void setSession(Map session) {
        this.sessionn = session;
    }

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
        HttpServletRequest request = ServletActionContext.getRequest();
        
        HttpSession session = request.getSession();
        
        
        String sql = "SELECT `IDUser`, `role` FROM `account` WHERE `IDUser` = '"+un+"' and `passWord` = '"+pw+"'";
        ResultSet rs = connDB.chonDuLieuTuDTB(sql);
        String resultString;
        if(rs.next()){
            useridString = null;
            /*sessionn = ActionContext.getContext().getSession();
            sessionn.put("ID", un);*/
            session.setAttribute("ID", un);
            String role = rs.getString("role");
            if("Admin".equals(role))
                resultString = "A";
            else
            resultString = "T";           
        }
        else{
            useridString = "Dang nhap that bai";
            resultString = "F";
        }
        return resultString;
    }
    
}
