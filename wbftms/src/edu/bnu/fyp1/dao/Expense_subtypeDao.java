package edu.bnu.fyp1.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import edu.bnu.fyp1.entity.Expense_subtype;

public class Expense_subtypeDao {

	public List<Expense_subtype> getAllSubtypes(Long expenseTypeId)
			throws Exception {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
		String url = "jdbc:mysql://localhost:3306/web_based_farming_transaction_system";
		String user = "root";
		String pwd = "03144214002";
		Connection con = DriverManager.getConnection(url, user, pwd);

		String sql = "SELECT * FROM expense_subtype where expense_type_id=? ";
		List<Expense_subtype> List = new ArrayList<>();
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setLong(1, expenseTypeId);

		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			Expense_subtype subtype = new Expense_subtype();
			subtype.setSubName(rs.getString("expense_subtype_Name"));
			subtype.setExpenseTypeId(rs.getLong("expense_type_id"));
			subtype.setSubTypeId(rs.getLong("expense_subtype_id"));
			subtype.setUserId(rs.getLong("user_id"));

			List.add(subtype);
		}
		ps.close();
		rs.close();
		return List;
	}

}
