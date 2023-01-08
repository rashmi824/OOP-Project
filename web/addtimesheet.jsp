

<%@page import="java.util.ArrayList"%>
<%@page import="model.TimeSheetModel"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    if (request.getSession().getAttribute("admin") != null) {

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <title>Add Time Sheet</title>
    </head>



    <body style="margin-left: 20%;">

        <div class="row" style="width: 80%;">
            <div class="col" style="margin-top: 10%;">
                <h3 style="margin-left: 20px;">ADD TimeSheet</h3>
            </div>
            <div class="col" style="margin-top: 10%;">
                <h3><a href="adminpanel.jsp" class="link-primary" style="margin-left: 50%;">BACK TO HOME</a></h3>
            </div>
            <hr />
        </div>

        <form class="row g-3" style="width: 80%;" action="addTimeSheet" method="post">
            <div class="col-md-6" style="margin-top: 10%;">
                <label for="inputid" class="form-label">Select Employee</label>
                <select id="inputState" class="form-select" name="employee" required>
                    <option selected="" disabled="">Choose...</option>

                    <%                        ArrayList<String> empList = new TimeSheetModel().searchAllEmployers();

                        System.out.println(empList.size());
                        if (empList != null) {

                            for (int i = 0; i < empList.size(); i++) {

                    %>
                    <option value="<%=i%>"><%=empList.get(i)%></option>
                    <%}
                        }%>
                </select>
            </div>
            <div class="col-md-6" style="margin-top: 10%;">
                <label for="inputemail" class="form-label">Email</label>
                <input type="email" class="form-control" id="" name="email" placeholder="Enter Email Address" required />
            </div>
            <div class="col-12">
                <label for="inputwork" class="form-label">Work Title</label>
                <input type="text" class="form-control" id="" name="work" placeholder="Enter Work Title" required />
            </div>
            <div class="col-12">
                <label for="inputhours" class="form-label">Number of Hours</label>
                <input type="number" class="form-control" id="" name="hours" placeholder="Enter Hours" required />
            </div>
            <div class="col-md-4">
                <label for="inputyear" class="form-label">Year</label>
                <select id="inputState" class="form-select" name="year" required>
                    <option selected="" disabled="">Choose...</option>
                    <option>2022</option>
                    <option>2021</option>
                    <option>2020</option>
                    <option>2019</option>
                    <option>2018</option>
                </select>
            </div>
            <div class="col-md-6" style="margin-top: 10%;">
                <label for="inputmonth" class="form-label">Month</label>
                <input type="text" class="form-control" id="" name="month" placeholder="Enter Month" required />
            </div>
            <div class="col-md-6" style="margin-top: 10%;">
                <label for="inputdate" class="form-label">Date</label>
                <input type="text" class="form-control" id="" name="date" placeholder="Enter Date" required />
            </div>
            <div class="col-12" style="margin-left: 90%;">
                <button type="submit" class="btn btn-primary" name="submit">Add Data</button>
            </div>
        </form>

        <%if (request.getParameter("msg") != null) {%>

        <h1 style="color: red"><%=request.getParameter("msg")%></h1>

        <%}%>

        <%if (request.getParameter("msg2") != null) {%>

        <h1 style="color: green"><%=request.getParameter("msg2")%></h1>

        <%}%>

    </body>

</html>
<%    } else {
        response.sendRedirect("index.jsp");
    }

%>