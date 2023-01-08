
<%@page import="model.LeaveModel"%>
<%@page import="dataentity.LeaveDataEntity"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if (request.getSession().getAttribute("admin") != null) {

        Vector<LeaveDataEntity> v = new LeaveModel().getAllLeaveData();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LEAVE_REPORT</title>
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
                <h3 style="margin-left: 50px;">Leave Report</h3>
            </div>
            <div class="col" style="margin-top: 2%;">
                <h3><a href="adminpanel.jsp" class="link-primary" style="margin-left: 60%;">Back</a></h3>
            </div>
        </div>
        <hr />

        <table class="table table-success table-striped" style="width: 95%; margin-left: 2%; margin-top: 5%">
            <tr>
                <th cope="col">LeaveID</th>
                <th cope="col">Date</th>
                <th cope="col">Leave Reason</th>
                <th cope="col">Status</th>
                <th cope="col">App_Person</th>
            </tr>
            <%
                for (int i = 0; i < v.size(); i++) {

                    LeaveDataEntity leave = v.elementAt(i);
            %>

            <tr>
                <td><%=leave.getLeaveId()%></td>
                <td><%=leave.getDate()%></td>
                <td><%=leave.getLeave()%></td>
                <td><%=leave.getStatus()%></td>
                <td><%=leave.getAppPerson()%></td>
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
