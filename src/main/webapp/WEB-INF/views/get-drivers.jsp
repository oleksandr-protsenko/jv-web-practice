<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Get all drivers</title>
</head>
<body>
<h1>List of Drivers:</h1>
<table>
    <tr>
        <td>Id</td>
        <td>Name</td>
        <td>License_Number</td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
        <tr>
            <td><c:out value="${driver.id}" /></td>
            <td><c:out value="${driver.name}" /></td>
            <td><c:out value="${driver.licenseNumber}" /></td>
            <td><a href="${pageContext.request.contextPath}/delete-driver?id=${driver.id}">
                Delete this Driver
            </a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
