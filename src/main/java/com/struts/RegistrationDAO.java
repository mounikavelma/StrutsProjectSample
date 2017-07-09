package com.struts;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class RegistrationDAO {
	Connection con;
	Statement st;
	ResultSet rs;
	public void insertStudentDetails(int sid, String fname, String lname, String mailid, String password, String confirmpassword) throws Exception{
		try{
		Class.forName("com.mysql.jdbc.Driver");
		con= DriverManager.getConnection("jdbc:mysql://localhost:3307/struts", "root","root1");
		try{
			st= con.createStatement();
			int value = st.executeUpdate("insert into registration_details(s_id, f_name, l_name, mail_id, pass_word, confirm_password)"
						+ "values('"+ sid+"','"+ fname+"','"+lname+"','"+mailid+"','"+password+"','"+confirmpassword+"')");
			System.out.println("rows Affected "+ value);
				
			}catch(Exception e){
				System.out.println("sql stmt is not executed " + e);
			}
			con.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	public boolean checkingUser(int sid) {
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3307/struts", "root","root1");
			st = con.createStatement();
			 String sql = "select s_id from registration_details";
			 rs= st.executeQuery(sql);
			 while(rs.next()){
				 if(sid == rs.getRow()){
					 return true;
				 }
			 }
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
		return false;
	}
	
	
}
