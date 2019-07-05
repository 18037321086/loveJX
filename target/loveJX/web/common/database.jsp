<%--
  Created by IntelliJ IDEA.
  User: jinzhiqiang
  Date: 2018/7/7
  Time: 上午2:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.mysql.jdbc.Driver"%>
<%@ page import="java.sql.*"%>
<%
    String userName = "jzq";//数据库名
    String userPasswd = "rhJt@2018";//数据库密码
    String dbName = "renhe_jx";
    String tableName = "store_info";
    String url = "jdbc:mysql://rm-m5e2s5o00gm79540vio.mysql.rds.aliyuncs.com:3306/" + dbName + "?user=" + userName + "&password=" + userPasswd + "&useUnicode=true&characterEncoding=utf-8&useSSL=true";
    Class.forName("com.mysql.jdbc.Driver").newInstance();
%>
