/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package me.java.app;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.Date;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

/** 
 */
public class UpdateP extends ActionSupport implements SessionAware,ServletRequestAware, ModelDriven<User>{
    User u=new User();
    Map<String, Object> map;
    HttpServletRequest req;
     public String execute()
    {
        String q="update signup set name='"+
                u.getName()+"',address='"+u.getAddress()+"',phone='"+u.getPhone()+"'"
                + ",email='"+u.getEmail()+"',gender='"+u.getGender()+"',dob='"+u.getDob()+"' where username='"+map.get("un").toString()+"'";
              
        System.out.println(q);
        String d[]=u.dob.split("-");
        for(String x:d)
        {
            System.out.println(x);
        }
        
        if(getAge(Integer.parseInt(d[0]),Integer.parseInt(d[1]),Integer.parseInt(d[2]))>=18){
        if(DBConnection.insertRow(q))
        {
           
            return "success";
        }
        }else{
         addActionMessage("Age is >18");
        }
        return "fail";
    }

    
     
    @Override
    public User getModel() {
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
    public void setSession(Map<String, Object> map) {
       this.map=map;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
        req=hsr;
    }
}
