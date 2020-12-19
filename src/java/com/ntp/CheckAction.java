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
public class CheckAction {
    
    DeClass de = new DeClass();
    private String [] an;
    private String ketqua = null;
    private String trangthai;

    public String getKetqua() {
        return ketqua;
    }

    public void setKetqua(String ketqua) {
        this.ketqua = ketqua;
    }

    public String getTrangthai() {
        return trangthai;
    }

    public void setTrangthai(String trangthai) {
        this.trangthai = trangthai;
    }
    public String[] getAn() {
        return an;
    }

    public void setAn(String[] an) {
        this.an = an;
    }
    
    private int diem;
    
    private String qs1 = "";
    private String qs2 = "";
    private String qs3 = "";
    private String qs4 = "";
    private String qs5 = "";
    private String qs6 = "";
    private String qs7 = "";
    private String qs8 = "";
    private String qs9 = "";
    private String qs10 = "";
    private String qs11 = "";
    private String qs12 = "";
    private String qs13 = "";
    private String qs14 = "";
    private String qs15 = "";
    private String qs16 = "";
    private String qs17 = "";
    private String qs18 = "";
    private String qs19 = "";
    private String qs20 = "";
    
    
    private String op1 = "F";
    private String op2 = "F";
    private String op3 = "F";
    private String op4 ="F";
    private String op5 = "F";
    private String op6 = "F";
    private String op7 = "F";
    private String op8 = "F";
    private String op9 = "F";
    private String op10 = "F";
    private String op11 = "F";
    private String op12 = "F";
    private String op13 = "F";
    private String op14 = "F";
    private String op15 = "F";
    private String op16 = "F";
    private String op17 = "F";
    private String op18 = "F";
    private String op19 = "F";
    private String op20 = "F";

    private String an1 = "F";
    private String an2 = "F";
    private String an3 = "F";
    private String an4 = "F";
    private String an5 = "F";
    private String an6 = "F";
    private String an7 = "F";
    private String an8 = "F";
    private String an9 = "F";
    private String an10 = "F";
    private String an11 = "F";
    private String an12 = "F";
    private String an13 = "F";
    private String an14 = "F";
    private String an15 = "F";
    private String an16 = "F";
    private String an17 = "F";
    private String an18 = "F";
    private String an19 = "F";
    private String an20 = "F";

    public String getAn1() {
        return an1;
    }

    public void setAn1(String an1) {
        this.an1 = an1;
    }

    public String getAn2() {
        return an2;
    }

    public void setAn2(String an2) {
        this.an2 = an2;
    }

    public String getAn3() {
        return an3;
    }

    public void setAn3(String an3) {
        this.an3 = an3;
    }

    public String getAn4() {
        return an4;
    }

    public void setAn4(String an4) {
        this.an4 = an4;
    }

    public String getAn5() {
        return an5;
    }

    public void setAn5(String an5) {
        this.an5 = an5;
    }

    public String getAn6() {
        return an6;
    }

    public void setAn6(String an6) {
        this.an6 = an6;
    }

    public String getAn7() {
        return an7;
    }

    public void setAn7(String an7) {
        this.an7 = an7;
    }

    public String getAn8() {
        return an8;
    }

    public void setAn8(String an8) {
        this.an8 = an8;
    }

    public String getAn9() {
        return an9;
    }

    public void setAn9(String an9) {
        this.an9 = an9;
    }

    public String getAn10() {
        return an10;
    }

    public void setAn10(String an10) {
        this.an10 = an10;
    }

    public String getAn11() {
        return an11;
    }

    public void setAn11(String an11) {
        this.an11 = an11;
    }

    public String getAn12() {
        return an12;
    }

    public void setAn12(String an12) {
        this.an12 = an12;
    }

    public String getAn13() {
        return an13;
    }

    public void setAn13(String an13) {
        this.an13 = an13;
    }

    public String getAn14() {
        return an14;
    }

    public void setAn14(String an14) {
        this.an14 = an14;
    }

    public String getAn15() {
        return an15;
    }

    public void setAn15(String an15) {
        this.an15 = an15;
    }

    public String getAn16() {
        return an16;
    }

    public void setAn16(String an16) {
        this.an16 = an16;
    }

    public String getAn17() {
        return an17;
    }

    public void setAn17(String an17) {
        this.an17 = an17;
    }

    public String getAn18() {
        return an18;
    }

    public void setAn18(String an18) {
        this.an18 = an18;
    }

    public String getAn19() {
        return an19;
    }

    public void setAn19(String an19) {
        this.an19 = an19;
    }

    public String getAn20() {
        return an20;
    }

    public void setAn20(String an20) {
        this.an20 = an20;
    }
    
    public int getDiem() {
        return diem;
    }

    public void setDiem(int diem) {
        this.diem = diem;
    }

    public String getQs1() {
        return qs1;
    }

    public void setQs1(String qs1) {
        this.qs1 = qs1;
    }

    public String getQs2() {
        return qs2;
    }

    public void setQs2(String qs2) {
        this.qs2 = qs2;
    }

    public String getQs3() {
        return qs3;
    }

    public void setQs3(String qs3) {
        this.qs3 = qs3;
    }

    public String getQs4() {
        return qs4;
    }

    public void setQs4(String qs4) {
        this.qs4 = qs4;
    }

    public String getQs5() {
        return qs5;
    }

