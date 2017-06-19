package edu.bnu.fyp1.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import edu.bnu.fyp1.entity.User;

public class UserMapper implements RowMapper<User> {

	@Override
	public User mapRow(ResultSet rs, int rownum) throws SQLException {
		// TODO Auto-generated method stub
		User user = new User();
		user.setUserName(rs.getString("user_name"));
		user.setUserId(rs.getLong("user_id"));
		user.setUserFirstname(rs.getString("user_firstname"));
		user.setUserLastname(rs.getString("user_lastname"));
		user.setUserPassword(rs.getString("user_password"));
		user.setUserEmail(rs.getString("user_email"));
		user.setUserAddress(rs.getString("user_address"));
		user.setUserCity(rs.getString("user_city"));
		user.setUserBlock(rs.getInt("user_block"));
		user.setUserPending(rs.getInt("user_pending"));
		user.setUserContactNo(rs.getLong("user_contactno"));

		return user;
	}

}
