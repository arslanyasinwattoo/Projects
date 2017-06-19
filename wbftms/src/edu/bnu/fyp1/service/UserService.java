package edu.bnu.fyp1.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.bnu.fyp1.dao.GenericDao;
import edu.bnu.fyp1.entity.Account_head;
import edu.bnu.fyp1.entity.Crop_info;
import edu.bnu.fyp1.entity.Expense_subtype;
import edu.bnu.fyp1.entity.Expense_type;
import edu.bnu.fyp1.entity.Role;
import edu.bnu.fyp1.entity.User;

@Service
public class UserService {
	@Autowired
	private GenericDao genericDao;

	public boolean addUser(User user) throws Exception {
		String sql = "Insert into user (user_name,user_lastname,user_address,user_city,user_contactno,user_pending,user_block,user_firstname,user_password,user_email,user_organization_name)values (:userName,:userLastname,:userAddress,:userCity,:userContactNo,:userPending,:userBlock,:userFirstname,:userPassword,:userEmail,:userOrganizationname)";
		int n = genericDao.insertOrUpdate(sql, user);
		return n > 0;
	}
public boolean editUser(User user)throws Exception{
	String sql="Update user set user_lastname=:userLastname,user_address=:userAddress,user_city=:userCity,user_contactno=:userContactNo,user_firstname=:userFirstname,user_password=:userPassword,user_email=:userEmail,user_organization_name=:userOrganizationname where user_id=:userId";
	int n=genericDao.insertOrUpdate(sql, user);
	return n>0;
}
	public boolean updateUser(User user) throws Exception {
		String sql = "UPDATE user SET user_pending = :userPending, user_block=:userBlock  WHERE  user_id=:userId";
		int n = genericDao.insertOrUpdate(sql, user);
		return n > 0;
	}

	public User findUserbyid(long user_id) throws Exception {
		String sql = "Select * from user where user_id=?";
		return (User) genericDao.findByid(sql, User.class, user_id);
	}

	public List<User> getAllUser() throws Exception {

		String sql = "Select * From user ";
		return (List<User>) genericDao.findAll(sql, User.class);
	}

	public boolean addExpenseType(Expense_type expense_type) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("dao");
		String sql = "insert into expense_type (expense_name,user_id) values (:expenseName,:userId)";
		int n = genericDao.insertOrUpdate(sql, expense_type);
		return n > 0;
	}

	public boolean updateExpenseType(Expense_type expense_type)
			throws Exception {
		String sql = "UPDATE expense_type SET expense_name = :expenseName  WHERE  expense_type_id=:expenseTypeId";
		int n = genericDao.insertOrUpdate(sql, expense_type);
		return n > 0;

	}

	public List<Expense_type> getAllexpenseType() throws Exception {
		// TODO Auto-generated method stub
		String sql = "select * from expense_type";
		return (List<Expense_type>) genericDao.findAll(sql, Expense_type.class);
	}

	public Expense_type findExpenseById(Long expenseId) throws Exception {
		String sql = "select * from expense_type where expense_type_id=?";

		return (Expense_type) genericDao.findById(sql, Expense_type.class,
				expenseId);
	}

	public boolean deleteExpenseById(Long expenseId) throws Exception {
		String sql = "delete from expense_type where expense_type_id=?";
		int n = genericDao.deletebyId(sql, Expense_type.class, expenseId);
		return n > 0;
	}

	public List<Expense_subtype> getAllExpenseSubtype(Long expenseTypeId)
			throws Exception {
		String sql = "select * from expense_subtype where expense_type_id=?";
		return (List<Expense_subtype>) genericDao.findAll(sql,
				Expense_subtype.class, expenseTypeId);
	}

	public boolean deleteExpenseSubtypeId(Long ExpenseSubtypeId)
			throws Exception {
		String sql = "delete from expense_subtype where expense_subtype_id=?";
		int n = genericDao.deletebyId(sql, Expense_subtype.class,
				ExpenseSubtypeId);
		return n > 0;
	}

	public boolean addExpenseSubtype(Expense_subtype expense_subtype)
			throws Exception {

		String sql = "insert into expense_subtype(expense_subtype_name,user_id,expense_type_id) values (:subName,:userId,:expenseTypeId)";
		int n = genericDao.insertOrUpdate(sql, expense_subtype);
		return n > 0;
	}

	public Expense_subtype findExpenseSubtypeById(Long expenseID)
			throws Exception {
		String sql = "select * from expense_subtype where expense_subtype_id=?";

		return (Expense_subtype) genericDao.findById(sql,
				Expense_subtype.class, expenseID);
	}

	public boolean updateExpenseSubtype(Expense_subtype expense_subtype)
			throws Exception {
		String sql = "UPDATE expense_subtype SET expense_subtype_name = :SubName,expense_type_id=:expenseTypeId , user_id=:userID  WHERE  expense_subtype_id=:subTypeId";
		int n = genericDao.insertOrUpdate(sql, expense_subtype);
		return n > 0; // TODO Auto-generated method stub

	}

	public List<Crop_info> getAllCropInfo() throws Exception {
		String sql = "select * from crop_info";
		return (List<Crop_info>) genericDao.findAll(sql, Crop_info.class);
	}

	public boolean deleteCropinfoId(Long cropInfoId) throws Exception {
		String sql = "delete from crop_info where crop_info_id=?";
		int n = genericDao.deletebyId(sql, Crop_info.class, cropInfoId);
		return n > 0;
	}

	public boolean addCropInfo(Crop_info crop_info) throws Exception {

		String sql = "insert into crop_info (crop_name,crop_duration,user_id) values (:cropName,:cropDuration,:userId)";
		int n = genericDao.insertOrUpdate(sql, crop_info);
		return n > 0;
	}

	public Crop_info findcropInfoById(Long cropID) throws Exception {
		String sql = "select * from crop_info where crop_info_id=?";

		return (Crop_info) genericDao.findById(sql, Crop_info.class, cropID);
	}

	public boolean updateCropInfo(Crop_info crop_info) throws Exception {
		String sql = "UPDATE crop_info SET crop_name = :cropName, crop_duration=:cropDuration  WHERE  crop_info_id=:cropInfoId";
		int n = genericDao.insertOrUpdate(sql, crop_info);
		return n > 0; // TODO Auto-generated method stub

	}

	public boolean insertuseRole(Role role) throws Exception {
		String sql = "insert into role (user_role,user_id) values(:userRole,:userId)";
		int n = genericDao.insertOrUpdate(sql, role);
		return n > 0;
	}

	public List<Role> getUserRolebyid(Long userId) throws Exception {
		String sql = "Select * from role where user_id =?";
		// TODO Auto-generated method stub
		return (List<Role>) genericDao.findAll(sql, Role.class, userId);
	}

	public List<User> getAllPendingUsers() throws Exception {

		String sql = "Select * From user where user_pending=1 ";
		return (List<User>) genericDao.findAll(sql, User.class);
	}

	public List<User> getAllBlockedUsers() throws Exception {

		String sql = "Select * From user where user_block = 1 ";
		return (List<User>) genericDao.findAll(sql, User.class);
	}

	public List<User> getAllUsersbyblock() throws Exception {

		String sql = "Select * From user where user_block = 0 ";
		return (List<User>) genericDao.findAll(sql, User.class);
	}
}
