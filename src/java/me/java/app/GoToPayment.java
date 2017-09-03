/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package me.java.app;

import com.opensymphony.xwork2.ActionSupport;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

/**
 * 
 */
public class GoToPayment extends ActionSupport implements ServletRequestAware, SessionAware{
    Map<String, Object> map;
    HttpServletRequest req;
    
    @Override
    public void setSession(Map<String, Object> map) {
        this.map=map;
    }

    @Override
    public void setServletRequest(HttpServletRequest hsr) {
      req=hsr;
    }
    public String execute()
    {
        String cartq[]=req.getParameterValues("cartno");
        ArrayList<String> incart=(ArrayList<String>) map.get("cart");
        for(String cc:incart)
        {
            
        System.out.println(cc);
        }
        for(String c:cartq)
        {
            
        System.out.println("\t"+c);
        }
        map.put("order", cartq);
        return "success";
    }
    public String makePayment()
    {
        //get all values
        String card,cvv,expdate,add1,cardno,noncard,add2,country,city,pincode,phone;
        card=req.getParameter("card");
        cvv=req.getParameter("cvv");
        expdate=req.getParameter("expdate");
        add1=req.getParameter("add1");
        add2=req.getParameter("add2");
        cardno=req.getParameter("cardno");
        noncard=req.getParameter("noncard");
        country=req.getParameter("country");
        city=req.getParameter("city");
        pincode=req.getParameter("pincode");
        phone=req.getParameter("phone");
        
        
        
         int order_id=1;
        try {
            //store order
            //orderid, un, opdate, status
            //mydate
            DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd");
LocalDate localDate = LocalDate.now();
String t=dtf.format(localDate);
System.out.println(t);
                      System.out.println("insert into myorder(un, opdate, status) values('"+map.get("un").toString()+"','"+t+"','Order Placed')");
            int x=DBConnection.getCon().createStatement().executeUpdate("insert into myorder(un, opdate, status) values('"+map.get("un").toString()+"','"+t+"','Order Placed')");
            
            if(x>0)
            {
                
                ResultSet rs=DBConnection.getCon().createStatement().executeQuery("SELECT * FROM myorder s order by orderid desc limit 1");
                if(rs.next()){
               order_id=rs.getInt("orderid");
               //add product in order
               //check no of product
               ArrayList<String> cart=(ArrayList<String>) map.get("cart");
                 String order[]= (String[]) map.get("order");
                 int i=0;
               for(String cart1:cart)
               {
                   String q=order[i];
                   int p=Integer.parseInt(q)*10;
                   System.out.println("insert into purchaseproduct( cbid, quantity, price, orderid) "
                           + "values('"+cart1+"','"+q+"','"+p+"','"+order_id+"')");
                   x=DBConnection.getCon().createStatement().executeUpdate("insert into purchaseproduct( cbid, quantity, price, orderid) "
                           + "values('"+cart1+"','"+q+"','"+p+"','"+order_id+"')");
               i++;
               }
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(GoToPayment.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(GoToPayment.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        //store payment for order
        String qp="insert into paymentinfo( un, orderid, card, cvv, expdate, add1, add2, noncard, cardno, country, city, pincode, phone)"
                + "values('"+map.get("un").toString()+"','"+order_id+"','"+card+"' , '"+cvv+"', '"+expdate+"', '"+add1+"', '"+add2+"', '"+noncard+"', '"+cardno+"', '"+country+"', '"+city+"', '"+pincode+"', '"+phone+"')";
        System.out.println(qp);
      int  x=0;
        try {
            x = DBConnection.getCon().createStatement().executeUpdate(qp);
        } catch (SQLException ex) {
            Logger.getLogger(GoToPayment.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(x>0){
                map.put("cart", new ArrayList<String>());
             
                return "success";
        }
        return "fail";
    }
    
}
