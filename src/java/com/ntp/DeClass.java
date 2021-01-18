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
public class DeClass {
    private String name ,op1,op2,op3,op4,ans,uop;
    

    public DeClass() {
    }

    public DeClass(String name, String op1, String op2, String op3, String op4, String ans, String uop) {
        this.name = name;
        this.op1 = op1;
        this.op2 = op2;
        this.op3 = op3;
        this.op4 = op4;
        this.ans = ans;
        this.uop = uop;
    }
    
}
