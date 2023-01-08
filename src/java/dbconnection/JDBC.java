/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Gayan
 */
public class JDBC {

    static String url = "jdbc:mysql://localhost:3306/staff";

    public Connection con() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection c = DriverManager.getConnection(url, "root", "rGgr92");
        return c;
    }

    public void putData(String sql) throws Exception {
        Statement st = con().createStatement();
        st.executeUpdate(sql);
    }

    public ResultSet getData(String sql) throws Exception {
        Statement st = con().createStatement();
        ResultSet r = st.executeQuery(sql);
        return r;
    }

}
