<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/8 0008
  Time: 下午 3:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/font-awesome.min.css">
    <link rel="stylesheet" href="/static/css/animate.css">
</head>
<body>
<div class="container">
    <form id="loginForm" class="animated bounce">
        <div class="form-group">
            <label>账号</label>
            <input type="text" name="username" class="form-control" id="username">
            <label>密码</label>
            <input type="password" name="password" class="form-control" id="password">

        </div>
        <button class="btn btn-primary" id="loginBtn">登录</button>
    </form>
</div>
<script src="/static/js/jquery-1.11.3.min.js"></script>
<script src="/static/js/jquery.validate.min.js"></script>

<script>
    $(function () {
        $("#loginBtn").click(function () {
          $("#loginForm").submit();
        });
        $("#loginForm").validate({
            errorElement:"span",
            errorClass:"text-danger",
            rules:{
                username:{
                    required:true
                },
                password:{
                    required:true
                }
            },

            messages:{
                username:{
                    required:"账号不能为空"
                },
                password:{
                    required:"密码不能为空"
                }
            },
            submitHandler:function () {
                $.ajax({
                    url:"/login",
                    type:"post",
                    data:$("#loginForm").serialize(),
                    beforeSend:function () {
                      $("#loginBtn").append($("<i class='fa fa-spinner fa-spin'></i>"))
                          .attr("disabled","disabled");
                    },
                    complete:function () {
                        $("#loginBtn").html("登录").remove("disabled");

                    },
                    success:function (data) {
                        if(data.state=="error"){
                            alert(data.message);
                        }else {
                            window.location.href="/jq/demo1.jsp";
                        }
                    },
                    error:function () {
                       alert("服务器异常");
                    }
                });


            }
        });

        /*$("#loginBtn").click(function () {
            var username=$("#username").val();
            var password=$("#password").val();
            $.post("/login",$("#loginForm").serialize()).done(function(data) {
              if(data.state=="error"){
                  alert(data.message);
              }else{
                  window.location.href="/jq/demo1.jsp";
              }
            }).error(function () {
                alert("服务器异常");
            });


        });*/

    });
</script>
</body>
</html>
