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
public class editStdAction {
    private String idStd, name , email , address , gender , phone ;
    private String trangthais ;
    public String getIdStd() {
        return idStd;
    }

    public void setIdStd(String idStd) {
        this.idStd = idStd;
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
    public editStdAction() {
    }

    public String getTrangthais() {
        return trangthais;
    }

    public void setTrangthais(String trangthais) {
        this.trangthais = trangthais;
    }
    
    public String execute() throws Exception {
        ConnectDBClass conn = new ConnectDBClass();
        String sql;
        sql = "UPDATE `account` SET `FullName`='"+name+"',`gender`='"+gender+"',`Email`='"+email+"',`address`='"+address+"',`phone`='"+phone+"' WHERE `IDUser` = '"+idStd+"'";
        
        if(conn.thucThiCauLenhSQL(sql)){
            trangthais="Edited successfully user "+idStd;
            return "T";
        }
        trangthais="Edited failed user "+idStd;
        return "F";
    }
    
}
