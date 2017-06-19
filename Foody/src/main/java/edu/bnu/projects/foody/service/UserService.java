package edu.bnu.projects.foody.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.bnu.projects.foody.dao.GenericDao;
import edu.bnu.projects.foody.entity.FoodItems;
import edu.bnu.projects.foody.entity.FoodItemsReview;
import edu.bnu.projects.foody.entity.FoodType;
import edu.bnu.projects.foody.entity.Resturant;
import edu.bnu.projects.foody.entity.Users;

@Service
public class UserService {
	@Autowired
	private GenericDao genericDao;

	public boolean addUser(Users user) throws Exception {
		String sql = "Insert into users (user_name,user_password,is_admin,is_confirmed,created_on_timestamp,users_blocked)values (:userName,:userPassword,:isAdmin,:isConfirmed,:createdOnTimestamp,:usersBlocked)";
		int n = genericDao.insertOrUpdate(sql, user);
		return n > 0;
	}

	// public boolean editUser(Users user) throws Exception {
	// String sql =
	// "Update user set user_lastname=:userLastname,user_address=:userAddress,user_city=:userCity,user_contactno=:userContactNo,user_firstname=:userFirstname,user_password=:userPassword,user_email=:userEmail,user_organization_name=:userOrganizationname where user_id=:userId";
	// int n = genericDao.insertOrUpdate(sql, user);
	// return n > 0;
	// }
	//
	public boolean updateUser(Users user) throws Exception {
		String sql = "UPDATE users SET is_confirmed = :isConfirmed, users_blocked=:usersBlocked  WHERE  users_id=:usersId";
		int n = genericDao.insertOrUpdate(sql, user);
		return n > 0;
	}

	public Users findUserbyid(long user_id) throws Exception {
		String sql = "Select * from user where users_id=?";
		return (Users) genericDao.findByid(sql, Users.class, user_id);
	}

	@SuppressWarnings("unchecked")
	public List<Users> getAllUser() throws Exception {

		String sql = "Select * From users where is_admin=0 ";
		return (List<Users>) genericDao.findAll(sql, Users.class);
	}

	@SuppressWarnings("unchecked")
	public List<Users> getAllUserForLogin() throws Exception {

		String sql = "Select * From users";
		return (List<Users>) genericDao.findAll(sql, Users.class);
	}

	public List<Users> getAllPendingUsers() throws Exception {

		String sql = "Select * From users where is_confirmed=0 and is_admin=0 ";
		return (List<Users>) genericDao.findAll(sql, Users.class);
	}

	public List<Users> getAllBlockedUsers() throws Exception {

		String sql = "Select * From users where users_blocked = 1 and is_admin=0";
		return (List<Users>) genericDao.findAll(sql, Users.class);
	}

	// -----------------------------------------

	@SuppressWarnings("unchecked")
	public List<Users> getAllAdmins() throws Exception {

		String sql = "Select * From users where is_admin=1 ";
		return (List<Users>) genericDao.findAll(sql, Users.class);
	}

	public List<Users> getAllPendingAdmins() throws Exception {

		String sql = "Select * From users where is_confirmed=0 and is_admin=1 ";
		return (List<Users>) genericDao.findAll(sql, Users.class);
	}

	public List<Users> getAllBlockedAdmins() throws Exception {

		String sql = "Select * From users where users_blocked = 1 and is_admin=1";
		return (List<Users>) genericDao.findAll(sql, Users.class);
	}

	// -----------------------------------------

	// ------------------------------------------------
	public boolean addResturant(Resturant resturant) throws Exception {
		String sql = "Insert into resturant (resturant_name,users_id,resturant_pending,resturant_blocked)values (:resturantName,:usersId,:resturantPending,:resturantBlocked)";
		int n = genericDao.insertOrUpdate(sql, resturant);
		return n > 0;
	}

	public boolean updateResturant(Resturant resturant) throws Exception {
		String sql = "UPDATE resturant SET resturant_pending = :resturantPending, resturant_blocked=:resturantBlocked  WHERE  resturant_id=:resturantId";
		int n = genericDao.insertOrUpdate(sql, resturant);
		return n > 0;
	}

	@SuppressWarnings("unchecked")
	public List<Resturant> getAllResturant() throws Exception {

		String sql = "Select * From resturant ";
		return (List<Resturant>) genericDao.findAll(sql, Resturant.class);
	}

	public List<Resturant> getAllPendingResturant() throws Exception {

		String sql = "Select * From resturant where resturant_pending=1 ";
		return (List<Resturant>) genericDao.findAll(sql, Resturant.class);
	}

