<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Leave Day</title>
</head>
<body>
<input type="button" value="Add Officer"
       onclick="window.location.href='officerCreate.jsp'; return false;"
/><br><br>
<input type="button" value="Add Staff"
       onclick="window.location.href='staffCreate.jsp'; return false;"
/><br>
<h3>Officers List</h3>
<table border="2">
    <thead>
    <tr>
       <th>
           ID
       </th>
        <th>
            Name
        </th>
        <th>
            Date of Birth
        </th>
        <th>
            Email
        </th>
        <th>
            Joining Date
        </th>
        <th>
            Vacation Leave
        </th>
        <th>
            Sick Leave
        </th>
    </tr>
    </thead>
    <tbody>

    <c:forEach var="officer" items="${officers}">
        <%--<c:url var="update" value="Dashboard">--%>
        <%--<c:param name="showPage" value="UpdatePage"></c:param>--%>
        <%--<c:param name="id" value="${officer.id}" />--%>
        <%--</c:url>--%>
        <tr>
            <td>${officer.id}</td>
            <td>${officer.name}</td>
            <td>${officer.date_of_birth}</td>
            <td>${officer.email}</td>
            <td>${officer.joining_date}</td>
            <td>${officer.vacationDaysCalculator()}</td>
            <td>${officer.calculateSickDays()}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<h3>Staffs List</h3>
<table border="1">
    <thead>
    <tr>
        <th>
            ID
        </th>
        <th>
            Name
        </th>
        <th>
            Date of Birth
        </th>
        <th>
            Email
        </th>
        <th>
            Joining Date
        </th>
        <th>
            Vacation Leave
        </th>
        <th>
            Sick Leave
        </th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="staff" items="${staffs}">
        <%--<c:url var="update" value="Dashboard">--%>
        <%--<c:param name="showPage" value="UpdatePage"></c:param>--%>
        <%--<c:param name="id" value="${officer.id}"/>--%>
        <%--</c:url>--%>
        <tr>
            <td>${staff.id}</td>
            <td>${staff.name}</td>
            <td>${staff.date_of_birth}</td>
            <td>${staff.email}</td>
            <td>${staff.joining_date}</td>
            <td>${staff.vacationDaysCalculator()}</td>
            <td>${staff.calculateSickDays()}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>
