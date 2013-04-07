package me;
import java.sql.*;

public class ConnectionClass {

  public static Connection getConnection()
    {Connection cn=null;
       try{
   Class.forName("com.mysql.jdbc.Driver");
    cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hp","root","mandeep");

        }
       catch(Exception e)
       {
           System.out.println(e);
       }
      return cn;
   }
        }
    


