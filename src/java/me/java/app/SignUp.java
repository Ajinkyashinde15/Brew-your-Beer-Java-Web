/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package me.java.app;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**

 */
public class SignUp extends ActionSupport implements ModelDriven<User>{
    User u=new User();
    
     public String execute()
    {
        String q="insert into signup(name,address,phone,email,gender,dob,username,password) values('"+
                u.getName()+"','"+u.getAddress()+"','"+u.getPhone()+"',"
                + "'"+u.getEmail()+"','"+u.getGender()+"','"+u.getDob()+"','"+u.un+"','"+u.getPass()+"')";
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
}
