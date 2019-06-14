<%--
  Created by IntelliJ IDEA.
  User: jinzhiqiang
  Date: 2018/7/6
  Time: 下午2:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="web/common/database.jsp" %>
<%@ page language="java" %>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no"/>
    <title>信息录入</title>
    <script src="js/henan_city_area.js"></script>
    <style>
        span {
            display: block;
            text-align: center;
            align-content: center;
        }
    </style>
</head>
<body>

<form method="post" action="doWrite.jsp" onsubmit="return getValue()" target="nm_iframe">
    <span>
        <select id="cmbProvince" name="cmbProvince"></select>
        <select id="cmbCity" name="cmbCity"></select>
        <select id="cmbArea" name="cmbArea"></select>
    </span>
    <input id="storeId" name="storeId" type="hidden"/>
    <br/>
    <span>姓名：<input id="name" name="name" /></span>
    <span>金额：<input id="money" name="money" onkeyup="value=value.replace(/[^\d\.]/g,'')"/></span>
    <br/>
    <span>
        <input type="submit" value="提交">&nbsp&nbsp&nbsp&nbsp
        <input type="reset" value="重置">
    </span>
</form>
<%
    Connection connection = DriverManager.getConnection(url);
    Statement storeStat = connection.createStatement();
    Statement areaStat = connection.createStatement();
    Statement citystat = connection.createStatement();
    ResultSet cityRs = null;
    ResultSet areaRs = null;
    ResultSet storeRs = null;
    String citySql = "SELECT DISTINCT city FROM " + tableName;
    cityRs = citystat.executeQuery(citySql);
    StringBuffer sb = new StringBuffer();
    while (cityRs.next()) {
        String city = cityRs.getString("city");
        sb.append("{name:'" + city + "', cityList:[");
        String areaSql = "SELECT DISTINCT area FROM " + tableName + " where city='" + city + "'";
        areaRs = areaStat.executeQuery(areaSql);
        while (areaRs.next()) {
            String area = areaRs.getString("area");
            sb.append("{name:'" + area + "', areaList:[");
            String storeSql = "SELECT id,store_name,address FROM " + tableName + " where city='" + city + "' and area='" + area + "'";
            storeRs = storeStat.executeQuery(storeSql);
            while (storeRs.next()) {
                String store_id = storeRs.getString("id");
                String store = storeRs.getString("store_name");
                String address = storeRs.getString("address");
                sb.append("'" + store_id + "_" + store + "_" + address + "'");
                sb.append(",");
            }
            sb.append("]},");
        }
        sb.append("]},");
    }

%>

<script type="text/javascript">

    function getValue() {
        var areaValue = document.getElementById('cmbArea').value;
        var arr = areaValue.split("_");
        document.getElementById('storeId').value = arr[0];

        var nameVal = document.getElementById("name").value;
        var moneyVal = document.getElementById("money").value;
        if (nameVal == null || nameVal == "") {
            alert("名称不能为空");
            return false;
        }
        if (moneyVal == null || moneyVal == "") {
            alert("金额不能为空");
            return false;
        }
        alert("恭喜您，捐赠成功！")
    }

    var provinceList = [<%=sb.toString()%>];
    addressInit('cmbProvince', 'cmbCity', 'cmbArea', 'storeId', 'address');

</script>
<iframe id="id_iframe" name="nm_iframe" style="display:none;"></iframe>
</body>
</html>
<%
    storeRs.close();
    areaRs.close();
    cityRs.close();
    storeStat.close();
    areaStat.close();
    citystat.close();
    connection.close();
%>