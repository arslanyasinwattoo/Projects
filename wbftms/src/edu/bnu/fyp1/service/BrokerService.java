package edu.bnu.fyp1.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import sun.security.util.PropertyExpander.ExpandException;

import edu.bnu.fyp1.dao.GenericDao;
import edu.bnu.fyp1.entity.Account_head;
import edu.bnu.fyp1.entity.Crop_info;
import edu.bnu.fyp1.entity.Manage_sale_record;
import edu.bnu.fyp1.entity.Transaction;

@Service
public class BrokerService {
	@Autowired
	private GenericDao genericDao;

	public List<Manage_sale_record> getTodaysSalesRecord(Long userId, Date date)
			throws Exception {
		String sql = "select * from manage_sale_record where user_id=? AND sale_date=?";
		return (List<Manage_sale_record>) genericDao.findAll(sql,
				Manage_sale_record.class, userId, date);

	}

	public List<Account_head> getAllAccountheads(Long userId) throws Exception {
		String sql = "select * from account_head where user_id=? AND account_block='0'";
		return (List<Account_head>) genericDao.findAll(sql, Account_head.class,
				userId);
	}

	public List<Crop_info> getAllCropInfo() throws Exception {
		String sql = "select * from crop_info";
		return (List<Crop_info>) genericDao.findAll(sql, Crop_info.class);
	}

	public Manage_sale_record findSaleRecordById(Long sale_record_id)
			throws Exception {
		String sql = "select * from manage_sale_record where manage_sale_record_id=?";

		return (Manage_sale_record) genericDao.findByid(sql,
				Manage_sale_record.class, sale_record_id);
	}

	public boolean addCropSale(Manage_sale_record sale_record) throws Exception {

		String sql = "insert into manage_sale_record (crop_name,customer_name,weight_of_bag,no_bags,crop_left_in_kg,total_weight,weight_in_moands,weight_in_kg,total_amount,total_commision,current_amount,bank_charges,labor_charge,current_commision,purchaser_name,total_crop_sold_to_purchaser,funds,user_id,sale_date) values (:CropName,:CustomerName,:weightOfBag,:noBag,:cropLeftInKgs,:totalWeight,:weightInMoands,:weightInKg,:totalAmount,:totalCommision,:currentAmount,:bankCharges,:laborCharge,:currentCommision,:purchaserName,:totalCropSoldToPurchaser,:funds,:userId,:saleDate)";
		int n = genericDao.insertOrUpdate(sql, sale_record);
		return n > 0;
	}

	public boolean updateCropSale(Manage_sale_record sale_record)
			throws Exception {
		String sql = "UPDATE manage_sale_record SET crop_name=:CropName,customer_name=:CustomerName,weight_of_bag=:weightOfBag,no_bags=:noBag,crop_left_in_kg=:cropLeftInKgs,total_weight=:totalWeight,weight_in_moands=:weightInMoands,weight_in_kg=:weightInKg,total_amount=:totalAmount,total_commision=:totalCommision,current_amount=:currentAmount,bank_charges=:bankCharges,labor_charge=:laborCharge,current_commision=:currentCommision,purchaser_name=:purchaserName,total_crop_sold_to_purchaser=:totalCropSoldToPurchaser,funds=:funds WHERE manage_sale_record_id=:manageSaleRecordId";
		int n = genericDao.insertOrUpdate(sql, sale_record);
		return n > 0;
	}

	public boolean addTransaction(Transaction transaction) throws Exception {

		String sql = "insert into transaction (transaction_date,transaction_time,transaction_mode,transaction_amount,account_head_id,user_id,description) values (:transactionDate,:transactionTime,:transactionMode,:transactionAmount,:accountHeadId,:userId,:description)";
		int n = genericDao.insertOrUpdate(sql, transaction);
		return n > 0;
	}

	public Transaction findTransactionById(Long transactionId) throws Exception {
		String sql = "select * from transaction where transaction_id=?";

		return (Transaction) genericDao.findById(sql, Transaction.class,
				transactionId);
	}

	public boolean updateTransaction(Transaction transaction) throws Exception {
		String sql = "UPDATE transaction SET transaction_mode = :transactionMode,transaction_amount=:transactionAmount, account_head_id=:accountHeadId  WHERE  transaction_id=:transactionId";
		int n = genericDao.insertOrUpdate(sql, transaction);
		return n > 0; // TODO Auto-generated method stub

	}

	public List<Transaction> getTodayspayedTransaction(Long userId, Date date)
			throws Exception {
		String sql = "select * from transaction where user_id=? AND transaction_date=? And transaction_mode='payed'";
		return (List<Transaction>) genericDao.findAll(sql, Transaction.class,
				userId, date);

	}

	public List<Transaction> getTodaysrecievedTransaction(Long userId, Date date)
			throws Exception {
		String sql = "select * from transaction where user_id=? AND transaction_date=? And transaction_mode='recieved'";
		return (List<Transaction>) genericDao.findAll(sql, Transaction.class,
				userId, date);

	}

	public List<Transaction> getAllTransaction(Long userId) throws Exception {
		String sql = "select * from transaction where user_id=? ";
		return (List<Transaction>) genericDao.findAll(sql, Transaction.class,
				userId);

	}

	public List<Transaction> getAllpayedTransaction(Long userId)
			throws Exception {
		String sql = "select * from transaction where user_id=? And transaction_mode='payed' ";
		return (List<Transaction>) genericDao.findAll(sql, Transaction.class,
				userId);
	}

	public List<Transaction> getAllrecievedTransaction(Long userId)
			throws Exception {
		String sql = "select * from transaction where user_id=? And transaction_mode='recieved'";
		return (List<Transaction>) genericDao.findAll(sql, Transaction.class,
				userId);
	}

	public List<Transaction> getAllTransactionofaAccount(Long userId,
			Long accountHeadId) throws Exception {
		String sql = "select * from transaction where user_id=? And account_head_id=?";
		return (List<Transaction>) genericDao.findAll(sql, Transaction.class,
				userId, accountHeadId);
	}
}