    public void setQs5(String qs5) {
        this.qs5 = qs5;
    }

    public String getQs6() {
        return qs6;
    }

    public void setQs6(String qs6) {
        this.qs6 = qs6;
    }

    public String getQs7() {
        return qs7;
    }

    public void setQs7(String qs7) {
        this.qs7 = qs7;
    }

    public String getQs8() {
        return qs8;
    }

    public void setQs8(String qs8) {
        this.qs8 = qs8;
    }

    public String getQs9() {
        return qs9;
    }

    public void setQs9(String qs9) {
        this.qs9 = qs9;
    }

    public String getQs10() {
        return qs10;
    }

    public void setQs10(String qs10) {
        this.qs10 = qs10;
    }

    public String getQs11() {
        return qs11;
    }

    public void setQs11(String qs11) {
        this.qs11 = qs11;
    }

    public String getQs12() {
        return qs12;
    }

    public void setQs12(String qs12) {
        this.qs12 = qs12;
    }

    public String getQs13() {
        return qs13;
    }

    public void setQs13(String qs13) {
        this.qs13 = qs13;
    }

    public String getQs14() {
        return qs14;
    }

    public void setQs14(String qs14) {
        this.qs14 = qs14;
    }

    public String getQs15() {
        return qs15;
    }

    public void setQs15(String qs15) {
        this.qs15 = qs15;
    }

    public String getQs16() {
        return qs16;
    }

    public void setQs16(String qs16) {
        this.qs16 = qs16;
    }

    public String getQs17() {
        return qs17;
    }

    public void setQs17(String qs17) {
        this.qs17 = qs17;
    }

    public String getQs18() {
        return qs18;
    }

    public void setQs18(String qs18) {
        this.qs18 = qs18;
    }

    public String getQs19() {
        return qs19;
    }

    public void setQs19(String qs19) {
        this.qs19 = qs19;
    }

    public String getQs20() {
        return qs20;
    }

    public void setQs20(String qs20) {
        this.qs20 = qs20;
    }

    public String getOp1() {
        return op1;
    }

    public void setOp1(String op1) {
        this.op1 = op1;
    }

    public String getOp2() {
        return op2;
    }

    public void setOp2(String op2) {
        this.op2 = op2;
    }

    public String getOp3() {
        return op3;
    }

    public void setOp3(String op3) {
        this.op3 = op3;
    }

    public String getOp4() {
        return op4;
    }

    public void setOp4(String op4) {
        this.op4 = op4;
    }

    public String getOp5() {
        return op5;
    }

    public void setOp5(String op5) {
        this.op5 = op5;
    }

    public String getOp6() {
        return op6;
    }

    public void setOp6(String op6) {
        this.op6 = op6;
    }

    public String getOp7() {
        return op7;
    }

    public void setOp7(String op7) {
        this.op7 = op7;
    }

    public String getOp8() {
        return op8;
    }

    public void setOp8(String op8) {
        this.op8 = op8;
    }

    public String getOp9() {
        return op9;
    }

    public void setOp9(String op9) {
        this.op9 = op9;
    }

    public String getOp10() {
        return op10;
    }

    public void setOp10(String op10) {
        this.op10 = op10;
    }

    public String getOp11() {
        return op11;
    }

    public void setOp11(String op11) {
        this.op11 = op11;
    }

    public String getOp12() {
        return op12;
    }

    public void setOp12(String op12) {
        this.op12 = op12;
    }

    public String getOp13() {
        return op13;
    }

    public void setOp13(String op13) {
        this.op13 = op13;
    }

    public String getOp14() {
        return op14;
    }

    public void setOp14(String op14) {
        this.op14 = op14;
    }

    public String getOp15() {
        return op15;
    }

    public void setOp15(String op15) {
        this.op15 = op15;
    }

    public String getOp16() {
        return op16;
    }

    public void setOp16(String op16) {
        this.op16 = op16;
    }

    public String getOp17() {
        return op17;
    }

    public void setOp17(String op17) {
        this.op17 = op17;
    }

    public String getOp18() {
        return op18;
    }

    public void setOp18(String op18) {
        this.op18 = op18;
    }

    public String getOp19() {
        return op19;
    }

    public void setOp19(String op19) {
        this.op19 = op19;
    }

    public String getOp20() {
        return op20;
    }

    public void setOp20(String op20) {
        this.op20 = op20;
    }
    
    
    
    public CheckAction() {
    }
    
    public String execute() throws Exception {
        diem = 0;
        String[] cauhoi = {qs1,qs2,qs3,qs4,qs5,qs6,qs7,qs8,qs9,qs10,qs11,qs12,qs13,qs14,qs15,qs16,qs17,qs18,qs19,qs20};
        String[] dapan = {op1,op2,op3,op4,op5,op6,op7,op8,op9,op10,op11,op12,op13,op14,op15,op16,op17,op18,op19,op20};
        String[] dapandung = {an1,an2,an3,an4,an5,an6,an7,an8,an9,an10,an11,an12,an13,an14,an15,an16,an17,an18,an19,an20};
        for(int i = 0 ; i<20 ; i ++)
        {
            if(dapan[i].equals(dapandung[i])) {
                diem ++;
            }
        };
        if(diem<10){
            ketqua = "fail";
            trangthai = "callout callout-danger";
        }
        else{
            ketqua = "pass";
            trangthai = "callout callout-info";
        };
        
        return "T";
    }
    
}
