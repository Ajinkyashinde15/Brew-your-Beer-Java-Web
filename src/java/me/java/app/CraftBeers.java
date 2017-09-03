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
import java.util.ArrayList;
import java.util.Date;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;

/** 
 */
public class CraftBeers extends ActionSupport implements SessionAware,ServletRequestAware, ModelDriven<CraftBeer>{
    CraftBeer cb=new CraftBeer();
    Map<String, Object> map;
    HttpServletRequest req;
     public String execute()
    {
        
        return "fail";
    }

     public String getAllCraftBeers1()
     {
         try{
             ResultSet rs=DBConnection.getCon().createStatement().executeQuery("select * from craftbeer");
             CraftBeer cb=null;
             ArrayList<CraftBeer> al=new ArrayList<>();
             while(rs.next())
             {
                 cb=new CraftBeer();
                 //craftbeer(un, mash, flavours, extra, blogo, bname)
                 cb.setId(rs.getString("cbid"));
                 cb.setMash(rs.getString("mash"));
                 cb.setFlavours(rs.getString("flavours"));
                 cb.setExtra(rs.getString("extra"));
                 cb.setBname(rs.getString("bname"));
                 cb.setBtype(rs.getString("btype"));
                 cb.setBlogo(rs.getString("blogo"));
                 al.add(cb);
             }
             req.setAttribute("cball", al);
             return "success";
         }
         catch(Exception e)
         {
             System.out.println(e);
         }
         return "fail";
     }
     
     public String getAllCraftBeers()
     {
         try{
             ResultSet rs=DBConnection.getCon().createStatement().executeQuery("select * from craftbeer");
             CraftBeer cb=null;
             ArrayList<CraftBeer> al=new ArrayList<>();
             while(rs.next())
             {
                 cb=new CraftBeer();
                 //craftbeer(un, mash, flavours, extra, blogo, bname)
                 cb.setId(rs.getString("cbid"));
                 cb.setMash(rs.getString("mash"));
                 cb.setFlavours(rs.getString("flavours"));
                 cb.setExtra(rs.getString("extra"));
                 cb.setBname(rs.getString("bname"));
                 cb.setBlogo(rs.getString("blogo"));
                 
                 cb.setBtype(rs.getString("btype"));
                 cb.setUn(rs.getString("un"));
                 al.add(cb);
             }
             req.setAttribute("cb", al);
             return "success";
         }
         catch(Exception e)
         {
             System.out.println(e);
         }
         return "fail";
     }
  static   ArrayList<String> cart=new ArrayList<>();
      public String AddToCart()
     {
         if(!cart.contains(req.getParameter("id").toString()))
         {
         cart.add(""+req.getParameter("id"));
         }
        map.put("cart", cart);
          return "success";
     }
      
         public String rFromCart()
     {
         if(cart.contains(req.getParameter("id").toString()))
         {
         cart.remove(""+req.getParameter("id"));
         }
        map.put("cart", cart);
          return "success";
     }
     
     public String DCraftBeers()
     {
         
        try {
            DBConnection.getCon().createStatement().executeUpdate("delete from craftbeer where cbid="+req.getParameter("cbid"));
            return "success";
        } catch (SQLException ex) {
            Logger.getLogger(CraftBeers.class.getName()).log(Level.SEVERE, null, ex);
        }
          return "success";
     }
      public String ACraftBeers()
     {
         
        try {
            DBConnection.getCon().createStatement().executeUpdate("insert into craftbeer(un, mash, flavours, extra, blogo, bname,btype)"
                                                                     + " values('"+map.get("un").toString()+"','"+cb.getMash()
                                                                        +"','"+cb.getFlavours()+"','"+cb.getExtra()+"','"+cb.getBlogo()+"','"+cb.getBname()+"','"+cb.getBtype()+"')");
            return "success";
        } catch (SQLException ex) {
            Logger.getLogger(CraftBeers.class.getName()).log(Level.SEVERE, null, ex);
        }
          return "success";
     }
     
    
     
    @Override
    public CraftBeer getModel() {
        return cb;
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

