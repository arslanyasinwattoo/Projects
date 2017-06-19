/** @ author Arslanyasinwattoo
 * 
 */
package edu.bnu.Lcs.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sun.org.apache.xpath.internal.operations.Bool;

import edu.bnu.Lcs.dao.GenericDao;
import edu.bnu.Lcs.entity.AccountHead;
import edu.bnu.Lcs.entity.Company;
import edu.bnu.Lcs.entity.CompanyHead;
import edu.bnu.Lcs.entity.DriverInfo;
import edu.bnu.Lcs.entity.Transactions;
import edu.bnu.Lcs.entity.TransportInfo;
import edu.bnu.Lcs.entity.Users;

/**
 * @author Arslanyasinwattoo
 * 
 */
@Service
public class UserService {
	@Autowired
	private GenericDao genericDao;

	public Boolean addUser(Users user) throws Exception {
		String sql = "Insert into users (user_name,user_password,first_name,last_name,user_cnic,contact_number,user_emialid,start_date,start_time,role,status,block)values(:userName,:userPassword,:firstName,:lastName,:userCnic,:contactNumber,:userEmialid,:startDate,:startTime,:role,:status,:block)";
		int n = genericDao.insertOrUpdate(sql, user);
		return n > 0;
	}

	public boolean updateUser(Users user) throws Exception {
		// TODO Auto-generated method stub
		String sql = "UPDATE Users SET user_name=:userName,user_password=:userPassword,first_name=:firstName,last_name=lastName,user_cnic=:userCnic,contact_number=:contactNumber,user_emialid=:userEmialid, status=:status,block=:block where users_id=:usersId";
		int n = genericDao.insertOrUpdate(sql, user);
		return n > 0;
	}

	public boolean updateStatus(Users user) throws Exception {
		// TODO Auto-generated method stub
		String sql = "UPDATE Users SET status=:status,block=:block where users_id=:usersId";
		int n = genericDao.insertOrUpdate(sql, user);
		return n > 0;
	}

	public boolean updateStatus(Company company) throws Exception {
		// TODO Auto-generated method stub
		String sql = "UPDATE company SET status=:status,block=:block where company_id=:companyId";
		int n = genericDao.insertOrUpdate(sql, company);
		return n > 0;
	}

	/**
	 * @return
	 */

	public Users findUserByEmail(Users user) throws Exception {
		String sql = "Select * from users where user_emialid= ? And user_password=? And status=0 And block=0";

		return (Users) genericDao.findByEmailId(sql, Users.class,
				user.getUserEmialid(), user.getUserPassword());
	}

	/**
	 * @return
	 */
	public List<Users> getAllUser() throws Exception {
		String sql = "Select * from users";

		return (List<Users>) genericDao.findAll(sql, Users.class);
	}

	/**
	 * @param user
	 */
	public List<Users> getAllPendingUsers() throws Exception {
		String sql = "Select * from users where status=1";

		return (List<Users>) genericDao.findAll(sql, Users.class);
	}

	/**
	 * @return
	 */
	public List<Users> getAllBlockedUsers() throws Exception {
		String sql = "Select * from users where block=1";

		return (List<Users>) genericDao.findAll(sql, Users.class);
	}

	/**
	 * @param userId
	 * @return
	 */
	public List<Company> getAllCompanies(Long userId) throws Exception {
		String sql = "Select * from company where user_id=?";

		return (List<Company>) genericDao.findAll(sql, Company.class, userId);
	}

	public List<Company> getAllCompanies() throws Exception {
		String sql = "Select * from company";

		return (List<Company>) genericDao.findAll(sql, Company.class);
	}

	public List<Company> getAllPendingCompanies() throws Exception {
		String sql = "Select * from company where status=1";

		return (List<Company>) genericDao.findAll(sql, Company.class);
	}

	public List<Company> getAllBlockedCompanies() throws Exception {
		String sql = "Select * from company where block=1";

		return (List<Company>) genericDao.findAll(sql, Company.class);
	}

	public Boolean AddCompany(Company company) throws Exception {
		String sql = "insert into company (company_name,company_address,company_contact_number,company_emailid,company_city,company_category,user_id,status,block) values(:companyName,:companyAddress,:companyContactNumber,:companyEmailid,:companyCity,:companyCategory,:userId,:status,:block)";
		int n = genericDao.insertOrUpdate(sql, company);
		return n > 0;
	}

	public List<AccountHead> getAllaccounts(Long userId) throws Exception {
		String sql = "Select * from account_head where user_id=? and block=0";

		return (List<AccountHead>) genericDao.findAll(sql, AccountHead.class,
				userId);
	}

