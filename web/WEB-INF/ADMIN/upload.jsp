<%-- 
    Document   : upload
    Created on : 5 juin 2015, 09:18:12
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <form method="post" action="<%=request.getContextPath()%>/UploadExcelServlet" enctype="multipart/form-data">
            file:<input type="file"  name="excelFile"/><br>
            <button class="button" type="submit">Upload</button>
        </form>
    </body>
</html>
