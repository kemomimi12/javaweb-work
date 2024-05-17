<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2024/5/16
  Time: 下午9:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登录</title>
</head>
<body>
<div style="text-align: center">
     <form action="/login" method="post" id="loginForm">
         账号：<input type="text" name="uname" id="uname"> <br>
         密码：<input type="password" name="uPwd" id="uPwd"> <br>
         <span id="msg" style="font-size: 12px;color: brown"></span><br>
         <button type="button" id="loginBtn">登录</button>
         <button type="button">注册</button>
     </form>
</div>
</body>
<script type="text/javascript" src="js/jquery-3.7.1.js"></script>
<script type="text/javascript">


$("#loginBtn").click(function () {
    var uname = $("#uname").val();
    var uPwd = $("#uPwd").val();
    if (isEmpty(uname)){
        $("#msg").html("账号不可以为空！");
        return;
    }
    if (isEmpty(uPwd)){
        $("#msg").html("密码不可以为空！");
        return;
    }
    $("#loginForm").submit();
});

function isEmpty(str) {
    if(str == null|| str.trim() ===""){
        return true;
    }
    return false;
}



</script>
</html>
