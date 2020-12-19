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
public class LogoutAction {
    public LogoutAction() {
    }
    
    public String execute() throws Exception {
        Map session = ActionContext.getContext().getSession();
        
        session.remove("ID");
        return "T";
    }
    
}
