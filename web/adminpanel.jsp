

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if (request.getSession().getAttribute("admin") != null) {

%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADMIN_PANEL</title>
        <style>
            body {

                margin: 0;
                padding: 0;
                background: url(admin_bg.jpg);
                background-size: cover;
                background-position: center;
                font-family: sans-serif;

            }
        </style>
        <link rel="stylesheet" type="text/css" href="style.css">
    </head>

    <link rel="stylesheet" type="text/css" href="style.css">
    <link rel="stylesheet" href="css/main.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">

    <body style="overflow-x:hidden;">
        <div class="con">
            <div class="sidebar">
                <ul>
                    <li>
                        <a href="#">
                            <i class="fas fa-circle-user"></i>
                            <div class="title"><%=request.getSession().getAttribute("admin")%></div>
                        </a>
                    </li>
                    <li>
                        <a href="viewemployee.jsp">
                            <i class="fas fa-user-check"></i>
                            <div class="title">View Employees</div>
                        </a>
                    </li>
                    <li>
                        <a href="Salaryreport.jsp">
                            <i class="fas fa-users"></i>
                            <div class="title">Salary Report</div>
                        </a>
                    </li>
                    <li>
                        <a href="leavereport.jsp">
                            <i class="fas fa-map-location-dot"></i>
                            <div class="title">Leave Report</div>
                        </a>
                    </li>
                    <li>
                        <a href="addtimesheet.jsp">
                            <i class="fas fa-user-check"></i>
                            <div class="title">Add Timesheet</div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <main style="margin-left: 30%;">
            <div class="row">
                <div class="col" style="margin-top: 2%;">
                    <h3 style="margin-left: 30px; color: black;">  &#160 Admin Panel</h3>
                </div
                <div class="col" style="margin-top: 1%;">
                    <h3><a href="logOut" class="link-primary" style="margin-left: 80%" style="color: white;" style="text-decoration:none;" >LOGOUT</a></h3>
                </div>
            </div>
            <hr />


    </body>

</html>

<%    } else {
        response.sendRedirect("index.jsp");
    }

%>
