<%-- 
    Document   : Profilejsp
    Created on : Dec 10, 2020, 9:02:05 PM
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

      <div class="navbar-custom-menu">
        <ul class="nav navbar-nav">
          <li class="dropdown user user-menu">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
								  <%
	ConnectDBClass con = new ConnectDBClass();
	ResultSet rs = con.chonDuLieuTuDTB("SELECT * FROM `account` WHERE `IDUser` = '123123'");
        String anhString = null;
        if(rs.next()){
            if (rs.getString(8) != null){
                anhString = "<img src='data:image/jpeg;base64,"+rs.getString(8)+"' class='user-image' alt='"+rs.getString(2)+"' title='"+rs.getString(2)+"'>";
            }
            else{
                if(rs.getString(3) == "Male" ){
                    anhString = "<img src='dist/img/avatar.png' class='user-image' alt='"+rs.getString(2)+"' title='"+rs.getString(2)+"'>";
                }else{
                    anhString = "<img src='dist/img/avatar3.png' class='user-image' alt='"+rs.getString(2)+"' title='"+rs.getString(2)+"'>";}
            }
        }
                %>        
              <p>
                  <%=rs.getString(2)%>
                  <small><<%=rs.getString(1)%> , Student</small>
                </p>
              </li>
          
              <li class="user-footer">
                <div class="pull-left">
                  <a href="./" class="btn btn-default btn-flat">Profile</a>
                </div>
                <div class="pull-right">
                  <a href="#" class="btn btn-default btn-flat">Sign out</a>
                </div>
              </li>
            </ul>
          </li>
   
        </ul>
      </div>
    </nav>
  </header>
  <aside class="main-sidebar">
    <section class="sidebar">
      <div class="user-panel">
          <div class="pull-left image">
              <%=anhString%>
          </div>
        <div class="pull-left info">
          <p><%=rs.getString(2)%></p>
          <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
        </div>
      </div>

      <ul class="sidebar-menu">
        <li class="header">MAIN NAVIGATION</li>

        <li>
     	  <li class="treeview">
          <a href="#">
            <i class="fa fa-file-text"></i>
            <span>Examination</span>
   
          </a>
     <ul class="treeview-menu">
     <li><a href="#"><i class="fa fa-circle-o"></i> Instructions</a></li>
          <li class="active"><a href="#"><i class="fa fa-circle"></i> Begin assessment</a></li>
     </ul>
        </li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-users"></i>
            <span>Students</span>
   
          </a>
        </li>


        

      </ul>
    </section>
 
  </aside>

  <div class="content-wrapper">
    <section class="content-header">
      <h1>
        User Profile
      
      </h1>
      <ol class="breadcrumb">
        <li><a href="./"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">User Profile</li>
      </ol>
    </section>

    <section class="content">
    
      <div class="row">
        <section class="col-lg-4">
<div class="box box-primary">
            <div class="box-body box-profile">
                <%=anhString%>
                <h3 class="profile-username text-center"><%=rs.getString(2)%></h3>

              <p class="text-muted text-center"><%=rs.getString(6)%></p>

              <ul class="list-group list-group-unbordered">
                <li class="list-group-item">
                  <b>Gender</b> <a class="pull-right"><%=rs.getString(3)%></a>
                </li>
                <li class="list-group-item">
                  <b>Address</b> <a class="pull-right"><%=rs.getString(7)%></a>
                </li>
              </ul>
                <form action="#" method="POST">
			<input type="file" name="f1" accept="image/*" required><br>
			
			     <button type="submit" class="pull-right btn btn-default" name="uplogo" id="sendEmail">Update profile picture
                <i class="fa fa-arrow-circle-up"></i></button>
		</form>
		
            </div>
            <!-- /.box-body -->
          </div>
        </section>
		        <section class="col-lg-8">

          
            <div class="box-header">
              <i class="fa fa-user"></i>

              <h3 class="box-title">User Information</h3>
			 
            </div>
            <div class="box-body">
              <form action="update_user.php" method="post">
                <div class="form-group">
                  <input type="text" class="form-control" name="name" value="<%=rs.getString(2)%>" readonly required>
                </div>
                <div class="form-group">
                  <input type="email" class="form-control" name="email" value="<%=rs.getString(6)%>" readonly required>
                </div>
				 <div class="form-group">
                  <input type="text" class="form-control" name="address" value="<%=rs.getString(7)%>" readonly required>
                </div>
				<div class="form-group">
                  <input type="text" class="form-control" name="phone" value="<%=rs.getString(9)%>" readonly required>
                </div>
                <div class="form-group">
                  <input type="password" class="form-control" id="password" name="password1" value="" placeholder="New Password" required>
                </div>
				 <div class="form-group">
                  <input type="password" class="form-control" id="confirm_password" name="password2" value="" placeholder="Confirm New Password" required>
                </div>
              						<script>
	var password = document.getElementById("password")
  , confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>
              <div class="box-footer clearfix">
              <button type="submit" class="pull-right btn btn-default" name="upschool" id="sendEmail">Update Information
                <i class="fa fa-arrow-circle-up"></i></button>
            </div>
			</form>
            </div>
            
          
</section>
		</div>
                          
    </section>
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