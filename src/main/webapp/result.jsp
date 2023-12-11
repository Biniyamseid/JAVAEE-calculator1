<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            background: #f1f3f5;
            font-family: segoe ui,roboto,oxygen,ubuntu,cantarell,fira sans,droid sans,helvetica neue,sans-serif;
        }

        .container {
            box-shadow: 0 6px 8px rgba(102,119,136,.03), 0 1px 2px rgba(102,119,136,.3);
            background-color: #fff;
            width: 500px;
            height: auto;
            margin: 40px auto;
            padding: 20px 30px 20px 30px;
        }

        .container:first-child > * {
            padding-left: 40px;
        }

        h1 {
            font-weight: 400;
            margin-bottom: 30px;
        }

        h1 > span {
            display: block;
            font-weight: 400;
            font-size: 0.9rem;
            color: #999;
            margin-top: 0;
        }

        button, input[type="text"] {
            padding: 8px;
            border-radius: 4px;
            border: 1px solid #f2f2f2;
            display: inline-block;
            margin-left: 20px;
            min-width: 200px;
        }

        input[type="radio"] {
            position: relative;
            top: 2px;
        }

        button {
            background-color: #28a745;
            color: white;
            font-size: 0.9rem;
            min-width: auto;
            padding: 10px 25px 10px 25px;
        }

        .input-control {
            margin-bottom: 15px;
        }

        .input-control.button, .input-control.controls {
            margin-top: 25px;
            margin-left: 80px;
        }

        .input-control.controls {
            margin-left: 95px;
            font-size: 0.9rem;
        }

        .container.result {
            padding-left: 0;
            padding-right: 0;
            font-size: 1rem;
            text-align: center;
        }

        p.answer {
            font-size: 6rem;
            margin: 0;
            color: #dc3545;
            font-weight: 300;
        }


    </style>
    <title>Calculation Result</title>
</head>
<body>
<div class="container result">
    <div>result is :</div>
    <span><p class="answer">${result}</p></span>
</div>
</body>
</html>