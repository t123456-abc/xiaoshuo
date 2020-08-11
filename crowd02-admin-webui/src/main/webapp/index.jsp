<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">

 $(function () {
   /*登录*/
$("#denglu").click(function () {
    /*var username = $("#username1").val();
    var password = $("#password1").val();*/

    $.ajax({
        url:"/getUsersNamePassword",
        data:$("form").serialize(),
        /*data:{"username":username},
        data:{"password":password},*/
        type:"post",
        success:function (retult) {
            if (retult){
                alert("登录成功");
                window.location.href="SUCCES.jsp";
            }else {
                $("#shibai").empty().append("用户名密码错误")
            }


        }


    })


})
})


    </script>

</head>
<body>

<table border="1">
    <tr>
      <td style="text-align: center;" colspan="3"><h1>登录系统</h1></td>
    </tr>
<form>
    <tr>
     <td align="center">用户名:</td>

        <td align="center" colspan="2"><input type="text" name="username" id="username1"></td>
    </tr>

    <tr>
        <td align="center">密码:</td>
        <td align="center"><input type="password" name="password" id="password1"></td>
    </tr>
<tr>
    <td align="center" colspan="3">
        <input type="button" id="denglu" value="登录"  >
        <input type="button" value="注册" onclick="window.location.href='add.jsp'"/>
    </td>
</tr>
</form>
<tr id="shibai" style="color: red;" ></tr>



</table>



</body>
</html>
