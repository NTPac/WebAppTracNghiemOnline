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
public class Update_UserAction {
    private final ConnectDBClass connDB = new ConnectDBClass();
    public Update_UserAction() {
    }
    
    public String execute() throws Exception {
        String sql = "UPDATE `account` SET `FullName`='',`gender`='',`passWord`='',`Email`='',`address`='',`phone`= '' WHERE `IDUser`=''";
        return "0";
    }
    
}
