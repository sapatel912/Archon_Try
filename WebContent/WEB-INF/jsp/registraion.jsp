<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix= "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>        
        <!-- meta section -->
        <title>Archon Registraion</title>
        
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
        <meta http-equiv="X-UA-Compatible" content="IE=edge" >
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" >
        
        <!-- /meta section -->        
        
        <!-- css styles -->
        <link rel="stylesheet" type="text/css" href='<c:url value = "resources/css/default-blue-white.css"></c:url>' id="dev-css">
        <!-- ./css styles -->                                    
                
        <!--[if lte IE 9]>
        <link rel="stylesheet" type="text/css" href="css/dev-other/dev-ie-fix.css">
        <![endif]-->
        
        <!-- javascripts -->
        <script type="text/javascript" src='<c:url value = "resources/js/modernizr.js"></c:url>'></script>
        <!-- ./javascripts -->
        
        <style>.dev-page{visibility: hidden;}</style>
    </head>
    <body>
                
        <!-- page wrapper -->
        <div class="dev-page dev-page-login dev-page-registration">
                      
            <div class="dev-page-login-block">
                <strong class="dev-page-login-block__logo">Archon</strong>
                <div class="dev-page-login-block__form">                    
                    <form action="index.html" method="post">                        
                        <div class="row">
                            <div class="col-md-6">                                    
                                <div class="form-group">                            
                                    <input type="text" class="form-control" placeholder="First Name" name="first_name">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">                            
                                    <input type="text" class="form-control" placeholder="Last Name" name="last_name">
                                </div>    
                            </div>
                            <div class="col-md-12">
                                <div class="form-group no-margin">
                                    <input type="text" class="form-control" placeholder="Username" name="username">                                    
                                </div>
                                <span class="help-block">Your profile - http://website.com/<strong>username</strong></span>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group margin-top-30">
                                    <input type="text" class="form-control" placeholder="Email" name="email">
                                </div>
                                <div class="form-group">                            
                                    <input type="text" class="form-control" placeholder="Password" name="password">
                                </div>
                                <div class="form-group">                            
                                    <input type="text" class="form-control" placeholder="Repeat Password" name="re_password">
                                </div>
                            </div>
                        </div>
                        
                        <div class="form-group no-border margin-top-20">
                            <button class="btn btn-danger btn-block">Sign up</button>
                        </div>
                        <p class="text-center">OR</p>                        
                        <div class="form-group no-border">
                            <button class="btn btn-facebook btn-block">Facebook Connect</button>
                        </div>
                    </form>
                </div>
                <div class="dev-page-login-block__footer">
                    © 2016<strong>Archon</strong>. All rights reserved.
                </div>
            </div>
            
        </div>
        <!-- ./page wrapper -->                
        
        <!-- javascript -->
        <script type="text/javascript" src='<c:url value = "resources/js/jquery.min.js"></c:url>'></script>       
        <script type="text/javascript" src='<c:url value = "resources/js/bootstrap.min.js"></c:url>'></script>
        <!-- ./javascript -->
    </body>
</html>






