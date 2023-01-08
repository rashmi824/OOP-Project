/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dataentity.SalaryDataEntity;
import dbconnection.JDBC;
import java.sql.ResultSet;
import java.util.Vector;

/**
 *
 * @author Gayan
 */
public class SalaryModel {

    public Vector getAllSalaryData() throws Exception {

        Vector v = new Vector();

        ResultSet r = new JDBC().getData("SELECT * FROM salary");

        while (r.next()) {

            SalaryDataEntity sal = new SalaryDataEntity();
            sal.setPayId(r.getInt("pay_id"));
            sal.setName(r.getString("name"));
            sal.setYear(r.getInt("year"));
            sal.setMonth(r.getInt("month"));
            sal.setPayment(r.getDouble("payment"));

            v.add(sal);

        }

        return v;
    }

}
