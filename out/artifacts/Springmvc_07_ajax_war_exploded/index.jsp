<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>

  <script src="${pageContext.request.contextPath}/statics/js/jquery-3.4.1.js"></script>

  <script>
    function a() {
      $.post({
        url:"${pageContext.request.contextPath}/a1",
        data:{"name":$("#username").val()},
        success:function (data,status) {
          console.log("data="+data);
          console.log("status="+status);//200成功，300重定向 转发，400客户端问题，500服务器问题
        }
      })
    }
  </script>
</head>
<body>
<%--失去焦点的时候，发起1一个请求（携带信息）到后台--%>
用户名：<input type="text" id="username" onblur="a()">
</body>
</html>
