package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class MemberTable {

    public static void main(String args[]) throws Exception {
        boolean result = isUsernameAndPasswordExist("dubbril", "pui@1234");
        System.out.println(result);
    }

    public static boolean isUsernameAndPasswordExist(String usr, String pwd) throws Exception {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try {
            final String conStr = "jdbc:mysql://localhost/bookshop";
            final String user = "root";
            final String pass = "vibharam";

            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(conStr, user, pass);
            String sql = "select count(*) from member "
                    + "where username=? and password=?";
            ps = con.prepareCall(sql);
            ps.setString(1, usr);
            ps.setString(2, pwd);

            rs = ps.executeQuery();
            rs.next();
            return rs.getInt(1) >= 1;
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (Exception ex) {

                }
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (Exception ex) {

                }
            }
            if (con != null) {
                try {
                    con.close();
                } catch (Exception ex) {

                }
            }
        }
    }
}
