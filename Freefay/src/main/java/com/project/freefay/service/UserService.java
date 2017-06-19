package com.project.freefay.service;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.freefay.dao.GenericDAO;
import com.project.freefay.dao.GenericDaojdbctemplate;
import com.project.freefay.entity.Attachments;
import com.project.freefay.entity.Authorities;
import com.project.freefay.entity.Basics;
import com.project.freefay.entity.Category;
import com.project.freefay.entity.Cities;
import com.project.freefay.entity.CompanyNotification;
import com.project.freefay.entity.Countries;
import com.project.freefay.entity.Fields;
import com.project.freefay.entity.JobDetails;
import com.project.freefay.entity.MessageHeads;
import com.project.freefay.entity.Messages;
import com.project.freefay.entity.News;
import com.project.freefay.entity.Portfolio;
import com.project.freefay.entity.Regions;
import com.project.freefay.entity.Requests;
import com.project.freefay.entity.Services;
import com.project.freefay.entity.Static;
import com.project.freefay.entity.SubCategory;
import com.project.freefay.entity.Testimonials;
import com.project.freefay.entity.Token;
import com.project.freefay.entity.UserDuration;
import com.project.freefay.entity.Users;
import com.project.freefay.entity.Usersp;

@Service
public class UserService {

	@Autowired
	private GenericDAO genericDAO;
	@Autowired
	private GenericDaojdbctemplate daojdbctemplate;

	// <-------------------------------------------------------------------------->
	@SuppressWarnings("unchecked")
	public void addUsers(Users users) throws Exception {

		genericDAO.insertOrUpdate(users);

	}

	@SuppressWarnings("unchecked")
	public void addauthority(Authorities authorities) throws Exception {

		genericDAO.insertOrUpdate(authorities);
	}

