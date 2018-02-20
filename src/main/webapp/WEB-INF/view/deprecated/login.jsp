<%--
  Created by IntelliJ IDEA.
  User: viorelv
  Date: 7/25/2017
  Time: 11:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page session="true" %>
<html>
<head>
    <title>Login</title>
    <style>
        .error {
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid transparent;
            border-radius: 4px;
            color: #a94442;
            background-color: #f2dede;
            border-color: #ebccd1;
        }

        .msg {
            padding: 15px;
            margin-bottom: 20px;
            border: 1px solid transparent;
            border-radius: 4px;
            color: #31708f;
            background-color: #d9edf7;
            border-color: #bce8f1;
        }

        #login-box {
            width: 300px;
            padding: 20px;
            margin: 100px auto;
            background: #fff;
            -webkit-border-radius: 2px;
            -moz-border-radius: 2px;
            border: 1px solid #000;
        }

        #button {
            background-color: black;
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }

    </style>
</head>
<jsp:include page="navigation.jsp"/>
<body onload='document.loginForm.username.focus();'>
<div id="login-box">
    <c:if test="${not empty error}">
        <div class="error">${error}</div>
    </c:if>
    <c:if test="${not empty msg}">
        <div class="msg">${msg}</div>
    </c:if>
    <form name='loginForm' action="<c:url value='/login_check'/>" method='POST'>
        <table id="loginTable">
            <tr>
                <td>Username:</td>
                <td><input type='text' name='username' placeholder="username" required></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type='password' name='password' placeholder="password" required/></td>
            </tr>
            <tr>
                <td></td>
                <td>Remember Me: <input type="checkbox" name="remember-me"/></td>
            </tr>
            <tr>
                <td></td>
                <td><input name="submit" type="submit" value="submit" id="button"/></td>
            </tr>
            <tr>
                <td></td>
                <td><a href="/forgotPassword">Forgot my password</a></td>
            </tr>
        </table>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</div>

</body>
</html>