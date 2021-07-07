# Ajax
## 简介
- AJAX（Asynchronous JavaScript and XML,异步的 JavaScript 和 XML）
- AJAX 是一种在无需重新加载整个网页的情况下，能够部分更新网页的技术
- AJAX 不是一种新的编程语言，而是一种用于创建更好更快以及交互性更强的Web应用程序的技术

## JQuery.ajax
**JQuery是一个库：包含js的大量函数(方法)**  

$.ajax()


该方法用于执行Ajax请求，常用于其他jQuery Ajax方法不能完成的请求，也许我们可以把它称为"jQuery中Ajax系列方法之母"。

形式：$.ajax({name:val, name:val,...});
可选字段：
1）url：链接地址，字符串表示  
2）data：需发送到服务器的数据，GET与POST都可以，格式为{A: '...', B: '...'}  
3）type："POST" 或 "GET"，请求类型  
4）timeout：请求超时时间，单位为毫秒，数值表示  
5）cache：是否缓存请求结果，bool表示  
6）contentType：内容类型，默认为"application/x-www-form-urlencoded"  
7）dataType：服务器响应的数据类型，字符串表示；当填写为json时，回调函数中无需再对数据反序列化为json  
8）success：请求成功后，服务器回调的函数  
9）error：请求失败后，服务器回调的函数  
10）complete：请求完成后调用的函数，无论请求是成功还是失败，都会调用该函数；如果设置了success与error函数，则该函数在它们之后被调用  
11）async：是否异步处理，bool表示，默认为true；设置该值为false后，JS不会向下执行，而是原地等待服务器返回数据，并完成相应的回调函数后，再向下执行  
12）username：访问认证请求中携带的用户名，字符串表示  
13）password：返回认证请求中携带的密码，字符串表示  


实现
**常用参数**
- url: 请求的地址
- type: 请求类型  "POST" 或 "GET"
- data: 需发送到服务器的数据
- dataType: 服务器响应的数据类型
- success: 请求成功后，服务器回调的函数  
```xml
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.6.0.js"></script>
    <script>
      function func(){
        $.post({
          url:"${pageContext.request.contextPath}/func1",
          data:{"user":$("#username").val()},
          success:function (data) {
            alert(data);
          },
        })
      }
    </script>
  </head>
  <body>
    <!-- 失去焦点的时候，发起一个请求(携带信息)到后台 -->
    用户名：<input type="text" id="username" onblur="func()">
  </body>
</html>
```
