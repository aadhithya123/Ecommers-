<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="UTF-8"> -->
<!-- <title>Insert title here</title> -->
<!-- <script type="text/javascript"> -->


<!-- </script> -->
<!-- </head> -->
<!-- <body> -->
<!-- Logout successfully -->
<!-- </body> -->
<!-- </html> -->



<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Disable Back Button in Browser - Online Demo</title>
    
    <script type="text/javascript">
        window.history.forward();
        alert('alert')
        function noBack() {
            window.history.forward();
            alert('no back')
        }
    </script>
</head>
<body onload="noBack()" onpageshow="if (event.persisted) noBack()" onunload="">
   <a href="noback.html">NoBack Page</a>
   <jsp:forward page='Login'/>
</body>
</html>