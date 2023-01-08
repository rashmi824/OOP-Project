/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dbconnection.JDBC;
import java.sql.ResultSet;

/**
 *
 * @author Gayan
 */
public class AdminLoginModel {

    public String adminLogin(String uName, String pWord) throws Exception {

        String tag = null;

        ResultSet r = new JDBC().getData("SELECT * FROM admin WHERE username='" + uName + "' AND password='" + pWord + "'");
        if (r.next()) {
            if (uName.equals(r.getString("username")) && pWord.equals(r.getString("password"))) {
                tag = "ok";
            }
        } else {
            tag = "Your username or password is incorrect!";
        }
        return tag;
    }

}
