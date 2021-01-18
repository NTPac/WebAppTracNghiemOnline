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
    <%
        
 
    String thoigian = "90:00";

%>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>OES | Examination</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <script>
        var down;
	var min1,sec1;
	var cmin1,csec1,cmin2,csec2;
	function Minutes(data) 
	{
		for(var i=0;i<data.length;i++) 
		if(data.substring(i,i+1)==":") 
		break;  
		return(data.substring(0,i)); 
	}
	function Seconds(data) 
	{        
		for(var i=0;i<data.length;i++) 
		if(data.substring(i,i+1)==":") 
		break;  
		return(data.substring(i+1,data.length)); 
	}
	
	function Display(min,sec) 
	{     
		var disp;       
		if(min<=9) 
			disp=" 0";   
		else disp=" ";  
		disp+=min+":";  
		if(sec<=9) 
			disp+="0"+sec;       
		else disp+=sec; 
		return(disp); 
	}
	
	function Down(tmp) 
	{       
		cmin2=1*Minutes(tmp);
		csec2=0+Seconds(tmp);
		DownRepeat(); 
	}
	function DownRepeat() 
	{ 
		csec2--;        
		if(csec2==-1) 
		{ 
			csec2=59; cmin2--; 
		}       
		document.sw.disp2.value=Display(cmin2,csec2);   
		if((cmin2==0)&&(csec2==0)) 
		{
			document.getElementById("form").submit();  
			
		}
		else down=setTimeout("DownRepeat()",1000); 
	}
  </script>

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
<body class="hold-transition skin-blue layout-boxed fixed sidebar-mini" onLoad='Down("<%=thoigian%>")'>

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
<form id="form" name='sw' action="CheckAction" method="GET">
    <input readonly="true" type='text' name='disp2' size='7' >

        <%
	ConnectDBClass con = new ConnectDBClass();
	ResultSet rs = con.chonDuLieuTuDTB("SELECT * FROM nganhangcauhoi ORDER BY RAND() limit 20");
	%>
        <table style="font-size:15px;">
            <%
                int i = 1;
             %>
             <input type="hidden" name="op[0]" value="[]"/>
             <%
            while(rs.next()){
            %>
            <tr><td><%=i%>: <%=rs.getString(3) %></td>
            <tr><td><input type="radio" name="op[<%=i%>]" value="A"/>A.<%=rs.getString(4) %><br></td></tr>
            <tr><td><input type="radio" name="op[<%=i%>]" value="B"/>B.<%=rs.getString(5) %><br></td></tr>
            <tr><td><input type="radio" name="op[<%=i%>]" value="C"/>C.<%=rs.getString(6) %><br></td></tr>
            <tr><td><input type="radio" name="op[<%=i%>]" value="D"/>D.<%=rs.getString(7) %><br></td></tr>
            <tr><td colspan="10"><hr></td></tr>
            <tr><td><input type="hidden" name="qs" value="<%=rs.getString(1)%>"/></td></tr>
            <tr><td><input type="hidden" name="an" value="<%=rs.getString(8)%>"/></td></tr>
                <%i++;}%>
</table>
<button type="submit" onclick="return confirm('Are you sure you want to submit your assessment ?')"  class="btn btn-primary">Submit Assessment</button><br><br>
</form>
</div>
<script type="text/javascript" src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script type="text/javascript" src="plugins/fastclick/fastclick.js"></script>
<script type="text/javascript" src="dist/js/app.min.js"></script>
<script type="text/javascript" src="dist/js/demo.js"></script>
</body>
</html>
