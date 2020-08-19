<%@ page language="java" import="com.aieduc.entity.User" isELIgnored="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8" />

    <link rel="icon" type="image/ico" href="http://tattek.com/minimal/assets/images/favicon.ico" />
    <!-- Bootstrap -->
    <link href="assets/css/vendor/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/vendor/bootstrap-checkbox.css">

    <link href="assets/css/minimal.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>
  <body class="bg-1">
 

    <!-- Wrap all page content here -->
    <div id="wrap">
      <!-- Make page fluid -->
      <div class="row">
        <!-- Page content -->
        <div id="content" class="col-md-12 full-page login">


          <div class="inside-block">
            <img src="assets/images/logo-big.png" alt class="logo">
            <h1><strong>欢迎</strong> 陌生人</h1>
           
         


                  <!-- /tile header -->

                  <!-- tile body -->
                  <div class="tile-body">
                    
                    <form class="form-horizontal" role="form">
                      
                        <div class="input-group">
                  <input type="text" class="form-control" name="username" placeholder="用户名">
                  <div class="input-group-addon"><i class="fa fa-user"></i></div>
                </div>
                <div class="input-group">
                  <input type="password" class="form-control" name="password" placeholder="密码">
                  <div class="input-group-addon"><i class="fa fa-key"></i></div>
                </div>
                <div class="input-group">
                  <input type="password" class="form-control" name="password" placeholder="重复密码">
                  <div class="input-group-addon"><i class="fa fa-key"></i></div>
                </div>
               <section class="log-in">
                <button type="submit" class="btn btn-greensea">提交注册</button>
                <span></span>
                <a href="login。do" class="btn btn-slategray">退出</a>
              </section>
                    </form>

                  </div>
                  <!-- /tile body -->
                  
                


               
          </div>


        </div>
        <!-- /Page content -->  
      </div>
    </div>
    <!-- Wrap all page content end -->
  </body>
</html>
      
