<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Disable Back Button in Browser - Online Demo</title>
    <style type="text/css">
        body, input {
            font-family: Calibri, Arial;
        }
    </style>
    <script type="text/javascript">
        window.history.forward();
        function noBack() {
            window.history.forward();
        }
    </script>
</head>
<body onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">
    <H2>Demo</H2>
    <p>This page contains the code to avoid Back button.</p>
    <p>Click here to Goto <a href="noback.html">NoBack Page</a></p>
</body>
</html>