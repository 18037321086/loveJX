<%--
  Created by IntelliJ IDEA.
  User: jinzhiqiang
  Date: 2018/7/7
  Time: 上午3:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<body id="activity-detail" class="zh_CN mm_appmsg  appmsg_skin_default appmsg_style_default">
<section
        style="color: rgb(62, 62, 62); line-height: 25.6px; white-space: normal; border: 0px none; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; box-sizing: border-box;"
        data-id="89136" data-tools="135编辑器">
    <section data-id="89136"
             data-tools="135编辑器"
             style="color: rgb(62, 62, 62);  line-height: 25.6px; white-space: normal; border: 0px none; border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; box-sizing: border-box;">
        <section
                style="padding: 10px; text-align: center; box-sizing: border-box;">

            <section
                    style="padding-top: 10px; padding-bottom: 10px; width: auto; border-top-width: 1px; border-top-style: solid; border-top-color: rgb(172, 29, 16); border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(172, 29, 16); display: inline-block; box-sizing: border-box;">
                <section
                        data-brushtype="text"
                        style="padding-right: 10px; padding-left: 10px; width: auto; height: 40px; float: left; line-height: 40px; font-size: 20px; color: rgb(255, 255, 255); box-sizing: border-box; background-color: rgb(172, 29, 16);">
                    活动门店及顾客捐赠公告
                </section>
                <section
                        style="float: left; height: 40px; overflow: hidden;">
                    <section
                            style="width: 0px; height: 0px; border-top-width: 20px; border-top-style: solid; border-top-color: rgb(172, 29, 16); border-right-width: 20px; border-right-style: solid; border-right-color: transparent; box-sizing: border-box;"></section>
                    <section
                            style="width: 0px; height: 0px; border-bottom-width: 20px; border-bottom-style: solid; border-bottom-color: rgb(172, 29, 16); border-right-width: 20px; border-right-style: solid; border-right-color: transparent; box-sizing: border-box;"></section>
                </section>
                <section data-width="100%"
                         style="width: 100%; clear: both;"></section>
            </section>
            <section data-width="100%"
                     style="margin-top: -13px; width: 100%; height: 10px;">
                <section
                        style="margin-right: auto; margin-left: auto; width: 10px; height: 10px; border-radius: 100%; border: 1px solid rgb(172, 29, 16); display: inline-block; box-sizing: border-box; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;"></section>
            </section>
            <section data-width="100%"
                     style="margin-top: 2px; width: 100%; height: 15px; overflow: hidden;">
                <section
                        style="margin-top: -15px; margin-right: auto; margin-left: auto; width: 30px; height: 30px; border-radius: 100%; border: 1px solid rgb(172, 29, 16); box-sizing: border-box;">
                    <br/></section>
            </section>
        </section>
    </section>
    <p style="color: rgb(62, 62, 62);  line-height: 25.6px;">
        <br/></p>
    <p style="white-space: normal; color: rgb(62, 62, 62);  line-height: 25.6px; text-align: center;">
        （门店排序不分先后）</p>
    <p style="white-space: normal; color: rgb(62, 62, 62);  line-height: 25.6px; text-align: center;">
        <br/></p>
    <%
        Connection connection = DriverManager.getConnection(url);
        Statement stat = connection.createStatement();
        String sql = "select id,STORE_NAME,address,CONTACTS,tel,pic_path from store_info where city='" + cityName + "'";
        ResultSet rs = stat.executeQuery(sql);
        int i = 0;
        while (rs.next()) {
            i++;
            String storeId = rs.getString("id");
            String store = rs.getString("STORE_NAME");
            String pic = rs.getString("pic_path");
            String address = rs.getString("address");
            String tel = rs.getString("tel");
            String contacts = rs.getString("CONTACTS");
    %>
    <p style="color: rgb(62, 62, 62);  line-height: 25.6px;">
        <strong><span
                style="font-size: 14px; color: #262626;"><%=i%>. &nbsp;<%=store%></span></strong>
    </p>
    <p style="color: rgb(62, 62, 62);  line-height: 25.6px;">
        <img src="<%=pic%>"/>
    </p>
    <p style="color: rgb(62, 62, 62);  line-height: 25.6px;">
        <strong><span
                style="font-size: 14px; color: #262626;">门 &nbsp; &nbsp; &nbsp; 店：<%=store%></span></strong>
    </p>
    <p style="color: rgb(62, 62, 62);  line-height: 25.6px;">
        <span style="font-size: 14px; color: #262626;">联系电话：<%=tel%>（<%=contacts%>）</span>
    </p>
    <p style="color: rgb(62, 62, 62);  line-height: 25.6px;">
        <span style="font-size: 14px; color: #262626;">门店地址：<%=address%></span>
    </p>
    <p style="color: rgb(62, 62, 62);  line-height: 25.6px; text-align: center;">
        <span style="color: #FF0000; font-size: 14px;"><strong>爱心捐赠者信息：</strong></span>
    </p>
    <table>
        <tr>
            <th>
                <span>姓名</span>
            </th>
            <th>
                <span>金额</span>
            </th>

        </tr>

        <%
            Statement instat = connection.createStatement();
            String insql = "select name,money from donation_info where store_id=" + storeId;
            ResultSet inrs = instat.executeQuery(insql);
            while (inrs.next()) {
                String name = inrs.getString("name");
                String money = inrs.getString("money");
        %>
        <tr>
            <td>
                <p>
                    <span><%=name%></span>
                </p>
            </td>
            <td>
                <p>
                    <span><%=money%>元</span>
                </p>
            </td>
        </tr>
        <%}%>
    </table>
    <%
        }
    %>

</section>
<p><br/></p>
<p style="color: rgb(62, 62, 62); line-height: 25.6px; white-space: normal; text-align: center;">
    <strong>
        <span style="color: #FF0000; font-size: 20px;">仁和公益之行</span>
    </strong>
    <strong style="line-height: inherit;">
        <span style="color: #FF0000; font-size: 20px;">期待您的加入！</span>
    </strong>
</p>
<p><br/></p>

</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>