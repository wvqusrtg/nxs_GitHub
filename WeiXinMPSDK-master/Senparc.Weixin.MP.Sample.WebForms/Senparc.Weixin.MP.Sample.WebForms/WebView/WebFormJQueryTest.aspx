<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebFormJQueryTest.aspx.cs" Inherits="Senparc.Weixin.MP.Sample.WebForms.WebView.WebFormJQueryTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>jQueryLayer测试</title>
    <%--自适应 屏幕分辨率 开始--%>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <%--自适应 屏幕分辨率 结束--%>
    
    <%--引用jquery  开始--%>
    <script src="jquery脚本/jquery-2.1.1.min.js"></script>
    <%--引用jquery  结束--%>


    <%--WeiXin引入JS文件 开始--%>
    <script src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script><%--在需要调用JS接口的页面引入如下JS文件，（支持https）：--%>
    <script src=" http://res.wx.qq.com/open/js/jweixin-1.1.0.js"></script><%--如需使用摇一摇周边功能，请引入--%>
    <%--WeiXin引入JS文件 结束--%>

    <%--jquery layer引入 开始--%>        
    <script src="jquery脚本/layer/layer.min.js"></script>
    <%--jquery layer引入 结束--%>

      <%--jquery判断 开始--%>
    <script type="text/javascript">
        
        $("#Back_WeiXin").click(function () {
            //window.location.replace("WXdefault.aspx");
            // 关闭当前webview窗口 - closeWindow
            WeixinJSBridge.invoke('closeWindow', {
            }, function (res) {

                //alert(res.err_msg);

            });
        });
        $(function () {
            $("input:button").click(function () {
                alert($("input:text").attr("value"));
            });
        })


        function sAlert(info) {
            var message = info;
            layer.alert(message, 8); //风格一，layer弹出层特效
        }
    </script>
    <%--jquery判断 结束--%>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <p>WebFormJQueryTest.aspx【倪新生测试】</p>
        <asp:Button ID="Button1" runat="server" Text="Button【Test】" OnClick="Button1_Click" />
    </div>
        <br/><br/><br/><br/><br/><br/>
     <div>
         <%--<asp:Button ID="Back_WeiXin" runat="server" Text="Back_WeiXin" OnClick="Back_WeiXin" />--%>
         <%--<input type="button" value="Back微信" name="Back_WeiXin" id="clickNXS" onclick ="clickNXS" />--%>
     </div>
           <br/><br/><br/><br/><br/><br/>
     <div>
         <input type="text" name="test" value="这个文本框的name属性值为test"/>
         <input type="button" class="btn" value="获取文本框name值"/>
     </div>
    </form>
</body>
</html>
