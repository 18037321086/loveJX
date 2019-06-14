<%--
  Created by IntelliJ IDEA.
  User: jinzhiqiang
  Date: 2018/7/7
  Time: 上午1:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="web/common/database.jsp"%>
<html>
<head>
    <title>捐赠结果</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    String storeId = request.getParameter("storeId");
    String name = request.getParameter("name");
    String money = request.getParameter("money");
    Connection connection = DriverManager.getConnection(url);
    Statement stat = connection.createStatement();
    String insertSql = "insert into donation_info(store_id,name,money) values ("+storeId+",'"+name+"',"+money+")";
    int ret = stat.executeUpdate(insertSql);
    if(ret > 0){
        out.print("<span style=\"color: red\">恭喜您，捐赠成功！</span>");
        out.print("<span style=\"color: red\"><a href=\"write.jsp\">返回继续捐赠</a> </span>");
    } else {
        out.print("<span style=\"color: red\"><a href=\"write.jsp\">系统故障，请返回重试</a> </span>");
    }
    stat.close();
    connection.close();
%>


</body>
</html>
