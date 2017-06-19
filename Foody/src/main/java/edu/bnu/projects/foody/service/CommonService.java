package edu.bnu.projects.foody.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.bnu.projects.foody.dao.GenericDao;


@Service
public class CommonService {
	@Autowired
	private GenericDao genericDao;

//	public boolean addAccount(Account_head head) throws Exception {
//		String sql = "insert into account_head (account_firstname,account_lastname,account_description,account_date,account_time,user_id,account_name,account_block,account_contact_no,account_password) values (:accountFirstname,:accountLastname,:accountDescription,:accountDate,:accountTime,:userId,:accountName,:accountBlock,:accountContactNo,:accountPassword)";
//		int n = genericDao.insertOrUpdate(sql, head);
//		return n > 0;
//	}
//
//	public boolean updateAccount(Account_head head) throws Exception {
//		String sql = "UPDATE account_head SET account_firstname=:accountFirstname,account_lastname=:accountLastname,account_description=:accountDescription,account_name=:accountName,account_block=:accountBlock ,account_contact_no=:accountContactNo, account_password=:accountPassword WHERE account_head_id=:accountHeadId ";
//		int n = genericDao.insertOrUpdate(sql, head);
//		return n > 0;
//	}
//
//	public boolean blockAccount(Account_head head) throws Exception {
//		String sql = "UPDATE account_head SET account_block=:accountBlock WHERE account_head_id=:accountHeadId ";
//		int n = genericDao.insertOrUpdate(sql, head);
//		return n > 0;
//	}
//
//	public Account_head findAccountById(Long accountId) throws Exception {
//		String sql = "select * from account_head where account_head_id=?";
//
//		return (Account_head) genericDao.findByid(sql, Account_head.class,
//				accountId);
//	}
//
//	public List<Account_head> getAllAccountheads(Long userId) throws Exception {
//		String sql = "select * from account_head where user_id=? AND account_block='0'";
//		return (List<Account_head>) genericDao.findAll(sql, Account_head.class,
//				userId);
//	}
//
//	public List<Account_head> getAllBlockedAccountheads(Long userId)
//			throws Exception {
//		String sql = "select * from account_head where user_id=? AND account_block='1'";
//		return (List<Account_head>) genericDao.findAll(sql, Account_head.class,
//				userId);
//	}
//
//	public boolean updateItem(Asset_inventory asset) throws Exception {
//		String sql = "UPDATE asset_inventory SET item_name=:itemName, item_quantity=:itemQuantity,item_description=:itemDescription ,item_block=:itemBlock WHERE asset_inventory_id=:assetInventoryId";
//		int n = genericDao.insertOrUpdate(sql, asset);
//		return n > 0;
//	}
//
//	public boolean addItem(Asset_inventory asset) throws Exception {
//		String sql = "insert into asset_inventory (item_name,item_quantity,item_description,user_id,item_block) values (:itemName,:itemQuantity,:itemDescription,:UserId,:itemBlock)";
//		int n = genericDao.insertOrUpdate(sql, asset);
//		return n > 0;
//
//	}
//
//	public Asset_inventory findItemById(Long assetInventoryId) throws Exception {
//		String sql = "select * from asset_inventory where asset_inventory_id=?";
//
//		return (Asset_inventory) genericDao.findByid(sql,
//				Asset_inventory.class, assetInventoryId);
//	}
//
//	public List<Asset_inventory> getAllItems(Long userId) throws Exception {
//		String sql = "select * from asset_inventory where user_id=? And item_block='0'";
//		return (List<Asset_inventory>) genericDao.findAll(sql,
//				Asset_inventory.class, userId);
//	}
//
//	public List<Asset_inventory> getAllBlockedItems(Long userId)
//			throws Exception {
//		String sql = "select * from asset_inventory where user_id=? And item_block='1'";
//		return (List<Asset_inventory>) genericDao.findAll(sql,
//				Asset_inventory.class, userId);
//	}
//
//	public boolean DeleteItem(Asset_inventory asset) throws Exception {
//		String sql = "UPDATE asset_inventory SET item_block=:itemBlock WHERE asset_inventory_id=:assetInventoryId ";
//		int n = genericDao.insertOrUpdate(sql, asset);
//		return n > 0;
//	}
//
//	public boolean addCropProfile(Crop_profile profile) throws Exception {
//		String sql = "insert into crop_profile (crop_profile_name,start_date,end_date,total_weight,acres,seed,selling_rate,description,user_id,crop_finish,crop_block,selling_amount) values (:cropProfileName,:startDate,:endDate,:totalWeight,:acres,:seed,:sellingRate,:cropDescription,:userId,:cropFinish,:cropBlock,:sellingAmount)";
//		int n = genericDao.insertOrUpdate(sql, profile);
//		return n > 0;
//
//	}
//
//	public boolean updateCropProfile(Crop_profile profile) throws Exception {
//		String sql = "UPDATE crop_profile SET crop_profile_name=:cropProfileName,start_date=:startDate, end_date=:endDate , total_weight=:totalWeight , acres=:acres,seed=:seed,selling_rate=:sellingRate,description=:cropDescription,user_id=:userId, crop_finish=:cropFinish ,crop_block=:cropBlock ,selling_amount=:sellingAmount WHERE crop_profile_id=:cropProfileId";
//		int n = genericDao.insertOrUpdate(sql, profile);
//		return n > 0;
//	}
//
//	public boolean DeleteCropProfile(Crop_profile profile) throws Exception {
//		String sql = "UPDATE crop_profile SET crop_block=:cropBlock WHERE crop_profile_id=:cropProfileId ";
//		int n = genericDao.insertOrUpdate(sql, profile);
//		return n > 0;
//	}
//
//	public Crop_profile findProfileById(Long cropProfileId) throws Exception {
//		String sql = "select * from crop_profile where crop_profile_id=?";
//		return (Crop_profile) genericDao.findByid(sql, Crop_profile.class,
//				cropProfileId);
//	}
//
//	public List<Crop_profile> getAllProfile(Long userId) throws Exception {
//		String sql = "select * from crop_profile where user_id=? And crop_finish='0' And crop_block='0'";
//		return (List<Crop_profile>) genericDao.findAll(sql, Crop_profile.class,
//				userId);
//	}
//
//	public List<Crop_profile> getAllDeletedPtrofiles(Long userId)
//			throws Exception {
//		String sql = "select * from crop_profile where user_id=? And crop_block='1'";
//		return (List<Crop_profile>) genericDao.findAll(sql, Crop_profile.class,
//				userId);
//	}
//
//	public boolean ActivateCropProfile(Crop_profile profile) throws Exception {
//		String sql = "UPDATE crop_profile SET crop_finish=:cropFinish WHERE crop_profile_id=:cropProfileId ";
//		int n = genericDao.insertOrUpdate(sql, profile);
//		return n > 0;
//	}
//
//	public List<Crop_profile> getAllPreviousPtrofiles(Long userId)
//			throws Exception {
//		String sql = "select * from crop_profile where user_id=? And crop_finish='1'";
//		return (List<Crop_profile>) genericDao.findAll(sql, Crop_profile.class,
//				userId);
//	}
//
//	public boolean addTransaction(Transaction transaction) throws Exception {
//
//		String sql = "insert into transaction (transaction_date,transaction_time,transaction_mode,transaction_amount,account_head_id,user_id,description) values (:transactionDate,:transactionTime,:transactionMode,:transactionAmount,:accountHeadId,:userId,:description)";
//		int n = genericDao.insertOrUpdate(sql, transaction);
//		return n > 0;
//	}
//
//	public Transaction findTransactionById(Long transactionId) throws Exception {
//		String sql = "select * from transaction where transaction_id=?";
//
//		return (Transaction) genericDao.findById(sql, Transaction.class,
//				transactionId);
//	}
//
//	public boolean updateTransaction(Transaction transaction) throws Exception {
//		String sql = "UPDATE transaction SET transaction_mode = :transactionMode,transaction_amount=:transactionAmount, account_head_id=:accountHeadId  WHERE  transaction_id=:transactionId";
//		int n = genericDao.insertOrUpdate(sql, transaction);
//		return n > 0; // TODO Auto-generated method stub
//
//	}
//
//	public List<Transaction> getTodayspayedTransaction(Long userId, Date date)
//			throws Exception {
//		String sql = "select * from transaction where user_id=? AND transaction_date=? And transaction_mode='payed'";
//		return (List<Transaction>) genericDao.findAll(sql, Transaction.class,
//				userId, date);
//
//	}
//
//	public List<Transaction> getTodaysrecievedTransaction(Long userId, Date date)
//			throws Exception {
//		String sql = "select * from transaction where user_id=? AND transaction_date=? And transaction_mode='recieved'";
//		return (List<Transaction>) genericDao.findAll(sql, Transaction.class,
//				userId, date);
//
//	}
//
//	public List<Transaction> getAllTransaction(Long userId) throws Exception {
//		String sql = "select * from transaction where user_id=? ";
//		return (List<Transaction>) genericDao.findAll(sql, Transaction.class,
//				userId);
//
//	}
//
//	public List<Transaction> getAllpayedTransaction(Long userId)
//			throws Exception {
//		String sql = "select * from transaction where user_id=? And transaction_mode='payed' ";
//		return (List<Transaction>) genericDao.findAll(sql, Transaction.class,
//				userId);
//	}
//
//	public List<Transaction> getAllrecievedTransaction(Long userId)
//			throws Exception {
//		String sql = "select * from transaction where user_id=? And transaction_mode='recieved'";
//		return (List<Transaction>) genericDao.findAll(sql, Transaction.class,
//				userId);
//	}
//
//	public List<Transaction> getAllTransactionofaAccount(Long userId,
//			Long accountHeadId) throws Exception {
//		String sql = "select * from transaction where user_id=? And account_head_id=?";
//		return (List<Transaction>) genericDao.findAll(sql, Transaction.class,
//				userId, accountHeadId);
//	}
//
//	public List<Expense_type> getAllexpenseType() throws Exception {
//		// TODO Auto-generated method stub
//		String sql = "select * from expense_type";
//		return (List<Expense_type>) genericDao.findAll(sql, Expense_type.class);
//	}
//
//	public List<Expense_subtype> getAllExpenseSubtype(Long expenseTypeId)
//			throws Exception {
//		String sql = "select * from expense_subtype where expense_type_id=? ";
//		return (List<Expense_subtype>) genericDao.findAll(sql,
//				Expense_subtype.class, expenseTypeId);
//	}
//
//	public Long getTransactionId() throws Exception {
//		String sql = "SELECT  MAX(transaction_id)FROM TRANSACTION";
//		return (Long) genericDao.findId(sql);
//	}
//
//	public boolean addCropExpense(Crop_Expense cropexpense) throws Exception {
//		String sql = "insert into crop_expense (expense_subtype_id,crop_profile_id,transaction_id) values (:subtypeId,:cropProfileId,:transactionId)";
//		int n = genericDao.insertOrUpdate(sql, cropexpense);
//		return n > 0;
//	}
//
//	public boolean updateCropExpense(Crop_Expense cropexpense) throws Exception {
//		String sql = "UPDATE crop_expense SET expense_subtype_id=:subtypeId,crop_profile_id=:cropProfileId WHERE  transaction_id=:transactionId";
//		int n = genericDao.insertOrUpdate(sql, cropexpense);
//		return n > 0;
//
//	}
//
//	public List<Crop_Expense> getallCropExpense() throws Exception {
//		String sql = "select * from crop_expense";
//		return (List<Crop_Expense>) genericDao.findAll(sql, Crop_Expense.class);
//	}
//
//	public List<Role> getAllBroker() throws Exception {
//
//		String sql = "Select * From role where user_role='Broker'";
//		return (List<Role>) genericDao.findAll(sql, Role.class);
//	}
//
//	public User findUserbyid(long userId) throws Exception {
//		String sql = "select * from user where user_id=?";
//
//		return (User) genericDao.findById(sql, User.class, userId);
//	}

}
