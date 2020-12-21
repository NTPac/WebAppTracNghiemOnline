/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp;

import com.opensymphony.xwork2.ActionContext;
import java.util.Map;

/**
 *
 * @author Administrator
 */
public class Update_UserAction {
    public String sta = null;
    private final ConnectDBClass connDB = new ConnectDBClass();

    
    private String name, email, address, phone, password1, password2,gender;

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword1() {
        return password1;
    }

    public void setPassword1(String password1) {
        this.password1 = password1;
    }

    public String getPassword2() {
        return password2;
    }

    public void setPassword2(String password2) {
        this.password2 = password2;
    }
    public Update_UserAction() {
    }
    
    public String execute() throws Exception {
        Map sessionn = ActionContext.getContext().getSession();
        String id = (String) sessionn.get("ID");
        String sql = "UPDATE `account` SET `FullName`='"+name+"',`gender`='"+gender+"',`passWord`='"+password1+"',`Email`='"+email+"',`address`='"+address+"',`phone`= '"+phone+"' WHERE `IDUser`='"+id+"'";
        if(connDB.thucThiCauLenhSQL(sql))
        {
            sta = null;
            return "T";
        };
        sta = "Loi cap nhap";
        return "F";
    }
    
}
