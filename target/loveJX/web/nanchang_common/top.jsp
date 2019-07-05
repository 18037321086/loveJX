<%--
  Created by IntelliJ IDEA.
  User: jinzhiqiang
  Date: 2019/5/19
  Time: 下午12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport"
          content="width=device-width,initial-scale=1.0,maximum-scale=1.0,user-scalable=0,viewport-fit=cover">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <link rel="shortcut icon" type="image/x-icon"
          href="//res.wx.qq.com/mmbizwap/zh_CN/htmledition/images/icon/common/favicon22c41b.ico">

    <style>

        table {
            margin: auto;
            width: 100%;
            font-family: verdana, arial, sans-serif;
            font-size: 11px;
            color: #333333;
            border-width: 1px;
            border-color: #CFCFCF;
            border-collapse: collapse;
        }

        table th {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #CFCFCF;
            background-color: #dedede;
        }

        table td {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #CFCFCF;
            background-color: #ffffff;
        }

        .radius_avatar img {
            display: block;
            width: 100%;
            height: 100%;
            border-radius: 50%;
            -moz-border-radius: 50%;
            -webkit-border-radius: 50%;
            background-color: #eee
        }

        .rich_media_inner {
            word-wrap: break-word;
            -webkit-hyphens: auto;
            -ms-hyphens: auto;
            hyphens: auto
        }

        .rich_media_area_primary {
            padding: 20px 16px 12px;
            background-color: #fafafa
        }

        .rich_media_area_primary.voice {
            padding-top: 66px
        }

        .rich_media_area_primary .weui-loadmore_line .weui-loadmore__tips {
            color: rgba(0, 0, 0, 0.3)
        }

        .mpda_bottom_container .rich_media_extra {
            padding-top: 24px
        }

        html {
            -ms-text-size-adjust: 100%;
            -webkit-text-size-adjust: 100%;
            line-height: 1.6
        }

        body {
            -webkit-touch-callout: none;
            font-family: -apple-system-font, BlinkMacSystemFont, "Helvetica Neue", "PingFang SC", "Hiragino Sans GB", "Microsoft YaHei UI", "Microsoft YaHei", Arial, sans-serif;
            color: #333;
            background-color: #f2f2f2;
            letter-spacing: .034em
        }

        h1, h2, h3, h4, h5, h6 {
            font-weight: 400;
            font-size: 16px
        }

        * {
            margin: 0;
            padding: 0
        }

        a {
            color: #576b95;
            text-decoration: none;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0)
        }

        .rich_media_title {
            font-size: 22px;
            line-height: 1.4;
            margin-bottom: 14px
        }

        @supports (-webkit-overflow-scrolling:touch) {
            .rich_media_title {
                font-weight: 700
            }
        }

        .rich_media_meta_list {
            margin-bottom: 22px;
            line-height: 20px;
            font-size: 0;
            word-wrap: break-word;
            word-break: break-all
        }

        .rich_media_meta_list em {
            font-style: normal
        }

        .rich_media_meta {
            display: inline-block;
            vertical-align: middle;
            margin: 0 10px 10px 0;
            font-size: 15px;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0)
        }

        .meta_enterprise_tag img {
            width: 30px;
            height: 30px !important;
            display: block;
            position: relative;
            margin-top: -3px;
            border: 0
        }

        .rich_media_meta_nickname {
            position: relative
        }

        .rich_media_content {
            overflow: hidden;
            color: #333;
            font-size: 17px;
            word-wrap: break-word;
            -webkit-hyphens: auto;
            -ms-hyphens: auto;
            hyphens: auto;
            text-align: justify
        }

        .rich_media_content * {
            max-width: 100% !important;
            box-sizing: border-box !important;
            -webkit-box-sizing: border-box !important;
            word-wrap: break-word !important
        }

        .rich_media_content p {
            clear: both;
            min-height: 1em
        }

        .rich_media_content em {
            font-style: italic
        }

        .rich_media_content fieldset {
            min-width: 0
        }

        .rich_media_content .list-paddingleft-2 {
            padding-left: 2.2em
        }

        .rich_media_content .list-paddingleft-2 .list-paddingleft-2 {
            padding-left: 30px
        }

        .rich_media_content blockquote {
            margin: 0;
            padding-left: 10px;
            border-left: 3px solid #dbdbdb
        }

        img {
            height: auto !important
        }

        @media only screen and (device-width: 375px) and (device-height: 812px) and (-webkit-device-pixel-ratio: 3) and (orientation: landscape) {
            .rich_media_area_primary {
                padding: 20px 60px 15px 60px
            }

            .rich_media_area_extra {
                padding: 0 60px 21px 60px
            }
        }

        @media screen and (min-width: 1024px) {
            .rich_media_area_primary_inner, .rich_media_area_extra_inner {
                max-width: 677px;
                margin-left: auto;
                margin-right: auto
            }

            .rich_media_area_primary {
                padding-top: 32px
            }
        }

        .original_tool_area .tips_global {
            position: relative;
            padding-bottom: .5em;
            font-size: 15px
        }

        .original_tool_area .tips_global:after {
            content: " ";
            position: absolute;
            left: 0;
            bottom: 0;
            right: 0;
            height: 1px;
            border-bottom: 1px solid #dbdbdb;
            -webkit-transform-origin: 0 100%;
            transform-origin: 0 100%;
            -webkit-transform: scaleY(0.5);
            transform: scaleY(0.5)
        }

        .original_tool_area .radius_avatar {
            width: 27px;
            height: 27px;
            padding: 0;
            margin-right: .5em
        }

        .original_tool_area .radius_avatar img {
            height: 100% !important
        }

        .original_tool_area .flex_cell_bd {
            width: auto;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            word-wrap: normal
        }

        .original_tool_area .flex_cell_ft {
            font-size: 14px;
            color: #888;
            padding-left: 1em;
            white-space: nowrap
        }

        .original_tool_area .icon_access:after {
            content: " ";
            display: inline-block;
            height: 8px;
            width: 8px;
            border-width: 1px 1px 0 0;
            border-color: #cbcad0;
            border-style: solid;
            transform: matrix(0.71, 0.71, -0.71, 0.71, 0, 0);
            -ms-transform: matrix(0.71, 0.71, -0.71, 0.71, 0, 0);
            -webkit-transform: matrix(0.71, 0.71, -0.71, 0.71, 0, 0);
            position: relative;
            top: -2px;
            top: -1px
        }

        .rich_media_global_msg .icon_closed {
            position: absolute;
            right: 15px;
            top: 50%;
            margin-top: -5px;
            line-height: 300px;
            overflow: hidden;
            -webkit-tap-highlight-color: rgba(0, 0, 0, 0);
            background: transparent url(//res.wx.qq.com/mmbizwap/zh_CN/htmledition/images/icon/appmsg/icon_appmsg_msg_closed_sprite.2x2eb52b.png) no-repeat 0 0;
            width: 11px;
            height: 11px;
            vertical-align: middle;
            display: inline-block;
            -webkit-background-size: 100% auto;
            background-size: 100% auto
        }

        .rich_media_global_msg .icon_closed:active {
            background-position: 0 -17px
        }

        .rich_media_global_msg.voice .ic_voice {
            position: absolute;
            top: 50%;
            margin-top: -10px;
            left: 15px;
            display: inline-block;
            width: 13.3px;
            height: 18.3px;
            background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAA3CAYAAAB+fggjAAAAAXNSR0IArs4c6QAACb9JREFUaAW9WX9wVMUd3917d5cf/Agp1OTuQgIlQqUoI1JI1Noojg2I+VU7hVrtDDpadRypgzKjU52x09KOdsS20ypSO/WPWttcAqhTOlSoU4FIoRUn0wEZIMndBUkwGEhyv97bfvaS97L77t3lHYUuc+z3935397vf/e4LJZfQnuPPsW0d25ZQzr9mELKSUnIVzHxB/Dh+lBOKf4OEk0FOyQAl/CyltIt5tL29d/V2FzIkLUQ4FA7dwon+KCF0Fee8rBBdS5aSs/D+PUrYbyKtkb9b9BzAlA7CERrqDN1DOH8C8HU57FwSGat6kBGypbcluhMwFj+75XWwemf1vHQqtZ0T3pCtelkp73uJ79s9bT39dqs5HQyFK79jcPIKFErtSgLHjPvQHQB0EFt2hDE2QHU6RMvpkODrw3o50Uk5p3w2N/SlUKhHTNZjskHBz2pi6ylbH22J/k3mOToYCAceIYT/AgYVPhxJQTkMQ792Ez/yQCY8d0fgRl0nj8J2G5z1mvSJ3qCMrYOTb5l0xQFBDIUDjxmcbzUFJnu621/kf/DUmlM9k7RLh4LtwRChxquck0bFCqWjxENuijXF/iXoioNVnZU36wZ5D7PTTCWsWhyp4uFYa+x1k3Y5ezj6oNgtdTVpL0Lo+mhr9BwO0Xib+/bcWYZB35Sdg/sXsOSNV8o5MXK0LfoKYXQDxpJOMZ8L1g8E33JQT6aeQRoJCOJEMxjxfCvSEtlnEq5Uj5h7Ayv2I8U+5w9du/va0oyD896ZV004RQKebIzQ53EQ/jJJubJQhUa2YBXPmqNgy8vPjZ67N+NgMh6/HwSfyURgniwqLvmJif8/+sNrY6O4XV5WxjKMuvHDQOl9uCksHmX0xydWn0hYBJfAgncXzBhNjjZSnX8Fq3ENdmWWUMUhS2Ebv5HrtjDNg/+B5IY4wos0cVukUskqUwj9xfKS2W9GSEwi5QdxFS5BMn54dGzkHkhOy0x18j9COY1O5VxmhGJylIxMjgUTC7WUkfrqJAkQpfuP3nFUElO4WUgwHHza0HU1wG1SGOi0jeSI+kf92hgZlXg0yajBV0gUwri4vqZud/O7PbhxkGiNvM5NWHKV3NN8LGQbuVdDsYIVzOzHOI+ygzYhR/RAxwdbELcPZDEp+Q+2YQcS2L+Zwc4gdSUQS7Oz5BwIKUqWyq5ApEdDsVmhBKaHnHDQVUg1uwKLkkm+USEScsbjId/ra+7fbaMThMHVdpoTjuyxXloqcUg+Eqe4WBb26/5hGXeCkynyfdA9Fo/SQeZlN/StjUQtmgQUFxVnKhyJlAUGOgP13OC3ygxGWZhhSYtkYqIicUHGnWCUluoFz8mzkRzOCf14Wfyikx2ThvQ0B6XZdvhi1QaoAfZHmiMf40xMJmih4BvxWQnbNCD3i/cunoYab4FMQwr5o4zb4Uh9ZMxOM3Fsf91YfPQfOAeLTJrouYc8K3rEII0ikBcKRLTEhUQNuo8E7NSGh4dnyDOFzIioOpxkZdqyXYGSAV2rMYjhIUamkL2ZcANvG+MWWS4DU/parDm2R8AiBj/Bz3IQe14DPKeDRho1hNyonFplhgp/mmaNhpH6s0VVToNFxR7TPcVFJVZdgMG4cNBq0LvRQhyA2vLaMyDrFouTL169KzBlGkEofdnScQYMXBI/raiuXC1fs4wz2iXLI+U0y7gd3tewL41IVhLvmM6X2eWycM7nZ9EEAXWgWDWPpjWg7tx8+IbD4llhNTadTn8XcWgVBphprbhbLQkngJK/ymTdoE/IuDPME5jYSYx1HLn3EH6/B77Rq/m+FG2L3d7X1Pe+kx5kCBJp4G0clDWmAJTD0db+NhO398GO4G3cMDJBbPIY9bShfgyb+OXqMwGPV9rrskFsc6t4fck0GRZPQ5GnZBpO4x/wvrAmKfP+FzjjYF9zn5i58s0ET8MX8hnGc+BxOGnFi8innBg7UUBsFaV6Pt1CeBMrKD73qG8CbPnKUHvg/lzG+tr6DlGWufJkEWQp/tjgyMBJPF+fWrhj4XSZeSlwJgaFIhyioY7gHvS3moYyK6TRO6JN0b0mzd6HOgIbEBK/gp7fzsOBGMLUX2Z+bWvvnb1T3sd2fYFbDgoET8/56UTqKEBrizDIeY1463tae1BGObeq9qrlBtXb4aRcmVvCmOjneFq+UFZW9lJ3Q3fee9lSmgAUBwUNd+N9CPjfTfDHO0pO+z1FK081nfpUoUuIuKPPD322Gav5OMjWBCURRBGN4GH0QCGvxSwHhcFguPLnGEip97AKXd5y39dPN5yOy4PaYXGrjKToRsTMIzg4M+38cZz+LNYWe8qZp1Izh0QlEVLfctMmzNb6gCP4GGxFcij5W7usHT++NjaI4uHpadr0KkbpZvAH7DKw9iRi98lsejbFcQWF2LJ/LvOe6Yl14m5eLavhU8gqkQdlWj5YnOSL+sXNWNFNmKT1NQsLkGAez3zcIHmfj44rKAYUd2Jxcek6HCP1cHD+Ig5DzonZnT3WdOyCWFGukRUIwkGTL069kdYz319MmlOf00EhjKpiWKPku7IiDF9X3RHMecvIsjIsPqdh1ewO3SXLOMF5HRQKvS39h5GNOmVlnZP1Mu4W9pZ5/4TDZh0ybHkt3iKOqcm0OaWDQpB52DZTQfQo+Vtl3C08kQGO2OStYtlGz6CuHJxZO3MPYnHYMsDJVSKpW3ghAOXKsxaPoup86q4c7F7cncSyHZANGen0Shl3C+PSPy/L4qmZ97525aAwiMLgQ8Uwp8tl3C2MASff00KJMRW3GXLtIFbwY1kXp/kaGXcL42AoDqHit6p5JxuuHfQwj1IvIhFO9QhyGk/QpskM/C3Gyo0y3YRdOzgnNOcTHJS0qYgVrBIfLE28gF75ToN3bySfrmsHM68tTo7JxuKJ+PUyPhWcqbQ5XarI+TRlZxQeENcOjitS5dMc5/oqu8F8+ODI4FrEoPVpBTfL8akK2YIc9DCiFAkoyTbUdNSU5XPK5Im/MQPeZOKZnpNdCu6AFOTgrJLZO2FDrogrUjyxPbQ/VOxgWyG9Fn71h6hoJkMC8exlvl8qQg6I66rE1A22Vz6PEuwZExe92CrQtmmU72U+fzQ9K/15XV1dsuudrhlc50t0XX8Izq1TdAh5I9rWf69Mc4ILdlCU9kNDn32ICvZS0wySAY2W+shSUdw6OSXTCtpioSgePZrPeydWTUncstF8MPRw1dFvunFO2CnYQaGEk3cSn8iWYyVeBGoImqtG6RHxQsQfEJVskE+34C22GxOfb8fiY40owtaAJ0qnciTxcvSlE7VfBPX3IQ8lb/U2R3dgBRGu7tt/AYJkZEGv/oaXAAAAAElFTkSuQmCC) no-repeat center;
            background-size: contain
        }

        .rich_media_global_msg.voice .icon_more {
            position: absolute;
            right: 15px;
            top: 50%;
            margin-top: -6.5px;
            width: 8px;
            height: 13px;
            background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAmCAYAAADeB1slAAAAAXNSR0IArs4c6QAAA49JREFUSA2tVk1IVFEUPveOmhQk1ibfvLFZSJtACqJIIpCIoB+imcFV2Z9ZUVnRomgRGFn2i6mFf5XVotCZMYmgIMhlq6BFENFiwjfPAosgFzXOvNu5o3fmeue98Y16F3PP+c453/fu/xCQmvZSWwwJaC0G6P8WND9IoTmbVFRycpqAdgBWkwRo94V960RsPn1aoPpN9RI6CR0WsDWcjAErtUiqTR/S18+HnNcSTv5zYrwDSatVMgLkH6aciwfj79WYW5+OT4xfsyPnBIgvwt872qBW45ZQzaMlJXCfMPJbDQgfRUoIhduVUW2TwArpaWyX+bnYU9JAAH44FaJIccqCW76Ib7NTjhOOvFPN/8q/IvE3cR+npFJgao9rkiSUXjD2GCNqzMnPbNPYjth3mqINlJAvTsk4kiJmWa3eQe8WpxwVzwjwgFFn/CorL29EkY9qovC5CFDrKq7JVoHl6zNTJCf53/lLk78SN/FcbJRx2cZCixC4ZATGXsu4as8YgQjGamN/q5atOotn4K3A1J4BUMbgsh7Wt6sx2bcV4AkjtSPJxkDjRQL0hVwg21zEglSzN+rdKeOybTtFcgK39ajWZDFWr+IZHxfGQ8mV0YA5nMGmDVcCPNcb8R5gYJ1UCWQfp6PFCI4NyZhrAV6EIiHGrPOAB0ImkW2c0la8u8ICc0wUCWrvC1dsw+3TnN6uanDaJ4zeiIfiA9wtWIAX8XspxeA6iuBlaN88hNzCNXk+JwFOuXJYW5tMQmc+EcqgzXGb2n9XFk1NstX5yKczl89JAF+6vRaBM1m5XAu//qkRGrtb8BThTtqH2/V0LmUWwbvsiREw8X0vcJHxxNbjNm3KUuVaMjmPFuWm2CPesHc/kp+yj06hFMhj/PIOOcfVFLk6xZT0G3vMTpmc27MusityZk/OBfKOwA05MPLIDJn3OJldcxTQotpBYOyEXVEWIw/NoInvuHOznSJfVDs0GzneNw9mI+eyOSPQI9phfCqPO38TFhHaFw/Eu/LliNiMESB5w6zkzD05F8mMYJr8mFC263Fa+vAadvXloj4toEcrjlgMjgrQrseHpBcfkm67WD6M6MN6lTWZeoZjyYxGLcB57MGnsEfF3fjU2G189QBpcUqmBLrnSs4504s8GjLxrwm5qYrg3dKFf6x6VbwQ3yOS/wz8+bS0ruwfELaBY2nyoNkn4gvW65GKRn4WForwP+dONHDaOHeZAAAAAElFTkSuQmCC) no-repeat center;
            background-size: contain
        }

        .preview_appmsg .rich_media_title {
            margin-top: 2.3em
        }

        @media screen and (min-width: 1024px) {
            .rich_media_global_msg {
                position: relative;
                margin-bottom: 32px
            }

            .preview_appmsg .rich_media_title.rich_media_title {
                margin-top: 0
            }
        }

        .account_info .flex_bd {
            padding-left: .85em
        }

        .original_panel .original_account {
            margin-bottom: 18px;
            position: relative;
            z-index: 1
        }

        .original_panel .original_account_avatar {
            width: 28px;
            height: 28px;
            padding: 0
        }

        .original_panel .original_account_nickname {
            padding-left: .85em;
            font-size: 15px;
            color: #576b95
        }

        .original_tool_area .radius_avatar {
            width: 20px;
            height: 20px;
            margin-right: .2em
        }

        .original_tool_area .flex_cell {
            padding: 0;
            font-size: 14px
        }

        .original_tool_area .icon_access:after {
            margin-right: 4px;
            top: 0
        }

        .preview_appmsg .rich_media_title {
            margin-top: 1.5em
        }

        .preview_appmsg .account_info {
            padding-top: 3em
        }

        .account_info .radius_avatar img {
            background-color: transparent
        }

        .original_panel .original_account_avatar {
            width: 30px;
            height: 30px
        }

        .original_panel_tool a {
            color: #576b95
        }

        .rich_media_meta_list .icon_appmsg_tag.default {
            margin-top: -1px
        }

    </style>
