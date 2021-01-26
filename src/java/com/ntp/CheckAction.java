/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ntp;

import com.opensymphony.xwork2.ActionContext;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;

/**
 *
 * @author Administrator
 */
public class CheckAction {
    
    private ArrayList<String> op;
    private List<String> qs;
    private List<String> an;
    int diem;
    private String ketqua = null;
    private String trangthai;
    private String name , op1 , op2 , op3 , op4, ans , yop ;
    private List de ;

    public List getDe() {
        return de;
    }

    public void setDe(List de) {
        this.de = de;
    }
    
    

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public String getAns() {
        return ans;
    }

    public void setAns(String ans) {
        this.ans = ans;
    }

    public String getYop() {
        return yop;
    }

    public void setYop(String yop) {
        this.yop = yop;
    }
    
    
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

    public List<String> getOp() {
        return op;
    }

    public void setOp(ArrayList<String> op) {
        this.op = new ArrayList<String>();
        for(int i=0 ; i<20;i++)
        {
            this.op.add("null");
        };
        for(int i=1 ; i<=20;i++)
        {
            this.op.set(i-1, op.get(i));
        };
    }

    public List<String> getQs() {
        return qs;
    }

    public void setQs(List<String> qs) {
        this.qs = qs;
    }

    public List<String> getAn() {
        return an;
    }

    public void setAn(List<String> an) {
        this.an = an;
    }

    public int getDiem() {
        return diem;
    }

    public void setDiem(int diem) {
        this.diem = diem;
    }

    public CheckAction(String name, String op1, String op2, String op3, String op4, String ans, String yop) {
        this.name = name;
        this.op1 = op1;
        this.op2 = op2;
        this.op3 = op3;
        this.op4 = op4;
        this.ans = ans;
        this.yop = yop;
    }

    

    public CheckAction() {
    }
    
    public String execute() throws Exception {
        ConnectDBClass conn = new ConnectDBClass();
        String sql;
        ResultSet rs = null;
        de = new ArrayList();
        diem = 0;
        for(int i = 0 ; i<op.size() ; i ++)
        {
            if(op.get(i) != null &&  an.get(i) != null && op.get(i).equals(an.get(i))) {
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
        for(int i = 0 ; i<qs.size(); i++)
        {
            if(an.get(i)!=null && qs.get(i)!=null){
                sql = "SELECT * FROM `nganhangcauhoi` WHERE `ID`='"+qs.get(i)+"'";
                rs = conn.chonDuLieuTuDTB(sql);
            };
            if(rs.next()){
            if(op.get(i)==null)
                op.set(i, "null");
            if("A".equals(op.get(i)))
                op.set(i, rs.getString(4));
            if("B".equals(op.get(i)))
                op.set(i, rs.getString(5));
            if("C".equals(op.get(i)))
                op.set(i, rs.getString(6));
            if("D".equals(op.get(i)))
                op.set(i, rs.getString(7));
            
            
            if("A".equals(an.get(i)))
                an.set(i, rs.getString(4));
            if("B".equals(an.get(i)))
                an.set(i, rs.getString(5));
            if("C".equals(an.get(i)))
                an.set(i, rs.getString(6));
            if("D".equals(an.get(i)))
                an.set(i, rs.getString(7));
            
                de.add(new CheckAction(rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7),an.get(i),op.get(i)));}
            
        };

        HttpServletRequest request = ServletActionContext.getRequest();
        
        HttpSession session = request.getSession();
        String id = (String)session.getAttribute("ID");
        
        sql = "INSERT INTO `bangdiem`( `iduser`, `diem`) VALUES ('"+id+"','"+diem+"')";
        conn.thucThiCauLenhSQL(sql);
        
        return "T";
    }
    
}
