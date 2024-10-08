package hackerthon.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import hackerthon.model.Order;

public class OrderDao {
	private Connection con;
	private String query;
	private PreparedStatement pst;
	private ResultSet rs;
	
	public OrderDao(Connection con) {
		//super();
		this.con = con;
	}
	 public boolean insertOrder(Order model) {
		 boolean result=false;
		 try {
			 query="insert into orders(pro_id,user_id,ord_qua,ord_date) values(?,?,?,?)";
			 pst=this.con.prepareStatement(query);
			 pst.setInt(1,model.getId());
			 pst.setInt(2,model.getuId());
			 pst.setInt(3, model.getQuantity());
			 pst.setString(4, model.getDate());
			 pst.executeUpdate();
			 result=true;
		 }catch(Exception e) {
			 e.printStackTrace();
		 }
		 return result;
	 }
	
}
