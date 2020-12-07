<%-- 
    Document   : LamBaijsp
    Created on : Nov 14, 2020, 3:10:16 PM
    Author     : Administrator
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.ntp.ConnectDBClass"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lam Bai</h1>
        <%
	ConnectDBClass con = new ConnectDBClass();
	ResultSet rs = con.chonDuLieuTuDTB("SELECT * FROM `nganhangcauhoi`");
	%>
        <form action="CheckAction" >
            <%
                int i = 1;
            while(rs.next()){
                if(i>20)
                break;
            %>
            <p>Câu <%=Integer.toString(i) %>: <%=rs.getString(3) %></p>
            <input type="hidden" name="qs<%=Integer.toString(i)%>" value="<%=rs.getString(1)%>">
            <input type="checkbox" name="op<%=Integer.toString(i)%>" value="A"><p>A)<%=rs.getString(4) %></p><br>
            <input type="checkbox" name="op<%=Integer.toString(i)%>" value="B"><p>B)<%=rs.getString(5) %></p><br>
            <input type="checkbox" name="op<%=Integer.toString(i)%>" value="C"><p>C)<%=rs.getString(6) %></p><br>
            <input type="checkbox" name="op<%=Integer.toString(i)%>" value="D"><p>D)<%=rs.getString(7) %></p><br><br>
		<%
                    i++;
		}
		%>
            <button type="sumbit" >Nop bai</button>
        </form>
</html>
