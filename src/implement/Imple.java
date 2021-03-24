package implement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Dbconn.Dbcon;
import bean.Ownerbean;

import bean.Ownerlogin;
import bean.Uploadbean;
import bean.Userbean;
import bean.Userlogin;
import interfase.Inter;

public class Imple implements Inter {

	Connection con;
	public int ureg(Userbean ub) {
		int sk=0;
		try{
			con=Dbcon.CreateConnection();
			PreparedStatement ps=con.prepareStatement("INSERT INTO cc08.userreg VALUES(?,?,?,?,?)");
		    ps.setString(1, ub.getName());
		    ps.setString(2, ub.getEmail());
		    ps.setString(3, ub.getMobnumber());
		    ps.setString(4, ub.getPswd());
		    ps.setString(5, ub.getCpswd());
		    sk=ps.executeUpdate();	
		}
		catch(Exception e)
		{
		e.printStackTrace();	
		}
		return sk;
	}
	
	

	public boolean ulog(Userlogin ul) {
		boolean ks=false;
		try
		{
			con=Dbcon.CreateConnection();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM cc08.userreg where Name=? and Password=?");
			ps.setString(1, ul.getName());
			ps.setString(2, ul.getPswd());			
			ResultSet rs=ps.executeQuery();
			ks=rs.next();	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ks;
	}
	
	
	public int oreg(Ownerbean ob) {
          int ss=0;
          try
          {
        	  con=Dbcon.CreateConnection();
        	  PreparedStatement ps=con.prepareStatement("INSERT INTO cc08.ownerreg VALUES(?,?,?,?,?)");
        	  ps.setString(1, ob.getName());
        	  ps.setString(2, ob.getMail());
        	  ps.setString(3, ob.getMobnumber());
        	  ps.setString(4, ob.getPswd());
        	  ps.setString(5, ob.getCpswd());
        	  ss=ps.executeUpdate();  
          }
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return ss;
	}
	
	
	public boolean olog(Ownerlogin ol) {
		boolean kk=false;
		try
		{
			con=Dbcon.CreateConnection();
			PreparedStatement ps=con.prepareStatement("SELECT * FROM cc08.ownerreg where Name=? and Password=?");
			ps.setString(1, ol.getName());
			ps.setString(2, ol.getPwsd());
			
			ResultSet rs=ps.executeQuery();
			kk=rs.next();
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return kk;
	}



	public int file(Uploadbean upb) {
		int dd=0;
		try
		{
			con=Dbcon.CreateConnection();
			 PreparedStatement ps=con.prepareStatement("INSERT INTO cc08.fileupload  VALUES(?,?,?,?,?,?,?,?)");
			 ps.setString(1, upb.getFileowner());
			 ps.setString(2, upb.getFilename());
			 ps.setString(3, upb.getFiletype());
			 ps.setString(4, upb.getFilekey());
			 ps.setString(5, upb.getFilesize());
			 ps.setString(6, upb.getFilecontent());
			 ps.setString(7, upb.getFileencrypt());
			 ps.setString(8, upb.getFiledecrypt());
			 
			 dd=ps.executeUpdate();	
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return dd;
	}

	public int Request(Uploadbean uprq) {
      int aa=0;
      try
      {
    	  con=Dbcon.CreateConnection();
    	  PreparedStatement ps=con.prepareStatement("INSERT INTO cc08.request VALUES(?,?,?,?,?)");
    	  ps.setString(2, uprq.getFileowner());
    	  ps.setString(1, uprq.getFileuser());
    	  ps.setString(3, uprq.getFilename());
    	  ps.setString(4, uprq.getFilekey());
    	  ps.setString(5, "Request");
    	  aa=ps.executeUpdate();
   
      }

	catch(Exception e)
	{
		e.printStackTrace();
	}
		
		return aa;
	}

	
	

	public int Response(Uploadbean uprp) {
     int rr=0;
     try
     {
    	 con=Dbcon.CreateConnection();
   	     PreparedStatement ps=con.prepareStatement("INSERT INTO cc08.response VALUES(?,?,?,?)");
   	    ps.setString(1, uprp.getFileowner());
		ps.setString(2, uprp.getFileuser());
		ps.setString(3, uprp.getFilename()); 
		ps.setString(4, uprp.getFilekey());	
		rr=ps.executeUpdate();
     }
      catch(Exception e)

      {
	e.printStackTrace();
       }
		return rr;
}
	public int add(){
		return 0;
		
	}
}
