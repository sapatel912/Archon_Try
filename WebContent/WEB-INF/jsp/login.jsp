<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib  prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>        
        <!-- meta section -->
        <title>Archon Login</title>        
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
        <meta http-equiv="X-UA-Compatible" content="IE=edge" >
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" >
        
        <!-- <link rel="icon" href="favicon.ico" type="image/x-icon" >  -->
        <!-- /meta section -->        
        
        <!-- css styles -->
        <link rel="stylesheet" type="text/css" href="<c:url value = "/resources/css/default-blue-white.css"></c:url>" id="dev-css">
        <!-- ./css styles -->                              
                
        <!--[if lte IE 9]>
        <link rel="stylesheet" type="text/css" href="css/dev-other/dev-ie-fix.css">
        <![endif]-->
        
        <!-- javascripts -->
        <script type="text/javascript" src="<c:url value = "resources/js/modernizr.js"></c:url>"></script>
        <!-- ./javascripts -->
        
        <style>.dev-page{visibility: hidden;}</style>
    </head>
    <body>
                
        <!-- page wrapper -->
        <div class="dev-page dev-page-login">
                      
            <div class="dev-page-login-block">
               <!--  <a class="dev-page-login-block__logo">Archon</a> -->
               		<strong class="dev-page-login-block__logo">Archon</strong>
                <div class="dev-page-login-block__form">
                    <div class="title"><strong>Welcome</strong>, please login</div>
                    <form action="index.html" method="post">                        
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-user"></i></span>
                                <input type="text" class="form-control" placeholder="Login">
                            </div>
                        </div>                        
                        <div class="form-group">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="fa fa-lock"></i></span>
                                <input type="password" class="form-control" placeholder="Password">
                            </div>
                        </div>
                        <div class="form-group no-border margin-top-20">
                            <button class="btn btn-success btn-block">Login</button>
                        </div>
                        <p><a href="#">Forgot Password?</a></p>                        
                    </form>
                </div>
                <div class="dev-page-login-block__footer">                    
                    © 2016 <strong>Archon</strong>. All rights reserved.
                </div>
            </div>
            
        </div>
        <!-- ./page wrapper -->                
        
        <!-- javascript -->
        <script type="text/javascript" src="<c:url value = "/resources/js/jquery.min.js"/>"></script>       
        <script type="text/javascript" src="<c:url value = "/resources/js/bootstrap.min.js"/>"></script>
        <!-- ./javascript -->
    </body>
</html>