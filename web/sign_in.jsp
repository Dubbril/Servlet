<%-- 
    Document   : sign_in
    Created on : Aug 25, 2016, 10:07:13 PM
    Author     : DUBBRIL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign in</title>
        <style>
            table{
                margin: 0 auto;
            }
            #a{
                text-align: center;
                color: green;
            }
        </style>
    </head>
    <body>
        <form action="SignInControl" method="POST">
            <table>
                <tr>
                    <td colspan="2"><div id="a"><h3>ลงชื่อเข้าใช้ Bookshop</h3></div></td>
                </tr>
                <tr>
                    <td>ชื่อผู้ใช้</td>
                    <td><input type="text" name="username"/></td>
                </tr>
                <tr>
                    <td>รหัสผ่าน</td>
                    <td><input type="password" name="password" value="" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="OK" /></td>
                </tr>
            </table>
        </form>
    </body>
</html>