	public List<Resturant> getAllBlockedResturant() throws Exception {

		String sql = "Select * From resturant where resturant_blocked = 1 ";
		return (List<Resturant>) genericDao.findAll(sql, Resturant.class);
	}

	public List<Resturant> getAllClearedResturant() throws Exception {

		String sql = "Select * From resturant where resturant_blocked = 0 and resturant_pending=0  ";
		return (List<Resturant>) genericDao.findAll(sql, Resturant.class);
	}

	// -----------------------------------------
	public boolean addFoodType(FoodType foodType) throws Exception {
		String sql = "Insert into food_type (food_type_name,resturant_id,users_id,food_type_pending,food_type_blocked)values (:foodTypeName,:resturantId,:usersId,:foodTypePending,:foodTypeBlocked)";
		int n = genericDao.insertOrUpdate(sql, foodType);
		return n > 0;
	}

	public boolean updateFoodType(FoodType foodType) throws Exception {
		String sql = "UPDATE food_type SET food_type_pending = :foodTypePending, food_type_blocked=:foodTypeBlocked  WHERE  food_type_id=:foodTypeId";
		int n = genericDao.insertOrUpdate(sql, foodType);
		return n > 0;
	}

	@SuppressWarnings("unchecked")
	public List<FoodType> getAllFoodType() throws Exception {

		String sql = "Select * From food_type ";
		return (List<FoodType>) genericDao.findAll(sql, FoodType.class);
	}

	public List<FoodType> getAllClearedFoodType() throws Exception {

		String sql = "Select * From food_type where food_type_pending=0 and food_type_blocked=0";
		return (List<FoodType>) genericDao.findAll(sql, FoodType.class);
	}

	public List<FoodType> getFoodTypeById(Long resturantId) throws Exception {

		String sql = "Select * From food_type where resturant_id=? ";
		return (List<FoodType>) genericDao.findAll(sql, FoodType.class,
				resturantId);
	}

	public List<FoodType> getAllPendingFoodType() throws Exception {

		String sql = "Select * From food_type where food_type_pending=1 ";
		return (List<FoodType>) genericDao.findAll(sql, FoodType.class);
	}

	public List<FoodType> getAllBlockedFoodType() throws Exception {

		String sql = "Select * From food_type where food_type_blocked = 1 ";
		return (List<FoodType>) genericDao.findAll(sql, FoodType.class);
	}

	// -----------------------------------------

	// -----------------------------------------
	public boolean addFoodItems(FoodItems fooditems) throws Exception {
		String sql = "Insert into food_items (food_items_name,food_type_id,users_id,food_items_pending,food_items_blocked,resturant_id)values (:foodItemsName,:foodTypeId,:usersId,:foodItemsPending,:foodItemsBlocked,:resturantId)";
		int n = genericDao.insertOrUpdate(sql, fooditems);
		return n > 0;
	}

	public boolean updateFoodItems(FoodItems foodItems) throws Exception {
		String sql = "UPDATE food_Items SET food_items_pending = :foodItemsPending, food_items_blocked=:foodItemsBlocked  WHERE  food_items_id=:foodItemsId";
		int n = genericDao.insertOrUpdate(sql, foodItems);
		return n > 0;
	}

	@SuppressWarnings("unchecked")
	public List<FoodItems> getAllFoodItems() throws Exception {

		String sql = "Select * From food_items ";
		return (List<FoodItems>) genericDao.findAll(sql, FoodItems.class);
	}

	public List<FoodItems> getFoodItemsByResturants(Long resturantId)
			throws Exception {

		String sql = "Select * From food_items_ where resturant_id=? ";
		return (List<FoodItems>) genericDao.findAll(sql, FoodItems.class,
				resturantId);
	}

	public List<FoodItems> getFoodItemsByType(Long foodTypeId) throws Exception {

		String sql = "Select * From food_items where food_type_id=? ";
		return (List<FoodItems>) genericDao.findAll(sql, FoodItems.class,
				foodTypeId);
	}

	public List<FoodItems> getAllPendingFoodItems() throws Exception {

		String sql = "Select * From food_items where food_items_pending=1 ";
		return (List<FoodItems>) genericDao.findAll(sql, FoodItems.class);
	}

	public List<FoodItems> getAllBlockedFoodItems() throws Exception {

		String sql = "Select * From food_items where food_items_blocked = 1 ";
		return (List<FoodItems>) genericDao.findAll(sql, FoodItems.class);
	}

	public List<FoodItems> getAllClearedFoodItems() throws Exception {

		String sql = "Select * From food_items where food_items_pending=0 and food_items_blocked = 0 ";
		return (List<FoodItems>) genericDao.findAll(sql, FoodItems.class);
	}

