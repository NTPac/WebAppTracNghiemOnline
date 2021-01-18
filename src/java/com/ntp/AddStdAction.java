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
public class AddStdAction {
    private String name , email , address , gender , phone ;
    private String trangthais;
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

    public String getTrangthais() {
        return trangthais;
    }

    public void setTrangthais(String trangthais) {
        this.trangthais = trangthais;
    }
    
    
    public AddStdAction() {
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
        sql = "INSERT INTO `account` (`IDUser`, `FullName`, `gender`, `passWord`, `role`, `Email`, `address`, `avatar`, `phone`) VALUES ('"+id+"', N'"+name+"', '"+gender+"', '123456', 'Student', '"+email+"', N'"+address+"', NULL, '"+phone+"')";
        
        if(conn.thucThiCauLenhSQL(sql)){
            trangthais="Added successfully user "+id;
            return "T";
        }
        trangthais="Added failed user "+id;
        return "F";
        
        
    }
    
    
    private String creatID()
    {
        Random generator = new Random();
        int i = generator.nextInt(99999);
        return "S"+Integer.toString(i);
    }
}
