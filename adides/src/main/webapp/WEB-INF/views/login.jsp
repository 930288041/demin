<%@ page language="java" import="com.aieduc.entity.User" isELIgnored="false" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <title>登录</title>
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
      <!-- jQuery 3 -->
<script src="${pageContext.request.contextPath }/uibase/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 3.3.7 -->
<script src="${pageContext.request.contextPath }/uibase/bootstrap/dist/js/bootstrap.min.js"></script>
<!-- iCheck -->
<script src="${pageContext.request.contextPath }/plugins/iCheck/icheck.min.js"></script>
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
            <h5>最小的管理主题</h5>
         <span style="color: red;">${message }</span>
            <form  action="login.do" method="post">
              <section>
                <div class="input-group">
               
                  <input id="userName" type="text" class="form-control" name="userName" placeholder="用户名">
                  <div class="input-group-addon"><i class="fa fa-user"></i></div>
                </div>
                <div class="input-group">
                  <input id="userPwd" type="password" class="form-control" name="userPwd" placeholder="密码">
                  <div class="input-group-addon"><i class="fa fa-key"></i></div>
                </div>
              
            
              </section>
                <div class="input-group" >
                 <input type="text" class="form-control" placeholder="验证码" name="verifyCode" style="display:inline;width: 60%;" id="verifyCode">
                 <img alt="验证码" src="${pageContext.request.contextPath}/verifycode.do"  >
               </div>
              <section class="controls">
                <div class="checkbox check-transparent">
                  <input type="checkbox" value="1" id="remember" checked>
                  <label for="remember">记住账号</label>
                  <span id="message" style="color: red"></span>
                </div>
               <a href="#">忘记密码</a>
              </section>
              <section class="log-in">
                <button type="submit" class="btn btn-greensea" onclick="loginUser()">登录</button>
                <span></span>
                <a href="register.do" class="btn btn-slategray">注册账户</a>
              </section>
            </form>
          </div>
        </div>
        <!-- /Page content -->  
      </div>
    </div>
    <!-- Wrap all page content end -->
  </body>
   
</html>
      
