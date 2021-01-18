<%-- 
    Document   : Profilejsp
    Created on : Dec 10, 2020, 9:02:05 PM
    Author     : Administrator
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.lang.String"%>
<%@page import="java.util.List"%>
<%@page import="com.ntp.StudentClass"%>
<%@page import="com.opensymphony.xwork2.ActionContext"%>
<%@page import="java.util.Map"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.ntp.ConnectDBClass"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>OES | User Profile</title>
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">
  <link rel="stylesheet" href="plugins/iCheck/flat/blue.css">
  <link rel="stylesheet" href="plugins/morris/morris.css">
  <link rel="stylesheet" href="plugins/jvectormap/jquery-jvectormap-1.2.2.css">
  <link rel="stylesheet" href="plugins/datepicker/datepicker3.css">
  <link rel="stylesheet" href="plugins/daterangepicker/daterangepicker.css">
  <link rel="stylesheet" href="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.min.css">
  <link rel="icon" href="dist/img/icon.png">
  <%
        String id = (String)session.getAttribute("ID");
	ConnectDBClass con = new ConnectDBClass();
	ResultSet rs = con.chonDuLieuTuDTB("SELECT * FROM `account` WHERE `IDUser` = '"+id+"'");
        String anhString = null;
        if(rs.next()){
            if (rs.getString(8) != null){
                anhString = "<img src='data:image/jpeg;base64,"+rs.getString(8)+"' class='user-image' alt='"+rs.getString(2)+"' title='"+rs.getString(2)+"'>";
            }
            else{
                if(rs.getString(3).equals("Male")){
                    anhString = "<img src='dist/img/avatar.png' class='user-image' alt='"+rs.getString(2)+"' title='"+rs.getString(2)+"'>";
                }else{
                    anhString = "<img src='dist/img/avatar3.png' class='user-image' alt='"+rs.getString(2)+"' title='"+rs.getString(2)+"'>";}
            }
        };
        String idQ = request.getParameter("idQ");
        String noidung = "";
        String lv ="";
        String op1 = "";
        String op2 = "";
        String op3 = "";
        String op4 = "";
        String ans = "";
        String nameBtn = "Register";
        ResultSet rs2 = null ;
        if(idQ != null)
        {
            rs2 = con.chonDuLieuTuDTB("SELECT * FROM `nganhangcauhoi` WHERE `ID`='"+idQ+"'");
            if(rs2.next()){
                noidung = rs2.getString(3);
                lv = rs2.getString(2);
                op1 = rs2.getString(4);
                op2 = rs2.getString(5);
                op3 = rs2.getString(6);
                op4 = rs2.getString(7);
                ans = rs2.getString(8);
            };
            nameBtn = "Edit";
        };
        
        
                %>
</head>


