/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp;

import com.opensymphony.xwork2.ActionContext;
import java.io.File;
import java.lang.invoke.MethodHandles;
import java.util.Map;

/**
 *
 * @author Administrator
 */
public class update_logoAction {
    private byte[] fl;

    public byte[] getFl() {
        return fl;
    }

    public void setFl(byte[] fl) {
        this.fl = fl;
    }

    
    public update_logoAction() {
    }
    

    public String execute() throws Exception {
        
        Map sessionn = ActionContext.getContext().getSession();
        String id = (String)sessionn.get("ID");
        ConnectDBClass conn = new ConnectDBClass();
        String sql = "UPDATE `account` SET `avatar` = "+fl.toString()+"  Where iduser = '"+id+"'";
        try{
        conn.thucThiCauLenhSQL(sql);
        return "T";
        }
        catch(Exception ex)
        {
        };
        return "F";
    
    }
    
}
