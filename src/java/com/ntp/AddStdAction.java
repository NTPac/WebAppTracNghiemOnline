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
public class AddStdAction {
    private String name , email , address , gender , phone ;

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
    
    
    public AddStdAction() {
    }
    
    
    public String execute() throws Exception {
        ConnectDBClass conn = new ConnectDBClass();
        ResultSet rs = conn.chonDuLieuTuDTB("SELECT COUNT(*) FROM account");
        String id = "";
        if(rs.next())
            id = creatID(rs.getString(1));
        
        String sql;
        sql = "INSERT INTO `account` (`IDUser`, `FullName`, `gender`, `passWord`, `role`, `Email`, `address`, `avatar`, `phone`) VALUES ('"+id+"', '"+name+"', '"+gender+"', '123456', 'Student', '"+email+"', '"+address+"', NULL, '"+phone+"')";
        
        if(conn.thucThiCauLenhSQL(sql))
            return "T";
        
        return "F";
        
        
    }
    
    
    private String creatID(String y)
    {
        int x = Integer.parseInt(y);
        String p="S" ;
        if(x<10000)
            p=p+"0";
        if(x<1000)
            p=p+"0";
        if(x<100)
            p=p+"0";
        if(x<10)
            p=p+"0";
        p=p+y;
        return p;
    }
}
