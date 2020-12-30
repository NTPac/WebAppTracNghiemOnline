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
        ResultSet rs2 = con.chonDuLieuTuDTB("SELECT * FROM `nganhangcauhoi`");
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
              <i class="glyphicon glyphicon-list-alt"></i>
              <h3 class="box-title">QUESTION</h3>
              <a href="addQuestionjsp.jsp">add</a>

            </div>
            <div class="box-body p">
		<table class="table">
                <tbody><tr>
                  <th>ID</th>
                  <th>level</th>
                  <th>Question</th>
		<th>A</th>
			<th>B</th>
		<th>C</th>
                <th>D</th>
                <th>Answer</th>
                <th>Option</th>
                </tr>
               <tbody>
                   <%  /*StudentClass [] student = new StudentClass[100];
                   int i = 0;
                   while (rs2.next()){
                       
                       student[i].setId(rs2.getString(1));
                       student[i].setFname(rs2.getString(2));
                       student[i].setGender(rs2.getString(3));
                       student[i].setEmail(rs2.getString(4));
                       student[i].setAddress(rs2.getString(5));
                       student[i].setPhone(rs2.getString(6));
                       i++;
                   }
            List<StudentClass> list = Arrays.asList(student);
            int currentpage=1;
            int count=i;
      
            int recordPerPage=4;
           
            int paging=(int)Math.ceil((double)count/recordPerPage);
            int startRecord=0;
            if(request.getParameter("currentpage")!=null){
               currentpage=Integer.parseInt(request.getParameter("currentpage"));
               startRecord=(currentpage-1)*recordPerPage;
            }
            else{
               startRecord=0;
            }
            
            List<StudentClass> listpro=new ArrayList<StudentClass>();
            for(int t=0;t<list.size();t++){
                if(i>=startRecord&&i<startRecord+4){
                    listpro.add(list.get(i));
                }
            }
            for(StudentClass item:listpro){
            */
                       int i = 0;
                       while(rs2.next()){  i++;%>
			<tr>
                            <td><p><%=rs2.getString(1)%></p></td>
                            <td><p><%=rs2.getString(2)%></p></td>
                            <td><p><%=rs2.getString(3)%></p></td>
                            <td><p><%=rs2.getString(4)%></p></td>
                            <td><p><%=rs2.getString(5)%></p></td>
                            <td><p><%=rs2.getString(6)%></p></td>
                            <td><p><%=rs2.getString(7)%></p></td>
                            <td><p><%=rs2.getString(8)%></p></td>
		    <td>
                        <a class="btn btn-block btn-primary btn-xs" href="addQuestionjsp.jsp?idQ=<%=rs2.getString(1)%>"><i class="fa fa-edit"></i></a>
                        <a name ="idQ" value="<%=rs2.getString(1)%>" class="btn btn-block btn-danger btn-xs" href="deleteQuestion"><i class="fa fa-trash-o"></i></a>
			
                    </td>
</tr>     <% };
            if(i==0){
%>
<div class="callout callout-danger">
        <h4>You have not registered any student</h4>
        Registered student will be shown here
      </div>
               <%}%>
			   
              </tbody></table>
 
              <ul class="pagination">
 <li class="paginate_button">
     <a href="" ></a>
 </li>		 
			  </ul>
              
            </div>
        
			</form>
          </div>
        </section>
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