

<%@page import="model.EmployeeModel"%>
<%@page import="dataentity.EmployeeDataEntity"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if (request.getSession().getAttribute("admin") != null) {

        Vector<EmployeeDataEntity> v = new EmployeeModel().getAllEmployeeData();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>VIEW_EMPLOYEE</title>
        <style>
            body{
                background-color:peru;

            }
        </style>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">
    </head>
    <body>

    </div>
    <main style="margin-left: 0%;">
        <div class="row">
            <div class="col" style="margin-top: 2%;">
                <h3 style="margin-left: 50px;">View Employee</h3>
            </div>
            <div class="col" style="margin-top: 2%;">
                <h3><a href="adminpanel.jsp" class="link-primary" style="margin-left: 60%;">Back</a></h3>
            </div>
        </div>
        <hr />

        <table class="table table-success table-striped" style="width: 95%; margin-left: 2%; margin-top: 5%">
            <tr>
                <th cope="col">StaffID</th>
                <th cope="col">Name</th>
                <th cope="col">Address</th>
                <th cope="col">Telephone Number</th>
                <th cope="col">Email</th>
                <th cope="col">Department</th>
                <th cope="col">Position</th>
            </tr>

            <%
                for (int i = 0; i < v.size(); i++) {

                    EmployeeDataEntity emp = v.elementAt(i);
            %>

            <tr>
                <td><%=emp.getStaffId()%></td>
                <td><%=emp.getName()%></td>
                <td><%=emp.getAddress()%></td>
                <td><%=emp.getTelephone()%></td>
                <td><%=emp.getEmail()%></td>
                <td><%=emp.getDepartment()%></td>
                <td><%=emp.getPosition()%></td>
            </tr>

            <%}%>
        </table>


    </main>
</body>

</html>

<%    } else {
        response.sendRedirect("index.jsp");
    }

%>
