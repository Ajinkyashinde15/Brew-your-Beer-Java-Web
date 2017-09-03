/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package me.java.app;

 
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Abhi
 */
public class DBConnection {
  public static  Connection con=null;
    public static Connection getCon()
    { 
        try {
           
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/brewurbeer","root","root");
            System.out.println("Connection Done");
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return con;
    }
    public static boolean doLogin(String q)
    {
        getCon();
      try {
          Statement s=con.createStatement();
          ResultSet rs=s.executeQuery(q);
          if(rs.next())
          {
              rs.close();
              return true;
              
          }
      } catch (SQLException ex) {
          Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
      }
        
        return false;
    }
    
     public static boolean insertRow(String q)
    {
        getCon();
      try {
          Statement s=con.createStatement();
          int rs=s.executeUpdate(q);
          if(rs>0)
          {
             
              return true;
              
          }
      } catch (SQLException ex) {
          Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
      }
        
        return false;
    }
    
      public static boolean chkName(String q)
    {
        getCon();
      try {
          Statement s=con.createStatement();
          ResultSet rs=s.executeQuery(q);
          if(rs.next())
          {
              rs.close();
              return true;
              
          }
      } catch (SQLException ex) {
          Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
      }
        
        return false;
    }
    public static boolean changePass(String q)
    {
        getCon();
      try {
          Statement s=con.createStatement();
          int x=s.executeUpdate(q);
          if(x>0)
          {
              
              return true;
              
          }
      } catch (SQLException ex) {
          Logger.getLogger(DBConnection.class.getName()).log(Level.SEVERE, null, ex);
      }
        
        return false;
    }
    
}