	// ------------------------------------------------------------------------
	public boolean addReview(FoodItemsReview fooditemsReview) throws Exception {
		String sql = "Insert into food_items_review (food_items_review_rating,food_items_review_description,food_items_id,users_id,food_items_review_pending,food_items_review_blocked)values (:foodItemsReviewRating,:foodItemsReviewDescription,:foodItemsId,:usersId,:foodItemsReviewPending,:foodItemsReviewBlocked)";
		int n = genericDao.insertOrUpdate(sql, fooditemsReview);
		return n > 0;
	}

	public boolean updateReview(FoodItemsReview foodItemsReview)
			throws Exception {
		String sql = "UPDATE food_Items_review SET food_items_review_pending = :foodItemsReviewPending, food_items_review_blocked=:foodItemsReviewBlocked  WHERE  food_items_review_id=:foodItemsReviewId";
		int n = genericDao.insertOrUpdate(sql, foodItemsReview);
		return n > 0;
	}

	@SuppressWarnings("unchecked")
	public List<FoodItemsReview> getAllReviews() throws Exception {

		String sql = "Select * From food_items_review ";
		return (List<FoodItemsReview>) genericDao.findAll(sql,
				FoodItemsReview.class);
	}

	public List<FoodItemsReview> getAllClearReviews() throws Exception {

		String sql = "Select * From food_items_review where food_items_review_pending=0 and food_items_review_blocked=0 ";
		return (List<FoodItemsReview>) genericDao.findAll(sql,
				FoodItemsReview.class);
	}

	public List<FoodItemsReview> getReviewByFoodItem(Long itemId)
			throws Exception {

		String sql = "Select * From food_items_review where food_items_id=? ";
		return (List<FoodItemsReview>) genericDao.findAll(sql,
				FoodItemsReview.class, itemId);
	}

	//
	// public List<FoodItems> getReviewByType(Long foodTypeId) throws Exception
	// {
	//
	// String sql = "Select * From food_items_ where food_type_id=? ";
	// return (List<FoodItems>) genericDao.findAll(sql, FoodItems.class,
	// foodTypeId);
	// }

	// public List<FoodItems> getReviewByItem(Long foodTypeId) throws Exception
	// {
	//
	// String sql = "Select * From food_items_ where food_type_id=? ";
	// return (List<FoodItems>) genericDao.findAll(sql, FoodItems.class,
	// foodTypeId);
	// }

	public List<FoodItemsReview> getAllPendingReviews() throws Exception {

		String sql = "Select * From food_items_review where food_items_review_pending=1 ";
		return (List<FoodItemsReview>) genericDao.findAll(sql,
				FoodItemsReview.class);
	}

	public List<FoodItemsReview> getAllBlockedReviews() throws Exception {

		String sql = "Select * From food_items_review where food_items_review_blocked = 1 ";
		return (List<FoodItemsReview>) genericDao.findAll(sql,
				FoodItemsReview.class);
	}

	// -------------------------------------------
	// searching

	public List<FoodType> searchFoodType(String name) throws Exception {

		String sql = "Select * From food_type where food_type_name like  ? ";
		return (List<FoodType>) genericDao.findAll(sql, FoodType.class, name);
	}

	public List<FoodItems> searchFoodItems(String name) throws Exception {

		String sql = "Select * From food_items where food_items_name like ? ";
		return (List<FoodItems>) genericDao.findAll(sql, FoodItems.class, name);
	}

	public List<Resturant> searchResturants(String name) throws Exception {

		String sql = "Select * From resturant where resturant_name  like  ? ";
		return (List<Resturant>) genericDao.findAll(sql, Resturant.class, name);
	}
	// ---------------------------------------------
	// ------------------------------------------------------------------------

