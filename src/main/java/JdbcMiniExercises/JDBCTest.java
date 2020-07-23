package JdbcMiniExercises;

// ...


import com.mysql.cj.jdbc.Driver;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class JDBCTest {

    private static List<String> getEmployeeFirstNames(){
        List<String> names = new ArrayList<>();
        try {
            DriverManager.registerDriver(new Driver());
            Connection connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost/codeup_test_db?serverTimezone=UTC&useSSL=false",
                    "root",
                    "codeup"
            );
            Statement stmt = connection.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT first_name FROM employees.employees LIMIT 10");
            while(rs.next()) {
                names.add(rs.getString(1));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return names;
    }

    // OVERLOADED METHOD
    public static List<String> getEmployeeFirstNames(int numOfNames) {
        List<String> names = new ArrayList<>();
        try {
            Connection conn = DriverManager.getConnection(
                    "jdbc:mysql://localhost/codeup_test_db?serverTimezone=UTC&useSSL=false",
                    "root",
                    "codeup"
            );
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT first_name FROM employees.employees LIMIT " + numOfNames);
            while(rs.next()) {
                names.add(rs.getString(1));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return names;
    }


    public static void main(String[] args) {
        System.out.println(getEmployeeFirstNames());
        System.out.println(getEmployeeFirstNames(3));
    }
}