<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header">
    <a href="#" class="logo">
      <span class="logo-mini"><b>O</b>ES</span>
      <span class="logo-lg"><b>Examination</b> System</span>
    </a>
    <nav class="navbar navbar-static-top">
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
      </a>
    </nav>
  </header>
  <aside class="main-sidebar">
    <section class="sidebar">
      <div class="user-panel">
          <div class="pull-left image">
              <%=anhString%>
          </div>
        <div class="pull-left info">
            <p><a href="Profile"><%=rs.getString(2)%><a/></p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
          
      </div>

      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>

        <li>
     	  <li class="treeview">
          <a href="indexAdminjsp.jsp">
            <i class="fa fa-file-text"></i>
            Student Management
   
          </a>
          </li>
          <li class="treeview">
          <a href="QMjsp.jsp">
             <i class="fa fa-circle-o"></i> 
             Question Management
         </a>    
        </li>
        <li class="treeview">
          <a href="./logout">
            <i class="fa fa-users"></i>
            Logout
          </a>
        </li>
      </ul>
    </section>
 
  </aside>

  <div class="content-wrapper">
    <section class="content-header">
      <h1>
        QUESTION LIST
      
      </h1>
      <ol class="breadcrumb">
        <li><a href="./"><i class="glyphicon glyphicon-home"></i> Home</a></li>
        <li class="active">Question list</li>
      </ol>
    </section>
    <section class="content">
    
      <div class="row">
        <section class="col-lg-12">

          <div class="box box-info">
            <div class="box-header">
              <i class="fa fa-user"></i>

              <h3 class="box-title">Quesion Information</h3>
		

            </div>
              <form action="<%=nameBtn%>Q" method="post">
            <div class="box-body">
                <input hidden="true"  name="idQ"  value="<%=idQ%>">
                <div class="form-group">
                    <input type="text" class="form-control" name="content"  placeholder="Question content" value="<%=noidung%>" required>

                </div>
                    <%
                        String lv1 = "unchecked";
                        String lv2 = "unchecked";
                        String lv3 = "unchecked";
                        
                        if(lv != ""){
                        if(lv.equals("1"))
                            lv1 = "checked";
                        
                        if(lv.equals("2"))
                            lv2 = "checked";
                        
                        if(lv.equals("3"))
                            lv3 = "checked";
                        
                        };
                    %>
                <div class="form-group">
                        <input type="radio" name="level" value="1" <%=lv1%> > level 1
                        <input type="radio" name="level" value="2" <%=lv2%> > level 2
                        <input type="radio" name="level" value="3" <%=lv3%> > level 3
                    </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="option1"  placeholder="Question option 1" value="<%=op1%>" required>
                </div>
		<div class="form-group">
                    <input type="text" class="form-control" name="option2"  placeholder="Question option 2" value="<%=op2%>" required>
                </div>
                <div class="form-group">
                    <input type="text" class="form-control" name="option3"  placeholder="Question option 3" value="<%=op3%>" required>
                </div>
		<div class="form-group">
                    <input type="text" class="form-control" name="option4"  placeholder="Question option 4" value="<%=op4%>" required>
                </div>
                    <%
                        String an1 = "unchecked";
                        String an2 = "unchecked";
                        String an3 = "unchecked";
                        String an4 = "unchecked";
                        
                        if(ans != ""){
                        if(ans.equals("A"))
                            an1 = "checked";
                        
                        if(ans.equals("B"))
                            an2 = "checked";
                        
                        if(ans.equals("C"))
                            an3 = "checked";
                        
                        if(ans.equals("D"))
                            an4 = "checked";
                        
                        };
                    %>
                    <div class="form-group">
                        <input type="radio" name="answer" value="A" <%=an1%> > A
                        <input type="radio" name="answer" value="B" <%=an2%> > B
                        <input type="radio" name="answer" value="C" <%=an3%> > C
                        <input type="radio" name="answer" value="D" <%=an4%> > D
                    </div>
         
            </div>
            <div class="box-footer clearfix">
              <button type="submit" class="pull-right btn btn-default" name="newstd" id="sendEmail"><%=nameBtn%> Question
                <i class="fa fa-arrow-circle-up"></i></button>
            </div>
	</form>
          </div>
        </section>
      </div>
      </div>
  <footer class="main-footer">
    <div class="pull-right hidden-xs">
      <b>Version</b> 3.0
    </div>
    <strong>Copyright &copy; Developed By <a target="_blank" href="http://facebook.com/huy.huynhnguyenquang">BHPH</a>.</strong> All rights
    reserved.
  </footer>
  <div class="control-sidebar-bg"></div>
</div>

<script src="../plugins/jQuery/jquery-2.2.3.min.js"></script>

<script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

<script>
  $.widget.bridge('uibutton', $.ui.button);
</script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="plugins/morris/morris.min.js"></script>
<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
<script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js"></script>
<script src="plugins/knob/jquery.knob.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.11.2/moment.min.js"></script>
<script src="plugins/daterangepicker/daterangepicker.js"></script>
<script src="plugins/datepicker/bootstrap-datepicker.js"></script>
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js"></script>
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<script src="plugins/fastclick/fastclick.js"></script>
<script src="dist/js/app.min.js"></script>
<script src="dist/js/pages/dashboard.js"></script>
<script src="dist/js/demo.js"></script>
</body>
</html>