	// public boolean addExpenseType(Expense_type expense_type) throws Exception
	// {
	// // TODO Auto-generated method stub
	// System.out.println("dao");
	// String sql =
	// "insert into expense_type (expense_name,user_id) values (:expenseName,:userId)";
	// int n = genericDao.insertOrUpdate(sql, expense_type);
	// return n > 0;
	// }
	//
	// public boolean updateExpenseType(Expense_type expense_type)
	// throws Exception {
	// String sql =
	// "UPDATE expense_type SET expense_name = :expenseName  WHERE  expense_type_id=:expenseTypeId";
	// int n = genericDao.insertOrUpdate(sql, expense_type);
	// return n > 0;
	//
	// }
	//
	// public List<Expense_type> getAllexpenseType() throws Exception {
	// // TODO Auto-generated method stub
	// String sql = "select * from expense_type";
	// return (List<Expense_type>) genericDao.findAll(sql, Expense_type.class);
	// }
	//
	// public Expense_type findExpenseById(Long expenseId) throws Exception {
	// String sql = "select * from expense_type where expense_type_id=?";
	//
	// return (Expense_type) genericDao.findById(sql, Expense_type.class,
	// expenseId);
	// }
	//
	// public boolean deleteExpenseById(Long expenseId) throws Exception {
	// String sql = "delete from expense_type where expense_type_id=?";
	// int n = genericDao.deletebyId(sql, Expense_type.class, expenseId);
	// return n > 0;
	// }
	//
	// public List<Expense_subtype> getAllExpenseSubtype(Long expenseTypeId)
	// throws Exception {
	// String sql = "select * from expense_subtype where expense_type_id=?";
	// return (List<Expense_subtype>) genericDao.findAll(sql,
	// Expense_subtype.class, expenseTypeId);
	// }
	//
	// public boolean deleteExpenseSubtypeId(Long ExpenseSubtypeId)
	// throws Exception {
	// String sql = "delete from expense_subtype where expense_subtype_id=?";
	// int n = genericDao.deletebyId(sql, Expense_subtype.class,
	// ExpenseSubtypeId);
	// return n > 0;
	// }
	//
	// public boolean addExpenseSubtype(Expense_subtype expense_subtype)
	// throws Exception {
	//
	// String sql =
	// "insert into expense_subtype(expense_subtype_name,user_id,expense_type_id) values (:subName,:userId,:expenseTypeId)";
	// int n = genericDao.insertOrUpdate(sql, expense_subtype);
	// return n > 0;
	// }
	//
	// public Expense_subtype findExpenseSubtypeById(Long expenseID)
	// throws Exception {
	// String sql = "select * from expense_subtype where expense_subtype_id=?";
	//
	// return (Expense_subtype) genericDao.findById(sql,
	// Expense_subtype.class, expenseID);
	// }
	//
	// public boolean updateExpenseSubtype(Expense_subtype expense_subtype)
	// throws Exception {
	// String sql =
	// "UPDATE expense_subtype SET expense_subtype_name = :SubName,expense_type_id=:expenseTypeId , user_id=:userID  WHERE  expense_subtype_id=:subTypeId";
	// int n = genericDao.insertOrUpdate(sql, expense_subtype);
	// return n > 0; // TODO Auto-generated method stub
	//
	// }
	//
	// public List<Crop_info> getAllCropInfo() throws Exception {
	// String sql = "select * from crop_info";
	// return (List<Crop_info>) genericDao.findAll(sql, Crop_info.class);
	// }
	//
	// public boolean deleteCropinfoId(Long cropInfoId) throws Exception {
	// String sql = "delete from crop_info where crop_info_id=?";
	// int n = genericDao.deletebyId(sql, Crop_info.class, cropInfoId);
	// return n > 0;
	// }
	//
	// public boolean addCropInfo(Crop_info crop_info) throws Exception {
	//
	// String sql =
	// "insert into crop_info (crop_name,crop_duration,user_id) values (:cropName,:cropDuration,:userId)";
	// int n = genericDao.insertOrUpdate(sql, crop_info);
	// return n > 0;
	// }
	//
	// public Crop_info findcropInfoById(Long cropID) throws Exception {
	// String sql = "select * from crop_info where crop_info_id=?";
	//
	// return (Crop_info) genericDao.findById(sql, Crop_info.class, cropID);
	// }
	//
	// public boolean updateCropInfo(Crop_info crop_info) throws Exception {
	// String sql =
	// "UPDATE crop_info SET crop_name = :cropName, crop_duration=:cropDuration  WHERE  crop_info_id=:cropInfoId";
	// int n = genericDao.insertOrUpdate(sql, crop_info);
	// return n > 0; // TODO Auto-generated method stub
	//
	// }
	//
	// public boolean insertuseRole(Role role) throws Exception {
	// String sql =
	// "insert into role (user_role,user_id) values(:userRole,:userId)";
	// int n = genericDao.insertOrUpdate(sql, role);
	// return n > 0;
	// }
	//
	// public List<Role> getUserRolebyid(Long userId) throws Exception {
	// String sql = "Select * from role where user_id =?";
	// // TODO Auto-generated method stub
	// return (List<Role>) genericDao.findAll(sql, Role.class, userId);
	// }
	//

	//
	// public List<User> getAllUsersbyblock() throws Exception {
	//
	// String sql = "Select * From user where user_block = 0 ";
	// return (List<User>) genericDao.findAll(sql, User.class);
	// }
}
