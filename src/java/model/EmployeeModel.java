/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dataentity.EmployeeDataEntity;
import dbconnection.JDBC;
import java.sql.ResultSet;
import java.util.Vector;

/**
 *
 * @author Gayan
 */
public class EmployeeModel {

    public Vector getAllEmployeeData() throws Exception {

        Vector v = new Vector();

        ResultSet r = new JDBC().getData("SELECT * FROM employee");

        while (r.next()) {

            EmployeeDataEntity emp = new EmployeeDataEntity();
            emp.setStaffId(r.getString("staff_id"));
            emp.setName(r.getString("name"));
            emp.setAddress(r.getString("address"));
            emp.setTelephone(r.getString("telephone"));
            emp.setEmail(r.getString("email"));
            emp.setDepartment(r.getString("department"));
            emp.setPosition(r.getString("position"));

            v.add(emp);

        }

        return v;
    }

}
