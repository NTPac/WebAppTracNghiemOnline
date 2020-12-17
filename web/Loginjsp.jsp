<%-- 
    Document   : index
    Created on : Oct 24, 2020, 9:43:30 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib uri="/struts-tags" prefix="s" %>
<html>
    <head>
    <title>Login</title>
    <meta charset="utf-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="bootstrap.min.css" rel="stylesheet">
    <link href="beyond.min.css" rel="stylesheet">
    <link href="animate.min.css" rel="stylesheet">

</head>
<body>
    <form action="login" method="post">


        <div class="login-container animated fadeInDown">
            <div class="loginbox bg-white">
                <div class="loginbox-title" style="font-family:sans-serif; "></div>
               <div class="loginbox-social">
                    <div class=" logo">
                        <img src="logoQuyNhon-icon.jpg" width="100px">
                        <div style="color: #00568F;"><h4>TRƯỜNG ĐẠI HỌC QUY NHƠN</h4></div>
                    </div>
                    <div class="social-title " style="padding-top:10px;color:black;">Trac Nghiem Online</div>
                </div>
                <div class="loginbox-or">
                    <div class="or-line"></div>
                    <div class="or">-*-</div>
                </div>
                <div class="loginbox-textbox">
                    <input type="text" class="form-control" placeholder="Tên đăng nhập" name="un" id="txtTaiKhoan">
                </div>
                <div class="loginbox-textbox">
                    <input type="password" class="form-control" placeholder="Mật khẩu" name="pw" id="txtMatKhau" onkeypress="searchKeyPress(event);">
                </div>

                <div class="loginbox-forgot">
                    <span style="color:red"> </span>
                </div>
                <div class="loginbox-submit">
                    <input type="submit" class="btn btn-primary btn-block" value="Đăng nhập" >
                </div>
            </div>
        </div>
    </form>
</body>
</html>
