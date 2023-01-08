/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dataentity.LeaveDataEntity;
import dbconnection.JDBC;
import java.sql.ResultSet;
import java.util.Vector;

/**
 *
 * @author Gayan
 */
public class LeaveModel {

    public Vector getAllLeaveData() throws Exception {

        Vector v = new Vector();

        ResultSet r = new JDBC().getData("SELECT * FROM leavedata");

        while (r.next()) {

            LeaveDataEntity leave = new LeaveDataEntity();
            leave.setLeaveId(r.getInt("leave_id"));
            leave.setDate(r.getDate("date"));
            leave.setLeave(r.getString("leave"));
            leave.setStatus(r.getString("status"));
            leave.setAppPerson(r.getString("appo_person"));

            v.add(leave);

        }

        return v;
    }

}