</head>
<body id="activity-detail" class="zh_CN mm_appmsg  appmsg_skin_default appmsg_style_default">
<div id="js_article" class="rich_media">

    <div id="js_top_ad_area" class="top_banner"></div>

    <div class="rich_media_inner">

        <div id="page-content" class="rich_media_area_primary">
            <div class="rich_media_area_primary_inner">

                <div id="img-content">

                    <h2 class="rich_media_title" id="activity-name">
                        【<%=cityName%>站】仁和爱心公益行——只需229元，458元乳铁蛋白粉拿到手！还能为福利院儿童送健康！
                    </h2>
                    <div id="meta_content" class="rich_media_meta_list">
                        <span class="rich_media_meta rich_media_meta_nickname" id="profileBt">
                      <a href="javascript:void(0);" id="js_name">仁和孕婴</a>
                    </span>
                    </div>

                    <div class="rich_media_content " lang=="en" id="js_content">

                        <p style="color: rgb(62, 62, 62); line-height: 25.6px; white-space: normal; text-align: center;">
                            <span style="font-size: 14px; letter-spacing: 1px; line-height: 1.5em;">你是否想过？</span><br/>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="font-size: 14px;">世界上还有这样一群孩子</span>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="font-size: 14px;">他们是乡村留守儿童</span>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="font-size: 14px;">小小年纪常年见不到父母</span>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="font-size: 14px;">思念、等待、哭泣……</span>
                        </p>
                        <br>
                        <p style="text-align: center;">
                            <img src="../pic/WechatIMG221.jpeg"
                                 width="640"/>
                        </p>
                        <br>
                        <p style="color: rgb(62, 62, 62); line-height: 25.6px; white-space: normal; text-align: center;">
                            <span style="font-size: 14px; letter-spacing: 1px; line-height: 1.5em;">你是否想过？</span><br/>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="font-size: 14px;">世界上还有这样一群孩子</span>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="font-size: 14px;">他们是贫困家庭的孩子</span>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="font-size: 14px;">生活在角落，远离都市繁华</span>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="font-size: 14px;">食不果腹，衣不蔽体</span>
                        </p>
                        <br>
                        <p style="line-height: 22.4px; text-align: center;">
                            <img src="../pic/WechatIMG212.jpeg"
                                 width="640"/>
                        </p>

                        <br>
                        <p style="color: rgb(62, 62, 62); line-height: 25.6px; white-space: normal; text-align: center;">
                            <span style="font-size: 14px; letter-spacing: 1px; line-height: 1.5em;">你是否想过？</span><br/>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="font-size: 14px;">世界上还有这样一群孩子</span>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="font-size: 14px;">他们的名字叫做福利院儿童</span>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="font-size: 14px;">没有父母充满爱的陪伴、呵护</span>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="font-size: 14px;">他们弱势、无助</span>
                        </p>
                        <br>
                        <p style="line-height: 22.4px; text-align: center;">
                            <img src="../pic/WechatIMG222.jpeg"
                                 width="640"/>
                        </p>
                        <br/>

                        <p style="color: rgb(62, 62, 62); line-height: 25.6px; white-space: normal; text-align: center;">
                            <span style="font-size: 14px; letter-spacing: 1px; line-height: 1.5em;">可是，他们依然乐观、积极</span><br/>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="font-size: 14px;">对生活充满敬畏，对未来抱有期待</span>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="font-size: 14px;">我们是不是可以奉献自己的一份力量</span>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="font-size: 14px;">让我们的爱不再孤单</span>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="color: #FF0000; font-size: 13.5pt; font-weight: bold; letter-spacing: 0.95pt; text-indent: -35.9pt; line-height: 1.6; background-color: #FFFF00;">帮助他们插上翅膀，让他们生活的快乐些？</span>
                        </p>
                        <p style="white-space: normal; line-height: 3em; text-align: center;">
                            <span style="color: #FF0000; font-size: 13.5pt; font-weight: bold; letter-spacing: 0.95pt; text-indent: -35.9pt; line-height: 1.6; background-color: #FFFF00;">---赠人玫瑰手有余香</span>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="font-size: 14px;">让我们帮助贫困儿童享受健康、快乐的生活</span>
                        </p>
                        <br>
                        <p style="line-height: 22.4px; text-align: center;">
                            <img src="../pic/WechatIMG223.jpeg"
                                 width="640"/>
                        </p>
                        <br>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="font-size: 14px;">仁和百城万店爱心公益行，让爱不再孤单，我们诚挚邀请您的参与</span>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; text-align: center; letter-spacing: 1px; line-height: 1.5em;">
                            <span style="font-size: 14px;">仁和百城万店爱心公益行</span>
                        </p>
                        <p style="line-height: 22.4px; text-align: center;">
                            <img src="../pic/logo.jpg"
                                 width="500"/>
                        </p>
                        <p style="text-align: center;"><span
                                style="color: #FF0000; font-size: 20px;">您享受疯狂体验价</span>
                        </p>
                        <p style="text-align: center;"><span
                                style="color: #FF0000; font-size: 20px;">我们代您参与爱心公益事业</span>
                        </p>
                        <p style="text-align: center;"><span
                                style="color: #FF0000; line-height: inherit; font-size: 20px;">给贫困家庭送健康！</span>
                        </p>
                        <br/>
                        <p>
                            <img src="../pic/WechatIMG233.jpeg"
                                 width="640"/>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; line-height: 24px; text-align: center; letter-spacing: 1px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
                            <br/></p>
                        <p style="color: rgb(62, 62, 62); line-height: 25.6px; white-space: normal; text-align: center;">
                            <span style="color: #FF0000; font-size: 36px;"><strong>今天</strong></span>
                        </p>
                        <p style="color: rgb(62, 62, 62); line-height: 25.6px; white-space: normal;">
                            <br/></p>
                        <p style="color: rgb(62, 62, 62); line-height: 25.6px; white-space: normal; text-align: center;">
    <span style="color: #262626;"><strong><span
            style="font-size: 20px;">仁和康健携手<span
            style="color: #FF0000;"><%=cityName%>各大母婴店</span></span></strong></span>
                        </p>
                        <p style="color: rgb(62, 62, 62); line-height: 25.6px; white-space: normal; text-align: center;">
    <span style="color: #262626;"><strong><span
            style="font-size: 20px;">发起一场爱心公益活动</span></strong><span
            style="font-size: 18px;"><strong><span
            style="font-size: 16px;"></span></strong></span></span>
                        </p>
                        <p style="color: rgb(62, 62, 62); white-space: normal; line-height: 24px; text-align: center; letter-spacing: 1px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">
                            <br/></p>
                        <p style="color: rgb(62, 62, 62); line-height: 25.6px; white-space: normal; text-align: center;">
                            <sup><span
                                    style="color: #FF0000; font-size: 36px; background-color: #FFFB00;"><strong><span
                                    style="line-height: 1.6;">仁 和 爱 心 公 益 行</span></strong></span></sup>
                        </p>
                        <br/>

                        <p>
                            <img src="../pic/WechatIMG149.jpeg"
                                 width="640"/>
                        </p>
                        <section
                                style="margin: 3px; padding: 15px; line-height: 24px; box-shadow: rgb(170, 170, 170) 0px 0px 3px; border: 2px solid rgb(240, 240, 240); border-image-source: initial; border-image-slice: initial; border-image-width: initial; border-image-outset: initial; border-image-repeat: initial; box-sizing: border-box;">

                            <p style="color: rgb(62, 62, 62);">
                                <span style="color: #FF0000; font-size: 15px;"><strong>🎈乳铁蛋白的6大优势：👇👇</strong></span>
                            </p>
                            <p style="color: rgb(62, 62, 62);">
                                <span style="color: #0070C0;">如果宝宝</span>
                            </p>
                            <p style="color: rgb(62, 62, 62);">
                                <span style="font-size: 15px;"><strong><span style="color: #FF0000;">👉①、抵抗力低，经常感冒生病的孩子，能减少生病次数；</span></strong></span>
                            </p>
                            <p>
                                <span style="font-size: 15px;"><strong><span style="color: #FF0000;">👉②、生一次病长时间好不了的，能缩短生病的时间；</span></strong></span>
                            </p>
                            <p>
                                <span style="font-size: 15px;"><strong><span style="color: #FF0000;">👉③、感冒初期加量吃，可以防止病情加重，快速痊愈；</span></strong></span>
                            </p>
                            <p>
                                <span style="font-size: 15px;"><strong><span style="color: #FF0000;">👉④、咳嗽严重，气管受损时，能修复气管；</span></strong></span>
                            </p>
                            <p>
                                <span style="font-size: 15px;"><strong><span style="color: #FF0000;">👉⑤、反复性肺炎、气管炎的孩子，能降低发作几率；</span></strong></span>
                            </p>
                            <p>
                                <span style="font-size: 15px;"><strong><span style="color: #FF0000;">👉⑥、贫血的孩子，能帮助铁吸收，让补铁的速度提升4倍；</span></strong></span>
                            </p>

                        </section>
                        <p>
                            <img src="../pic/WechatIMG162.jpeg"
                                 width="640"/>
                        </p>
</body>
</html>