	/**
	 * @param account
	 */
	public Boolean AddAccount(AccountHead account) throws Exception {
		String sql = "insert into account_head (user_first_name,user_last_name,username,user_emailid,user_address,user_cnic,user_password,use_contact_number,user_id,block) values(:userFirstName,:userLastName,:username,:userEmailid,:userAddress,:userCnic,:userPassword,:useContactNumber,:userId,:block)";
		int n = genericDao.insertOrUpdate(sql, account);
		return n > 0;
	}

	/**
	 * @param accountHead
	 */
	public Boolean updateAccountHeadStatus(AccountHead accountHead)
			throws Exception {
		String sql = "UPDATE account_head SET block=:block where account_head_id=:accountHeadId and user_id=:userId";
		int n = genericDao.insertOrUpdate(sql, accountHead);
		return n > 0;
	}

	public List<AccountHead> getAllBlockedaccounts(Long userId)
			throws Exception {
		String sql = "Select * from account_head where user_id=? and block=1";

		return (List<AccountHead>) genericDao.findAll(sql, AccountHead.class,
				userId);
	}

	public List<AccountHead> getAllaccountOfUser(Long userId) throws Exception {
		String sql = "Select * from account_head where user_id=?";

		return (List<AccountHead>) genericDao.findAll(sql, AccountHead.class,
				userId);
	}

	/**
	 * @param userId
	 * @return
	 */
	public List<Company> getAllBlockedCompany(Long userId) throws Exception {
		String sql = "Select * from company where user_id=? and block=1";

		return (List<Company>) genericDao.findAll(sql, Company.class, userId);
	}

	/**
	 * @param userId
	 * @return
	 */
	public List<CompanyHead> getAllCompanyHeadOfUser(Long userId)
			throws Exception {
		String sql = "Select * from company_head where user_id=?";

		return (List<CompanyHead>) genericDao.findAll(sql, CompanyHead.class,
				userId);
	}

	/**
	 * @param userId
	 * @return
	 */
	public List<CompanyHead> getAllCompanyHead(Long userId) throws Exception {
		String sql = "Select * from company_head where user_id=? and block=0";

		return (List<CompanyHead>) genericDao.findAll(sql, CompanyHead.class,
				userId);
	}

	/**
	 * @param userId
	 * @return
	 */
	public List<CompanyHead> getAllBlockedCompanyHead(Long userId)
			throws Exception {
		String sql = "Select * from company_head where user_id=? and block=1";

		return (List<CompanyHead>) genericDao.findAll(sql, CompanyHead.class,
				userId);
	}

	/**
	 * @param company
	 */
	public Boolean AddCompanyHead(CompanyHead company) throws Exception {
		String sql = "insert into company_head (user_star_date,user_start_time,company_id,user_id,block) values(:userStarDate,:userStartTime,:companyId,:userId,:block)";
		int n = genericDao.insertOrUpdate(sql, company);
		return n > 0;

	}

	/**
	 * @param companyHead
	 */
	public Boolean updateCompanyHeadStatus(CompanyHead companyHead)
			throws Exception {
		String sql = "UPDATE company_head SET block=:block where company_head_id=:companyHeadId and user_id=:userId";
		int n = genericDao.insertOrUpdate(sql, companyHead);
		return n > 0;

	}

	public List<Company> getAllCompaniesExceptUser(Long userId)
			throws Exception {
		String sql = "Select * from company where user_id !=?";

		return (List<Company>) genericDao.findAll(sql, Company.class, userId);
	}

	public Boolean updateDriverStatus(DriverInfo driver) throws Exception {
		String sql = "UPDATE driver_info SET block=:block where driver_info_id=:driverInfoId and users_id=:usersId";
		int n = genericDao.insertOrUpdate(sql, driver);
		return n > 0;

	}

	public Boolean AddDriver(DriverInfo driver) throws Exception {
		String sql = "insert into driver_info (driver_first_name,driver_last_name,driver_contact_number,driver_cnic,driver_address,block,users_id) values(:driverFirstName,:driverLastName,:driverContactNumber,:driverCnic,:driverAddress,:block,:usersId)";
		int n = genericDao.insertOrUpdate(sql, driver);
		return n > 0;
	}

	public List<DriverInfo> getAllDriversOfUser(Long userId) throws Exception {
		String sql = "Select * from driver_info where users_id=? and block=0";

		return (List<DriverInfo>) genericDao.findAll(sql, DriverInfo.class,
				userId);
	}

	public List<DriverInfo> getAllDriversOfUsers(Long userId) throws Exception {
		String sql = "Select * from driver_info where users_id=?";

		return (List<DriverInfo>) genericDao.findAll(sql, DriverInfo.class,
				userId);
	}

