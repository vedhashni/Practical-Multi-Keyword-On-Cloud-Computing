package Dbconn;

import java.sql.Connection;
import java.sql.DriverManager;

public class Dbcon {
	
	static Connection con;
	public static Connection CreateConnection()

	{
		try{
			
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/CC08","root","root");
		}
		
		catch(Exception e){
			e.printStackTrace();
		}
		return con;
		}
}
