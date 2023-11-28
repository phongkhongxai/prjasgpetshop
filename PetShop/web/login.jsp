<%-- 
    Document   : login
    Created on : Jul 9, 2023, 2:00:12 PM
    Author     : truon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <style>
            .span {
                text-decoration: none;
                color:black;
            }

            .span a {
                color: cadetblue;
            }
            body {
                /*// background-image: url("https://img.freepik.com/free-vector/frame-with-dogs-vector-white-background_53876-127700.jpg?w=1060&t=st=1688888526~exp=1688889126~hmac=dff84883a8ab58fdaf8395704ddaa3f6d0ea9210485637d2a4cc615884a1729b");*/
                background: url("https://img.freepik.com/free-vector/frame-with-dogs-vector-white-background_53876-127700.jpg?w=1060&t=st=1688888526~exp=1688889126~hmac=dff84883a8ab58fdaf8395704ddaa3f6d0ea9210485637d2a4cc615884a1729b");
                background-size: cover;
            }


            .login-box {
                position: absolute;
                top: 50%;
                left: 50%;
                width: 400px;
                padding: 40px;
                transform: translate(-50%, -50%);
                background: menu;
                box-sizing: border-box;
                box-shadow: 0 15px 25px rgba(0,0,0,.6);
                border-radius: 10px;
            }

            .login-box .user-box {
                position: relative;
            }

            .login-box .user-box input {
                width: 100%;
                padding: 10px 0;
                font-size: 16px;
                color: burlywood;
                margin-bottom: 30px;
                border: none;
                border-bottom: 1px solid burlywood;
                outline: none;
                background: transparent;
            }

            .login-box .user-box label {
                position: absolute;
                top: 0;
                left: 0;
                padding: 10px 0;
                font-size: 16px;
                color: burlywood;
                pointer-events: none;
                transition: .5s;
            }

            .login-box .user-box input:focus ~ label,
            .login-box .user-box input:valid ~ label {
                top: -20px;
                left: 0;
                color: #bdb8b8;
                font-size: 12px;
            }

            .login-box form button {
                position: relative;
                display: inline-block;
                padding: 10px 20px;
                color: black;
                font-size: 16px;
                text-decoration: none;
                text-transform: uppercase;
                overflow: hidden;
                transition: .5s;
                margin-top: 40px;
                letter-spacing: 4px
            }

            .login-box button:hover {
                background: #ff9933;
                color: #fff;
                border-radius: 5px;
                box-shadow: 0 0 5px #ff9933,
                    0 0 25px #ff9933,
                    0 0 50px #ff9933,
                    0 0 100px #ff9933;
            }
            .login-box a:hover {
                background: #ff9933;
                color: #fff;
                border-radius: 5px;
                box-shadow: 0 0 5px #ff9933,
                    0 0 25px #ff9933,
                    0 0 50px #ff9933,
                    0 0 100px #ff9933;
            }

            .login-box a span {
                position: absolute;
                display: block;
            }

            @keyframes btn-anim1 {
                0% {
                    left: -100%;
                }

                50%,100% {
                    left: 100%;
                }
            }

            .login-box a span:nth-child(1) {
                bottom: 2px;
                left: -100%;
                width: 100%;
                height: 2px;
                background: linear-gradient(90deg, transparent, #03f40f);
                animation: btn-anim1 2s linear infinite;
            }


             

        </style>
    </head>
    <body>
        <div class="login-box">

            <form action="LoginController" method="post">
                <div class="user-box">
                    <input type="text" name="userid" required="">
                    <label>Username</label>
                </div>
                <div class="user-box">
                    <input type="password" name="password" required="">
                    <label>Password</label>

                </div>
                <p  style="color: red;margin-top: 0"><strong>${requestScope.loginError}</strong></p>
                <div style="text-align: center;">
                    <button style="margin-top: 0;border: 0; " type="submit">LOGIN</button>
                    <span></span>
                </div>



            </form>
            <span class="span"><div style="text-align: center; margin-top: 10px">Don't have an account? <a href="create.jsp">Sign up</a></div></span>
        </div>
    </body>
</html>
