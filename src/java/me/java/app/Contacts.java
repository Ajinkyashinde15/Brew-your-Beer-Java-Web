/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package me.java.app;

import com.opensymphony.xwork2.ActionSupport;

 
public class Contacts extends ActionSupport{
    String msg,name,email;

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    public String execute()
    {
        String q="insert into contact(name,email,msg) values('"+name+"','"+email+"','"+msg+"')";
        if(DBConnection.insertRow(q))
        {
            addActionMessage("Contact send successfully");
            return "success";
        }
        return "fail";
    }
}
