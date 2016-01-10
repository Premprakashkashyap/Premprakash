package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import databaseconnection.databasecon;

public class ViewDAO 
{
	
	public static View getViewById(String pid)
	{
		View v1=null;
		Connection con  = databasecon.getconnection();
		
		try 
		{
			PreparedStatement statement = con.prepareStatement("select  * from view where id = ?");
			statement.setInt(1, Integer.parseInt(pid));
			ResultSet rs = statement.executeQuery();
			
			while (rs.next())
			{
				int id = rs.getInt(1);
				String uid = rs.getString(3);
				String name = rs.getString(4);
				String setting = rs.getString(5);
				String user = rs.getString(6);
				String statususa = rs.getString(7);
				String relationship = rs.getString(8);
				String statususb = rs.getString(9);
				String fgroup = rs.getString(10);
				String statususc = rs.getString(11);				
				
				 v1 = new View(id, uid, name, setting, user, statususa, relationship, statususb, fgroup, statususc);
			}
		} 
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return v1;
	}

}
