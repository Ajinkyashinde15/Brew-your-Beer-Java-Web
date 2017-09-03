/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package me.java.app;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 *
 * @author Abhi
 */
public class SignIn extends ActionSupport implements ServletRequestAware,SessionAware,ModelDriven<Login>{
    Login u=new Login();
    Map<String, Object> map;
    HttpServletRequest req;
    
       public String getProfile()
    {
        try {
            String q="select * from signup where username='"+map.get("un")+"'";
            
            User p=new User();
            ResultSet rs=DBConnection.getCon().createStatement().executeQuery(q);
            if(rs.next())
            {
                p.setName(rs.getString("name"));
                p.setAddress(rs.getString("address"));
                p.setDob(rs.getString("dob"));
                p.setEmail(rs.getString("email"));
                p.setGender(rs.getString("gender"));
                p.setPhone(rs.getString("phone"));
                p.setUn(rs.getString("username"));
            }
            req.setAttribute("p", p);
            return "success";
        } catch (SQLException ex) {
            Logger.getLogger(SignIn.class.getName()).log(Level.SEVERE, null, ex);
        }
          return "fail";
    }
    
     public String execute()
    {
       String q="select * from signup where username='"+u.un+"' and "
               + "password='"+u.pass+"'";
       if(DBConnection.doLogin(q))
       {
               map.put("un", u.un);
                map.put("cart", new ArrayList<String>());
                
                //chk orders
                //one day left the shipping
                //delivered
                
                
               return "success";
            
       }
        return "fail";
    }
     
     public void orders()
     {
        try {
            ResultSet rs=null;
            rs = DBConnection.getCon().createStatement().executeQuery("select * from myorder where un='"+u.un+"'");
           while(rs.next())
           {
                 Date today = new Date(rs.getString("opdate"));               
        SimpleDateFormat formattedDate = new SimpleDateFormat("yyyy-MM-dd");            
        Calendar c = Calendar.getInstance();        
    c.add(Calendar.DATE, 1);  // number of days to add      
    String tomorrow = (String)(formattedDate.format(c.getTime()));
    System.out.println("Tomorrows date is " + tomorrow);
     Date toda = new Date();
     String ct=(String)(formattedDate.format(toda));
               System.out.println(""+ct);
           }
                    } catch (SQLException ex) {
            Logger.getLogger(SignIn.class.getName()).log(Level.SEVERE, null, ex);
        }
     }
     

    public String logout()
    {
        map.clear();
        return "success";
    }
     
    @Override
    public Login getModel() {
        return u;
    }
    public int getAge(int year, int month, int day) {
    Date now = new Date();
    int nowMonth = now.getMonth()+1;
    int nowYear = now.getYear()+1900;
    int result = nowYear - year;

    if (month > nowMonth) {
        result--;
    }
    else if (month == nowMonth) {
        int nowDay = now.getDate();

        if (day > nowDay) {
            result--;
        }
    }
    return result;
}

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        req=hsr;
    }

    @Override
    public void setSession(Map<String, Object> map) {
        this.map=map;
    }
}