	public List<DriverInfo> getAllBlockedDriver(Long userId) throws Exception {
		String sql = "Select * from driver_info where users_id=? and block=1";

		return (List<DriverInfo>) genericDao.findAll(sql, DriverInfo.class,
				userId);
	}

	/**
	 * @param userId
	 * @return
	 */
	public List<TransportInfo> getAllBlockedTransport(Long userId)
			throws Exception {
		String sql = "Select * from transport_info where users_id=? and active=1";

		return (List<TransportInfo>) genericDao.findAll(sql,
				TransportInfo.class, userId);
	}

	/**
	 * @param userId
	 * @return
	 */
	public List<TransportInfo> getAllTransportOfUser(Long userId)
			throws Exception {
		String sql = "Select * from transport_info where users_id=? and active=0";

		return (List<TransportInfo>) genericDao.findAll(sql,
				TransportInfo.class, userId);
	}

	/**
	 * @param transportInfo
	 */
	public Boolean AddTransport(TransportInfo transportInfo) throws Exception {
		String sql = "insert into transport_info (truck_size,truck_number,active,users_id) values(:truckSize,:truckNumber,:active,:usersId)";
		int n = genericDao.insertOrUpdate(sql, transportInfo);
		return n > 0;
	}

	/**
	 * @param transportInfo
	 */
	public Boolean updateTransportStatus(TransportInfo transportInfo)
			throws Exception {
		String sql = "UPDATE transport_info SET active=:active where transport_info_id=:transportInfoId and users_id=:usersId";
		int n = genericDao.insertOrUpdate(sql, transportInfo);
		return n > 0;
	}

	public List<TransportInfo> getAllTransportOfUsers(Long userId)
			throws Exception {
		String sql = "Select * from transport_info where users_id=?";

		return (List<TransportInfo>) genericDao.findAll(sql,
				TransportInfo.class, userId);
	}

	/**
	 * @param user
	 * @return
	 */
	public AccountHead findAUserByEmail(AccountHead head) throws Exception {
		String sql = "Select * from account_head where user_emailid= ? And user_password=? And block=0";

		return (AccountHead) genericDao.findByEmailId(sql, AccountHead.class,
				head.getUserEmailid(), head.getUserPassword());
	}

	/**
	 * @param converToSQLDate
	 * @param userId
	 * @return
	 */
	public List<Transactions> getTodaysPaidTransactions(
			Transactions transactions) throws Exception {
		String sql = "Select * from transactions where users_id= ? And transaction_date=? And transactions_mode='paid'";

		return (List<Transactions>) genericDao.findAll(sql, Transactions.class,
				transactions.getUsersId(), transactions.getTransactionDate());
	}

	/**
	 * @param converToSQLDate
	 * @param userId
	 * @return
	 */
	public List<Transactions> getTodaysRecievedTransaction(
			Transactions transactions) throws Exception {
		String sql = "Select * from  transactions where users_id= ? And transaction_date=? And transactions_mode='received'";

		return (List<Transactions>) genericDao.findAll(sql, Transactions.class,
				transactions.getUsersId(), transactions.getTransactionDate());
	}

	/**
	 * @param transactions
	 */
	public void AddTransaction(Transactions transactions) throws Exception {
		// TODO Auto-generated method stub
		String sql = "insert into transactions (transaction_date,transactions_amount,transactions_remaks,transactions_mode,driver_info_id,users_id,company_head_id,account_head_id,transport_info_id,transaction_time) values(:transactionDate,:transactionsAmount,:transactionsRemaks,:transactionsMode,:driverInfoId,:usersId,:companyHeadId,:accountHeadId,:transportInfoId,:transactionTime)";
		genericDao.insertOrUpdate(sql, transactions);
	}

	/**
	 * @param userId
	 * @return
	 */
	public List<Transactions> getAllTransactionsOfUsers(Long userId)
			throws Exception {
		// TODO Auto-generated method stub
		String sql = "Select * from transactions where users_id=?";
		return (List<Transactions>) genericDao.findAll(sql, Transactions.class,
				userId);
	}

	public CompanyHead findCompanyHeadId(Long companyId, Long userId)
			throws Exception {
		String sql = "Select * from company_head where company_id=? And user_id=?";
		return (CompanyHead) genericDao.findcompnayId(sql, CompanyHead.class,
				companyId, userId);
	}

	/**
	 * @param userId
	 * @param companyId
	 * @return
	 */
	public List<Transactions> getAllTransactionsOfCompany(Long userId,
			Long companyId) throws Exception {
		String sql = "Select * from transactions where users_id=? and company_head_id=?";
		return (List<Transactions>) genericDao.findAll(sql, Transactions.class,
				userId, companyId);
	}

}
