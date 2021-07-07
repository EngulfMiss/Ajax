<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="${pageContext.request.contextPath}/static/js/jquery-3.6.0.js"></script>
    <script>
        $(function () {
            $("#btn").click(function () {
                $.post({
                    url:"${pageContext.request.contextPath}/func2",
                    success:function (data) {
                        // console.log(data);
                        var html = "";
                        for (let i = 0; i < data.length; i++) {
                            html += "<tr>" +
                                "<td>" + data[i].id + "</td>" +
                                "<td>" + data[i].name + "</td>" +
                                "<td>" + data[i].local_id + "</td>" +
                                "</tr>"
                        }
                        $("#content").html(html)
                    }
                });
            });
        });
    </script>
</head>
<body>

    <input type="button" value="加载数据" id="btn">


    <table>
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>区域</th>
        </tr>
        <tbody id="content">

        </tbody>
    </table>
</body>
</html>
