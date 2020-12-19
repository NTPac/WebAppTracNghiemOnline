<%-- 
    Document   : Testjsp
    Created on : Dec 10, 2020, 7:32:25 PM
    Author     : Administrator
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.ntp.ConnectDBClass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>OES | Examination</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
</head>
<style>
#myhead{
width:1100px; margin:0 auto;
background-color:#4B77BE;
height:230px;
}

#myhead2{
width:1100px;  height:100%; margin:0 auto;
background-color:white;

}
</style>
<body class="hold-transition skin-blue layout-boxed fixed sidebar-mini">

<div  id="myhead">
<center>
</center>


<center>
<h3 style="color:white; font-weight: bold;">
KHOA CÔNG NGHỆ THÔNG TIN
</h3>
<p style="color:white; line-height: 35%; font-size: 14px;">dqn@moet.edu.vn</p>
<p style="color:white; line-height: 35%;font-size: 14px;">170 An Dương Vương, Tp. Quy Nhơn</p>
<p style="color:white; line-height: 35%; font-size: 14px;">(84-56) 3846156</p>
<i><p style="color:white; line-height: 35%; font-size: 14px;">Our Slogan</p></i>
<img style="width:120px;" src="Image/logoKCNTT90x90.png" class="img-circle" alt="TRƯỜNG ĐẠI HỌC QUY NHƠN" title="TRƯỜNG ĐẠI HỌC QUY NHƠN">
</center>

</div>
<div id="myhead2" style="padding-left:20px; padding-right:20px;">
<form action="CheckAction" method="GET">
        <%
	ConnectDBClass con = new ConnectDBClass();
	ResultSet rs = con.chonDuLieuTuDTB("SELECT * FROM `nganhangcauhoi`");
	%>
        <table style="font-size:15px;">
            <%
                int i = 1;
            while(rs.next()){
                if(i>20)
                    break;
            %>
            <tr><td><%=Integer.toString(i) %>: <%=rs.getString(3) %></td>
            <tr><td><input type="radio" name="op<%=Integer.toString(i)%>" value="A"/>A.<%=rs.getString(4) %><br></td></tr>
            <tr><td><input type="radio" name="op<%=Integer.toString(i)%>" value="B"/>B.<%=rs.getString(5) %><br></td></tr>
            <tr><td><input type="radio" name="op<%=Integer.toString(i)%>" value="C"/>C.<%=rs.getString(6) %><br></td></tr>
            <tr><td><input type="radio" name="op<%=Integer.toString(i)%>" value="D"/>D.<%=rs.getString(7) %><br></td></tr>
            <tr><td colspan="10"><hr></td></tr>
            <tr><td><input type="hidden" name="qs<%=Integer.toString(i)%>" value="<%=rs.getString(1)%>"/></td></tr>
                <%i++;}%>
</table>
<button type="submit" onclick="return confirm('Are you sure you want to submit your assessment ?')"  class="btn btn-primary">Submit Assessment</button><br><br>
</form>

<script type="text/javascript" src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script type="text/javascript" src="plugins/fastclick/fastclick.js"></script>
<script type="text/javascript" src="dist/js/app.min.js"></script>
<script type="text/javascript" src="dist/js/demo.js"></script>
</body>
</html>