	@SuppressWarnings("unchecked")
	public List<Users> getUserIds(String string) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("in userservice" + string);
		return genericDAO.findByNamedQuery("getUsersId", string);
	}

	// genericDAojdbctemplate
	public Long getUserId(String string) throws Exception {
		String sql = "select users_id from users where username=?";
		System.out.println(sql);
		return daojdbctemplate.findId(sql, string);
	}

	public List<Users> getAllUsers() throws Exception {
		return genericDAO.findAll(Users.class);
	}

	public List<Users> getAllUsersForNotification() throws Exception {
		return genericDAO.findByNamedQuery("getUsersForEmail");
	}

	public List<Users> getAllpendingUsers() throws Exception {
		return genericDAO.findByNamedQuery("getPendingUsers");
	}

	public List<Users> getAllactiveUsers() throws Exception {
		return genericDAO.findByNamedQuery("getActiveUsers");
	}

	public List<Users> getAllunactiveUsers() throws Exception {
		return genericDAO.findByNamedQuery("getUnActiveUsers");
	}

	public List<Users> getAllblockedUsers() throws Exception {
		return genericDAO.findByNamedQuery("getblockedUsers");
	}

	public Users getUsers(Users users) throws Exception {
		// TODO Auto-generated method stub
		return (Users) genericDAO.findByPrimarKey(Users.class, users.getId()
				.getUsersId());
	}

	// <-------------------------------------------------------------------------->
	@SuppressWarnings("unchecked")
	public List<Countries> getAllCountries() throws Exception {
		return genericDAO.findAll(Countries.class);
	}

	// =============ManageCategory===========================
	public List<Category> getAllCategory() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findAll(Category.class);
	}

	public void addCategory(Category category) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(category);
	}

	public void updateCategory(Category category) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(category);
	}

	public Category getCategory(Category category) throws Exception {
		// TODO Auto-generated method stub
		return (Category) genericDAO.findByPrimarKey(Category.class,
				category.getCategoryId());
	}

	public void addlogindt(UserDuration duration) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(duration);
	}

	public List<UserDuration> getUserDuration(UserDuration duration)
			throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByExample(duration);
	}

	// <-------------------------------------------------------------------------->

	// =============ManageSubCategory===========================
	public List<SubCategory> getAllSubCategory() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findAll(SubCategory.class);
	}

	public void addSubCategory(SubCategory subcategory) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(subcategory);
	}

	public void updateSubCategory(SubCategory subcategory) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(subcategory);
	}

	public SubCategory getSubCategory(SubCategory subcategory) throws Exception {
		// TODO Auto-generated method stub
		return (SubCategory) genericDAO.findByPrimarKey(SubCategory.class,
				subcategory.getSubCategoryId());
	}

	// <-------------------------------------------------------------------------->
	// =============Complete Profile===========================
	public List<Regions> getAllSRegions() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findAll(Regions.class);
	}

	public List<Cities> getAllCities() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findAll(Cities.class);
	}

	public List<Regions> getRegionsByCode(Regions regions) throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getRegions", regions.getCountry());
	}

	public List<Cities> getAllCitiesByRegion(Cities cities2) {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getCities",
				cities2.getCountryCode(), cities2.getRegion());
	}

	public List<Countries> getCountryByCode(String code) throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getCountry", code);

	}

	// =============ManageField===========================
	public List<Fields> getAllField() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findAll(Fields.class);
	}

	public void addFeild(Fields fields) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(fields);
	}

	public void updateFields(Fields fields) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(fields);
	}

	public Fields getField(Fields field) throws Exception {
		// TODO Auto-generated method stub
		return (Fields) genericDAO.findByPrimarKey(Fields.class,
				field.getFieldsId());
	}

	public List<SubCategory> getSubCategory(Long categoryId) throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getSubCategory", categoryId);

	}

	public List<Fields> getFields(Long subCategoryId) throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getFields", subCategoryId);
	}

	public void addattachments(Attachments attachments) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(attachments);
	}

	// ===============================Manage portfolio==========================
	public void addPortfolio(Portfolio portfolio) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(portfolio);
	}

	@SuppressWarnings("unchecked")
	public List<Portfolio> getUserPortfolio(String string) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("in userservice" + string);
		return genericDAO.findByNamedQuery("getUsersPortfolio", string);
	}

	// ===============================ManageRequests============
	public void addRequest(Requests requests) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(requests);
	}

	public List<Requests> getPendingRequests(String username) throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getPendingRequests", username);
	}

	public List<Requests> getapprovedRequests(String username) throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getApprovedRequests", username);
	}

	public List<Requests> getunApprovedRequests(String username)
			throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getUnApprovedRequests", username);
	}

	public List<Requests> getPendingRequests() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getadminPendingRequests");
	}

	public List<Requests> getapprovedRequests() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getadminApprovedRequests");
	}

	public List<Requests> getunApprovedRequests() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getadminUnApprovedRequests");
	}

	public List<Requests> getRequestByID(Long requestId) throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getRequestById", requestId);
	}

	public void updateRequests(Requests requests) throws Exception {
		genericDAO.insertOrUpdate(requests);
	}

	public List<Requests> getLimitedRequests() throws Exception {
		return genericDAO.findByNamedQuery("getLimitedRequests");
	}

	// ==================ManageService========================
	public void addService(Services services) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(services);
	}

	public List<Services> getPendingServices(String username) throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getPendingServices", username);
	}

	public List<Services> getapprovedServices(String username) throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getApprovedServices", username);
	}

	public List<Services> getunApprovedServices(String username)
			throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getUnApprovedServices", username);
	}

	public List<Services> getPendingServices() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getadminPendingServices");
	}

	public List<Services> getapprovedServices() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getadminApprovedServices");
	}

	public List<Services> getunApprovedServices() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getadminUnApprovedServices");
	}

	public List<Services> getServiceByID(Long serviceId) throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getServicesById", serviceId);
	}

	public void updateService(Services services) throws Exception {
		genericDAO.insertOrUpdate(services);
	}

	public List<Services> getServiceByDate(Services services) throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getServicesByDate", services
				.getUsers().getId().getUsername(), services.getDate(),
				services.getTime());
	}

	public List<Services> getLimitedServices() throws Exception {
		return genericDAO.findByNamedQuery("getLimitedServices");
	}

	// ============================Verification-mail===========================
	public void addToken(Token token) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(token);

	}

	public List<Token> getActiveTokens() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getActiveTokens");

	}

	// <-------------------------------------------------------------------------->

	public void addCompanyNotification(CompanyNotification companyNotification)
			throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(companyNotification);
	}

	public List<CompanyNotification> getapprovedNotifications()
			throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getadminApprovedNotifications");
	}

	public List<CompanyNotification> getCanncelledNotifications()
			throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getadminCanncelledNotifications");
	}

	public List<CompanyNotification> getBlockedNotifications() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getadminBlockedNotifications");
	}

	public List<CompanyNotification> getDelieveredNotifications()
			throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getadminDelieveredNotifications");
	}

	public List<CompanyNotification> getNotificationByID(
			Long companyNotificationId) throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getNotificationById",
				companyNotificationId);
	}

	public List<CompanyNotification> getTodaysNotification(Date date)
			throws Exception {
		// TODO Auto-generated method stub

		return genericDAO.findByNamedQuery("getTodaysNotifications", date);
	}

	public List<Users> getUserBirthdays(String birthday) throws Exception {
		return genericDAO.findByNamedQuery("getUserBirthdays", birthday);
	}

	public List<Static> getStaticAboutUs() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getStaticAboutUs", "About Us");
	}

	public List<Static> getStatictermOfUse() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getStaticAboutUs", "Term Of Use");
	}

	public List<Static> getStaticprivacyPolicy() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO
				.findByNamedQuery("getStaticAboutUs", "Privacy Policy");
	}

	public void updateStaticPage(Static static1) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(static1);
	}

	public List<Basics> getBasics() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findAll(Basics.class);
	}

	public void updateBasics(Basics basics) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(basics);
	}

	// news
	public void addNews(News news) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(news);
	}

	public List<News> getActiveNews() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getActiveNews");
	}

	public List<News> getCancelledNews() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getCancelledNews");
	}

	public List<News> getAllNews() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findAll(News.class);
	}

	public List<News> getNewsById(Long newsId) throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getNewsById", newsId);
	}

	// Testimonials
	public List<Testimonials> getActiveTestimonials() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getActiveTestimonials");
	}

	public List<Testimonials> getAllTestimonials() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findAll(Testimonials.class);
	}

	public List<Testimonials> getCancelledTestimonials() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getcancelledTestimonials");
	}

	public void addTestimonials(Testimonials testimonials) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(testimonials);
	}

	public List<Testimonials> getTestimonialsById(Long testimonialId)
			throws Exception {
		// TODO Auto-generated method stub
		return genericDAO
				.findByNamedQuery("getTestimonialsById", testimonialId);
	}

	public List<Users> getUserById(Long userId) throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getUsersById", userId);
	}

	public List<News> getTopActiveNews() throws Exception {
		return genericDAO.findByNamedQuery("getTopNews");
	}

	public List<Testimonials> getTopTestimonials() throws Exception {
		return genericDAO.findByNamedQuery("getTopTestimonials");
	}

	public List<Services> getUserServices(Long usersId, Long servicesId)
			throws Exception {

		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getUserServices", servicesId,
				usersId);
	}

	public List<Requests> getUserRequests(long usersId, Long requestsId)
			throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getUserRequests", requestsId,
				usersId);
	}

	// ===================Messaging + Order + bids=====================
	public void addMessageHead(MessageHeads heads) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(heads);
	}

	public void addMessage(Messages messages) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(messages);

	}

	public List<MessageHeads> getMessageHeadsIdByDate(MessageHeads heads) {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getMessageHeadId", heads.getDate(),
				heads.getTime(), heads.getUsersByFkMessageHeadsUsers1().getId()
						.getUsername(), heads.getUsersByFkMessageHeadsUsers1()
						.getId().getUsersId(),
				heads.getUsersByFkMessageHeadsUsers2().getId().getUsername(),
				heads.getUsersByFkMessageHeadsUsers2().getId().getUsersId(),
				heads.getTypeId());

	}

	// ====================chatting-long polling===

	public List<MessageHeads> getMessageHeadsByservicessuser(String username,
			Long usersId) throws Exception {
		// TODO Auto-generated method stub

		return genericDAO.findByNamedQuery("getMessageHeadByuserIdServices",
				username, usersId, username, usersId);
	}

	public List<MessageHeads> getMessageHeadsByrequestsuser(String username,
			Long usersId) throws Exception {
		// TODO Auto-generated method stub

		return genericDAO.findByNamedQuery("getMessageHeadByuserIdRequests",
				username, usersId, username, usersId);
	}

	public List<MessageHeads> getMessageHeadsByallmailuser(String username,
			Long usersId) throws Exception {
		// TODO Auto-generated method stub

		return genericDAO.findByNamedQuery("getMessageHeadByuserIdAllMail",
				username, usersId, username, usersId);
	}

	// ==============================admin-polling

	public List<MessageHeads> getMessageHeadsByservicessuseradmin()
			throws Exception {
		// TODO Auto-generated method stub

		return genericDAO
				.findByNamedQuery("getMessageHeadByuserIdServicesadmin");
	}

	public List<MessageHeads> getMessageHeadsByrequestsuseradmin()
			throws Exception {
		// TODO Auto-generated method stub

		return genericDAO
				.findByNamedQuery("getMessageHeadByuserIdRequestsadmin");
	}

	public List<MessageHeads> getMessageHeadsByallmailuseradmin()
			throws Exception {
		// TODO Auto-generated method stub

		return genericDAO
				.findByNamedQuery("getMessageHeadByuserIdAllMailadmin");
	}

	// ================================

	public List<Messages> getMessagesByHeaderId(Long id) throws Exception {
		return genericDAO.findByNamedQuery("getMessagesByHeadId", id);
	}

	public List<MessageHeads> getMessageHeadById(Long id) throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getMessageHeadById", id);
	}

	public void addJobDetails(JobDetails details) throws Exception {
		// TODO Auto-generated method stub
		genericDAO.insertOrUpdate(details);
	}

	public List<JobDetails> getJobDetailsByMessageHeadId(Long id)
			throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getJobDetailsByMessageHeadId", id);
	}

	public List<Category> getCategoryById(long parseInt) throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getCategoryById", parseInt);
	}

	public List<Category> getCategoryMenu() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getCategoryMenu");
	}

	public List<Category> getAllCategoryActive() throws Exception {
		// TODO Auto-generated method stub
		return genericDAO.findByNamedQuery("getCategoryActive");
		
	}

}
