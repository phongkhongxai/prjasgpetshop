<%-- 
    Document   : thanks
    Created on : Jul 20, 2023, 10:55:39 PM
    Author     : truon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            /* styles.css */

            body {
                font-family: Arial, sans-serif;
                background-color: #f7f7f7;
                text-align: center;
                margin: 0;
                padding: 0;
            }

            h1 {
                color: #007bff;
                font-size: 36px;
                margin-top: 50px;
            }

            h3 {
                font-size: 24px;
                margin-top: 20px;
                color: #555;
            }

            a {
                display: block;
                margin-top: 30px;
                font-size: 24px;
                color: #007bff;
                text-decoration: none;
                border: 2px solid #007bff;
                border-radius: 6px;
                padding: 10px 20px;
                transition: background-color 0.3s ease;
            }

            a:hover {
                background-color: #007bff;
                color: #fff;
            }

            .container {
                max-width: 800px;
                margin: 0 auto;
                padding: 20px;
            }

        </style>
    </head>
    <body>
        <h1>Cảm ơn ${name} đã mua hàng.</h1><br>
        <h3>Đơn hàng sẽ đến với bạn trong vài ngày nữa.</h3>
        <a style="font-size: 14px" href="LoadController">Tiếp tục mua sắm</a>
    </body>
</html>
