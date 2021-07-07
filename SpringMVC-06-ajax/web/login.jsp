<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.6.0.js"></script>
    <script>
        function f1() {
            $.post({
               url:"${pageContext.request.contextPath}/func3",
                data:{"username":$("#username").val()},
                success:function (data) {
                    if (data.toString() === "OK"){
                        $("#userInfo").css("color","green");
                    }else {
                        $("#userInfo").css("color","red");
                    }

                    $("#userInfo").html(data);
                }
            });
        }
        function f2() {
            $.post({
                url:"${pageContext.request.contextPath}/func3",
                data:{"psw":$("#psw").val()},
                success:function (data) {
                    if (data.toString() === "密码OK"){
                        $("#pswInfo").css("color","green");
                    }else {
                        $("#pswInfo").css("color","red");
                    }

                    $("#pswInfo").html(data);
                }
            });
        }
    </script>
</head>
<body>
    <p>
        用户名:<input type="text" id="username" onblur="f1()">
        <span id="userInfo"></span>
    </p>
    <p>
        密码:<input type="text" id="psw" onblur="f2()">
        <span id="pswInfo"></span>
    </p>
</body>
</html>
