<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".tijiao").click(function (){
                var name = $("#name1").val();
                var publishdate = $("#publishdate1").val();
                if(name==""){
                    alert("用户名称不能为空");
                }else{
                    $.ajax({
                        url:"/addBookABC",
                        data:$("form").serialize(),
                        type:"post",
                        success:function (result) {
                            if(result){
                                alert("注册成功");
                                /*window.location.href="books.jsp";*/
                            }else{
                                alert("注册失败");
                            }
                        }

                    })
                }
            })

        })


    </script>
</head>
<body>
<form>
    <table border="1">
        <tr>
            <td colspan="2" style="background-color: peru;text-align: center;">用户注册</td>
        </tr>
        <tr>
            <td>用户名<span style="color: red;">*</span></td>
            <td>
                <input type="text" name="name" id="name1" />
            </td>
        </tr>
        <tr>
            <td>密码<span style="color: red;">*</span></td>
            <td>
                <input type="text" name="author" id="author1">
            </td>
        </tr>
       </td>
        </tr>

        <tr>
            <td colspan="2" style="text-align: center;">
                <input type="button" value="注册" class="tijiao" />
                <input type="button" value="返回" onclick="window.location.href='index.jsp'" />
            </td>
        </tr>
    </table>
</form>
</body>
</html>
