/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dbconnection.JDBC;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Gayan
 */
public class TimeSheetModel {

    public ArrayList<String> searchAllEmployers() throws Exception {

        List<String> empList = new ArrayList<String>();
        ResultSet r = new JDBC().getData("SELECT * FROM employee");

        while (r.next()) {

            empList.add(r.getString("name"));
        }

        return (ArrayList<String>) empList;
    }

    public String addTimeSheet(String employee, String email, String work, String hours, int year, int month, int date) throws Exception {
        String tag = null;

        new JDBC().putData("INSERT INTO timesheet(emp_id,email,worktitle,hours,year,month,date)VALUES('" + employee + "','" + email + "','" + work + "','" + hours + "','" + year + "','" + month + "','" + date + "')");

        return tag = "ok";
    }

}
