package com.project.freefay.entity;

import static javax.persistence.GenerationType.IDENTITY;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "basics", catalog = "freefay")
public class Basics implements java.io.Serializable {

	private Long basicsId;
	private String heading1;
	private String h1Img1;
	private String h1Img2;
	private String h1Img3;
	private String h1Img4;
	private String h1Img5;
	private String h1Img6;
	private String h1Img7;
	private String h1Img8;
	private String h1Label1;
	private String h1Label2;
	private String h1Label3;
	private String h1Label4;
	private String h1Label5;
	private String h1Label6;
	private String h1Label7;
	private String h1Label8;
	private String h1Label9;
	private String h1Label10;
	private String h1Label11;
	private String h1Label12;
	private String h1Label13;
	private String h1Label14;
	private String h1Label15;
	private String h1Label16;
	private String h1Label17;
	private String heading2;
	private String h2Label1;
	private String heading3;
	private String h3Label1;
	private String heading4;
	private String h4Label1;
	private String h4Label2;
	private String h4Label3;
	private String h4Label4;
	private String h4Label5;
	private String h4Label6;
	private String h4Label7;
	private String heading5;
	private String h5Img1;
	private String h5Img2;
	private String h5Img3;
	private String h5Img4;
	private String h5Label1;
	private String h5Label2;
	private String h5Label3;
	private String h5Label4;
	private String h5Label5;
	private String h5Label6;
	private String h5Label7;
	private String h5Label8;
	private String h5Label9;
	private String aboutfreefrae;
	private String address;
	private String emailId;
	private String contactNo;
	private String slogan;
	private String socialLabel1;
	private String socialLabel2;
	private String socialLabel3;
	private String socialLabel4;
	private String socialLabel5;
	private String socialLabel6;
	private String s1Img;
	private String s2Img;
	private String s3Img;
	private String s4Img;
	private String s1Label1;
	private String s1Label2;
	private String s1Label3;
	private String s1B1;
	private String s1B1Name;
	private String s1B2;
	private String s1B2Name;
	private String s2Label1;
	private String s2Label2;
	private String s2Label3;
	private String s2Label4;
	private String s2Label5;
	private String s2Label6;
	private String s3Header;
	private String s3Label1;
	private String s3Label2;
	private String s3Label3;
	private String s3Label4;
	private String s3Label5;
	private String s3Label6;
	private String s4Header;
	private String s4Label1;
	private String s4Label2;
	private String s4B1;
	private String s4B1Name;

	public Basics() {

	}

	public Basics(Long basicsId, String heading1, String h1Img1, String h1Img2,
			String h1Img3, String h1Img4, String h1Img5, String h1Img6,
			String h1Img7, String h1Img8, String h1Label1, String h1Label2,
			String h1Label3, String h1Label4, String h1Label5, String h1Label6,
			String h1Label7, String h1Label8, String h1Label9,
			String h1Label10, String h1Label11, String h1Label12,
			String h1Label13, String h1Label14, String h1Label15,
			String h1Label16, String h1Label17, String heading2,
			String h2Label1, String heading3, String h3Label1, String heading4,
			String h4Label1, String h4Label2, String h4Label3, String h4Label5,
			String h4Label6, String h4Label7, String h4Label4, String heading5,
			String h5Img1, String h5Img2, String h5Img3, String h5Img4,
			String h5Label1, String h5Label2, String h5Label3, String h5Label4,
			String h5Label5, String h5Label6, String h5Label7, String h5Label8,
			String h5Label9, String aboutfreefrae, String address,
			String emailId, String contactNo, String slogan,
			String socialLabel1, String socialLabel2, String socialLabel3,
			String socialLabel4, String socialLabel5, String socialLabel6,
			String s1Img, String s2Img, String s3Img, String s4Img,
			String s1Label1, String s1Label2, String s1Label3, String s1b1,
			String s1b1Name, String s1b2, String s1b2Name, String s2Label1,
			String s2Label2, String s2Label3, String s2Label4, String s2Label5,
			String s2Label6, String s3Header, String s3Label1, String s3Label2,
			String s3Label3, String s3Label4, String s3Label5, String s3Label6,
			String s4Header, String s4Label1, String s4Label2, String s4b1,
			String s4b1Name) {
		super();
		this.basicsId = basicsId;
		this.heading1 = heading1;
		this.h1Img1 = h1Img1;
		this.h1Img2 = h1Img2;
		this.h1Img3 = h1Img3;
		this.h1Img4 = h1Img4;
		this.h1Img5 = h1Img5;
		this.h1Img6 = h1Img6;
		this.h1Img7 = h1Img7;
		this.h1Img8 = h1Img8;
		this.h1Label1 = h1Label1;
		this.h1Label2 = h1Label2;
		this.h1Label3 = h1Label3;
		this.h1Label4 = h1Label4;
		this.h1Label5 = h1Label5;
		this.h1Label6 = h1Label6;
		this.h1Label7 = h1Label7;
		this.h1Label8 = h1Label8;
		this.h1Label9 = h1Label9;
		this.h1Label10 = h1Label10;
		this.h1Label11 = h1Label11;
		this.h1Label12 = h1Label12;
		this.h1Label13 = h1Label13;
		this.h1Label14 = h1Label14;
		this.h1Label15 = h1Label15;
		this.h1Label16 = h1Label16;
		this.h1Label17 = h1Label17;
		this.heading2 = heading2;
		this.h2Label1 = h2Label1;
		this.heading3 = heading3;
		this.h3Label1 = h3Label1;
		this.heading4 = heading4;
		this.h4Label1 = h4Label1;
		this.h4Label2 = h4Label2;
		this.h4Label3 = h4Label3;
		this.h4Label4 = h4Label4;
		this.h4Label5 = h4Label5;
		this.h4Label6 = h4Label6;
		this.h4Label7 = h4Label7;
		this.heading5 = heading5;
		this.h5Img1 = h5Img1;
		this.h5Img2 = h5Img2;
		this.h5Img3 = h5Img3;
		this.h5Img4 = h5Img4;
		this.h5Label1 = h5Label1;
		this.h5Label2 = h5Label2;
		this.h5Label3 = h5Label3;
		this.h5Label4 = h5Label4;
		this.h5Label5 = h5Label5;
		this.h5Label6 = h5Label6;
		this.h5Label7 = h5Label7;
		this.h5Label8 = h5Label8;
		this.h5Label9 = h5Label9;
		this.aboutfreefrae = aboutfreefrae;
		this.address = address;
		this.emailId = emailId;
		this.contactNo = contactNo;
		this.slogan = slogan;
		this.socialLabel1 = socialLabel1;
		this.socialLabel2 = socialLabel2;
		this.socialLabel3 = socialLabel3;
		this.socialLabel4 = socialLabel4;
		this.socialLabel5 = socialLabel5;
		this.socialLabel6 = socialLabel6;
		this.s1Img = s1Img;
		this.s2Img = s2Img;
		this.s3Img = s3Img;
		this.s4Img = s4Img;
		this.s1Label1 = s1Label1;
		this.s1Label2 = s1Label2;
		this.s1Label3 = s1Label3;
		this.s1B1 = s1b1;
		this.s1B1Name = s1b1Name;
		this.s1B2 = s1b2;
		this.s1B2Name = s1b2Name;
		this.s2Label1 = s2Label1;
		this.s2Label2 = s2Label2;
		this.s2Label3 = s2Label3;
		this.s2Label4 = s2Label4;
		this.s2Label5 = s2Label5;
		this.s2Label6 = s2Label6;
		this.s3Header = s3Header;
		this.s3Label1 = s3Label1;
		this.s3Label2 = s3Label2;
		this.s3Label3 = s3Label3;
		this.s3Label4 = s3Label4;
		this.s3Label5 = s3Label5;
		this.s3Label6 = s3Label6;
		this.s4Header = s4Header;
		this.s4Label1 = s4Label1;
		this.s4Label2 = s4Label2;
		this.s4B1 = s4b1;
		this.s4B1Name = s4b1Name;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "basics_id", unique = true, nullable = false)
	public Long getBasicsId() {
		return basicsId;
	}

	public void setBasicsId(Long basicsId) {
		this.basicsId = basicsId;
	}

	@Column(name = "heading1", nullable = true, length = 200)
	public String getHeading1() {
		return heading1;
	}

	public void setHeading1(String heading1) {
		this.heading1 = heading1;
	}

	@Column(name = "h1_img1", nullable = true, length = 50)
	public String getH1Img1() {
		return h1Img1;
	}

	public void setH1Img1(String h1Img1) {
		this.h1Img1 = h1Img1;
	}

	@Column(name = "h1_img2", nullable = true, length = 50)
	public String getH1Img2() {
		return h1Img2;
	}

	public void setH1Img2(String h1Img2) {
		this.h1Img2 = h1Img2;
	}

	@Column(name = "h1_img3", nullable = true, length = 50)
	public String getH1Img3() {
		return h1Img3;
	}

	public void setH1Img3(String h1Img3) {
		this.h1Img3 = h1Img3;
	}

	@Column(name = "h1_img4", nullable = true, length = 50)
	public String getH1Img4() {
		return h1Img4;
	}

	public void setH1Img4(String h1Img4) {
		this.h1Img4 = h1Img4;
	}

	@Column(name = "h1_img5", nullable = true, length = 50)
	public String getH1Img5() {
		return h1Img5;
	}

	public void setH1Img5(String h1Img5) {
		this.h1Img5 = h1Img5;
	}

	@Column(name = "h1_img6", nullable = true, length = 50)
	public String getH1Img6() {
		return h1Img6;
	}

	public void setH1Img6(String h1Img6) {
		this.h1Img6 = h1Img6;
	}

	@Column(name = "h1_img7", nullable = true, length = 50)
	public String getH1Img7() {
		return h1Img7;
	}

	public void setH1Img7(String h1Img7) {
		this.h1Img7 = h1Img7;
	}

	@Column(name = "h1_img8", nullable = true, length = 50)
	public String getH1Img8() {
		return h1Img8;
	}

	public void setH1Img8(String h1Img8) {
		this.h1Img8 = h1Img8;
	}

	@Column(name = "h1_label1", nullable = true, length = 250)
	public String getH1Label1() {
		return h1Label1;
	}

	public void setH1Label1(String h1Label1) {
		this.h1Label1 = h1Label1;
	}

	@Column(name = "h1_label2", nullable = true, length = 250)
	public String getH1Label2() {
		return h1Label2;
	}

	public void setH1Label2(String h1Label2) {
		this.h1Label2 = h1Label2;
	}

	@Column(name = "h1_label3", nullable = true, length = 250)
	public String getH1Label3() {
		return h1Label3;
	}

	public void setH1Label3(String h1Label3) {
		this.h1Label3 = h1Label3;
	}

	@Column(name = "h1_label4", nullable = true, length = 250)
	public String getH1Label4() {
		return h1Label4;
	}

	public void setH1Label4(String h1Label4) {
		this.h1Label4 = h1Label4;
	}

	@Column(name = "h1_label5", nullable = true, length = 250)
	public String getH1Label5() {
		return h1Label5;
	}

	public void setH1Label5(String h1Label5) {
		this.h1Label5 = h1Label5;
	}

	@Column(name = "h1_label6", nullable = true, length = 250)
	public String getH1Label6() {
		return h1Label6;
	}

	public void setH1Label6(String h1Label6) {
		this.h1Label6 = h1Label6;
	}

	@Column(name = "h1_label7", nullable = true, length = 250)
	public String getH1Label7() {
		return h1Label7;
	}

	public void setH1Label7(String h1Label7) {
		this.h1Label7 = h1Label7;
	}

	@Column(name = "h1_label8", nullable = true, length = 250)
	public String getH1Label8() {
		return h1Label8;
	}

	public void setH1Label8(String h1Label8) {
		this.h1Label8 = h1Label8;
	}

	@Column(name = "h1_label9", nullable = true, length = 250)
	public String getH1Label9() {
		return h1Label9;
	}

	public void setH1Label9(String h1Label9) {
		this.h1Label9 = h1Label9;
	}

	@Column(name = "h1_label10", nullable = true, length = 250)
	public String getH1Label10() {
		return h1Label10;
	}

	public void setH1Label10(String h1Label10) {
		this.h1Label10 = h1Label10;
	}

	@Column(name = "h1_label11", nullable = true, length = 250)
	public String getH1Label11() {
		return h1Label11;
	}

	public void setH1Label11(String h1Label11) {
		this.h1Label11 = h1Label11;
	}

	@Column(name = "h1_label12", nullable = true, length = 250)
	public String getH1Label12() {
		return h1Label12;
	}

	public void setH1Label12(String h1Label12) {
		this.h1Label12 = h1Label12;
	}

	@Column(name = "h1_label13", nullable = true, length = 250)
	public String getH1Label13() {
		return h1Label13;
	}

	public void setH1Label13(String h1Label13) {
		this.h1Label13 = h1Label13;
	}

	@Column(name = "h1_label14", nullable = true, length = 250)
	public String getH1Label14() {
		return h1Label14;
	}

	public void setH1Label14(String h1Label14) {
		this.h1Label14 = h1Label14;
	}

	@Column(name = "h1_label15", nullable = true, length = 250)
	public String getH1Label15() {
		return h1Label15;
	}

	public void setH1Label15(String h1Label15) {
		this.h1Label15 = h1Label15;
	}

	@Column(name = "h1_label16", nullable = true, length = 250)
	public String getH1Label16() {
		return h1Label16;
	}

	public void setH1Label16(String h1Label16) {
		this.h1Label16 = h1Label16;
	}

	@Column(name = "h1_label17", nullable = true, length = 500)
	public String getH1Label17() {
		return h1Label17;
	}

	public void setH1Label17(String h1Label17) {
		this.h1Label17 = h1Label17;
	}

	@Column(name = "heading2", nullable = true, length = 250)
	public String getHeading2() {
		return heading2;
	}

	public void setHeading2(String heading2) {
		this.heading2 = heading2;
	}

	@Column(name = "h2_label1", nullable = true, length = 500)
	public String getH2Label1() {
		return h2Label1;
	}

	public void setH2Label1(String h2Label1) {
		this.h2Label1 = h2Label1;
	}

	@Column(name = "heading3", nullable = true, length = 250)
	public String getHeading3() {
		return heading3;
	}

	public void setHeading3(String heading3) {
		this.heading3 = heading3;
	}

	@Column(name = "h3_label1", nullable = true, length = 500)
	public String getH3Label1() {
		return h3Label1;
	}

	public void setH3Label1(String h3Label1) {
		this.h3Label1 = h3Label1;
	}

	@Column(name = "heading4", nullable = true, length = 250)
	public String getHeading4() {
		return heading4;
	}

	public void setHeading4(String heading4) {
		this.heading4 = heading4;
	}

	@Column(name = "h4_label1", nullable = true, length = 500)
	public String getH4Label1() {
		return h4Label1;
	}

	public void setH4Label1(String h4Label1) {
		this.h4Label1 = h4Label1;
	}

	@Column(name = "h4_label2", nullable = true, length = 2000)
	public String getH4Label2() {
		return h4Label2;
	}

	public void setH4Label2(String h4Label2) {
		this.h4Label2 = h4Label2;
	}

	@Column(name = "h4_label3", nullable = true, length = 2000)
	public String getH4Label3() {
		return h4Label3;
	}

	public void setH4Label3(String h4Label3) {
		this.h4Label3 = h4Label3;
	}

	@Column(name = "h4_label4", nullable = true, length = 2000)
	public String getH4Label4() {
		return h4Label4;
	}

	public void setH4Label4(String h4Label4) {
		this.h4Label4 = h4Label4;
	}

	@Column(name = "h4_label5", nullable = true, length = 250)
	public String getH4Label5() {
		return h4Label5;
	}

	public void setH4Label5(String h4Label5) {
		this.h4Label5 = h4Label5;
	}

	@Column(name = "h4_label6", nullable = true, length = 250)
	public String getH4Label6() {
		return h4Label6;
	}

	public void setH4Label6(String h4Label6) {
		this.h4Label6 = h4Label6;
	}

	@Column(name = "h4_label7", nullable = true, length = 250)
	public String getH4Label7() {
		return h4Label7;
	}

	public void setH4Label7(String h4Label7) {
		this.h4Label7 = h4Label7;
	}

	@Column(name = "heading5", nullable = true, length = 250)
	public String getHeading5() {
		return heading5;
	}

	public void setHeading5(String heading5) {
		this.heading5 = heading5;
	}

	@Column(name = "h5_img1", nullable = true, length = 50)
	public String getH5Img1() {
		return h5Img1;
	}

	public void setH5Img1(String h5Img1) {
		this.h5Img1 = h5Img1;
	}

	@Column(name = "h5_img2", nullable = true, length = 50)
	public String getH5Img2() {
		return h5Img2;
	}

	public void setH5Img2(String h5Img2) {
		this.h5Img2 = h5Img2;
	}

	@Column(name = "h5_img3", nullable = true, length = 50)
	public String getH5Img3() {
		return h5Img3;
	}

	public void setH5Img3(String h5Img3) {
		this.h5Img3 = h5Img3;
	}

	@Column(name = "h5_img4", nullable = true, length = 50)
	public String getH5Img4() {
		return h5Img4;
	}

	public void setH5Img4(String h5Img4) {
		this.h5Img4 = h5Img4;
	}

	@Column(name = "h5_label1", nullable = true, length = 100)
	public String getH5Label1() {
		return h5Label1;
	}

	public void setH5Label1(String h5Label1) {
		this.h5Label1 = h5Label1;
	}

	@Column(name = "h5_label2", nullable = true, length = 100)
	public String getH5Label2() {
		return h5Label2;
	}

	public void setH5Label2(String h5Label2) {
		this.h5Label2 = h5Label2;
	}

	@Column(name = "h5_label3", nullable = true, length = 100)
	public String getH5Label3() {
		return h5Label3;
	}

	public void setH5Label3(String h5Label3) {
		this.h5Label3 = h5Label3;
	}

	@Column(name = "h5_label4", nullable = true, length = 100)
	public String getH5Label4() {
		return h5Label4;
	}

	public void setH5Label4(String h5Label4) {
		this.h5Label4 = h5Label4;
	}

	@Column(name = "h5_label5", nullable = true, length = 250)
	public String getH5Label5() {
		return h5Label5;
	}

	public void setH5Label5(String h5Label5) {
		this.h5Label5 = h5Label5;
	}

	@Column(name = "h5_label6", nullable = true, length = 250)
	public String getH5Label6() {
		return h5Label6;
	}

	public void setH5Label6(String h5Label6) {
		this.h5Label6 = h5Label6;
	}

	@Column(name = "h5_label7", nullable = true, length = 250)
	public String getH5Label7() {
		return h5Label7;
	}

	public void setH5Label7(String h5Label7) {
		this.h5Label7 = h5Label7;
	}

	@Column(name = "h5_label8", nullable = true, length = 250)
	public String getH5Label8() {
		return h5Label8;
	}

	public void setH5Label8(String h5Label8) {
		this.h5Label8 = h5Label8;
	}

	@Column(name = "h5_label9", nullable = true, length = 250)
	public String getH5Label9() {
		return h5Label9;
	}

	public void setH5Label9(String h5Label9) {
		this.h5Label9 = h5Label9;
	}

	@Column(name = "aboutFreefrae", nullable = true, length = 500)
	public String getAboutfreefrae() {
		return aboutfreefrae;
	}

	public void setAboutfreefrae(String aboutfreefrae) {
		this.aboutfreefrae = aboutfreefrae;
	}

	@Column(name = "address", nullable = true, length = 500)
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	@Column(name = "email_id", nullable = true, length = 250)
	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	@Column(name = "contact_no", nullable = true, length = 250)
	public String getContactNo() {
		return contactNo;
	}

	public void setContactNo(String contactNo) {
		this.contactNo = contactNo;
	}

	@Column(name = "slogan", nullable = true, length = 250)
	public String getSlogan() {
		return slogan;
	}

	public void setSlogan(String slogan) {
		this.slogan = slogan;
	}

	@Column(name = "social_label1", nullable = true, length = 250)
	public String getSocialLabel1() {
		return socialLabel1;
	}

	public void setSocialLabel1(String socialLabel1) {
		this.socialLabel1 = socialLabel1;
	}

	@Column(name = "social_label2", nullable = true, length = 250)
	public String getSocialLabel2() {
		return socialLabel2;
	}

	public void setSocialLabel2(String socialLabel2) {
		this.socialLabel2 = socialLabel2;
	}

	@Column(name = "social_label3", nullable = true, length = 250)
	public String getSocialLabel3() {
		return socialLabel3;
	}

	public void setSocialLabel3(String socialLabel3) {
		this.socialLabel3 = socialLabel3;
	}

	@Column(name = "social_label4", nullable = true, length = 250)
	public String getSocialLabel4() {
		return socialLabel4;
	}

	public void setSocialLabel4(String socialLabel4) {
		this.socialLabel4 = socialLabel4;
	}

	@Column(name = "social_label5", nullable = true, length = 250)
	public String getSocialLabel5() {
		return socialLabel5;
	}

	public void setSocialLabel5(String socialLabel5) {
		this.socialLabel5 = socialLabel5;
	}

	@Column(name = "social_label6", nullable = true, length = 250)
	public String getSocialLabel6() {
		return socialLabel6;
	}

	public void setSocialLabel6(String socialLabel6) {
		this.socialLabel6 = socialLabel6;
	}

	@Column(name = "s1_img", nullable = true, length = 250)
	public String getS1Img() {
		return s1Img;
	}

	public void setS1Img(String s1Img) {
		this.s1Img = s1Img;
	}

	@Column(name = "s2_img", nullable = true, length = 250)
	public String getS2Img() {
		return s2Img;
	}

	public void setS2Img(String s2Img) {
		this.s2Img = s2Img;
	}

	@Column(name = "s3_img", nullable = true, length = 250)
	public String getS3Img() {
		return s3Img;
	}

	public void setS3Img(String s3Img) {
		this.s3Img = s3Img;
	}

	@Column(name = "s4_img", nullable = true, length = 250)
	public String getS4Img() {
		return s4Img;
	}

	public void setS4Img(String s4Img) {
		this.s4Img = s4Img;
	}

	@Column(name = "s1_label1", nullable = true, length = 250)
	public String getS1Label1() {
		return s1Label1;
	}

	public void setS1Label1(String s1Label1) {
		this.s1Label1 = s1Label1;
	}

	@Column(name = "s1_label2", nullable = true, length = 250)
	public String getS1Label2() {
		return s1Label2;
	}

	public void setS1Label2(String s1Label2) {
		this.s1Label2 = s1Label2;
	}

	@Column(name = "s1_label3", nullable = true, length = 250)
	public String getS1Label3() {
		return s1Label3;
	}

	public void setS1Label3(String s1Label3) {
		this.s1Label3 = s1Label3;
	}

	@Column(name = "s1_b1", nullable = true, length = 250)
	public String getS1B1() {
		return s1B1;
	}

	public void setS1B1(String s1b1) {
		s1B1 = s1b1;
	}

	@Column(name = "s1_b1_name", nullable = true, length = 250)
	public String getS1B1Name() {
		return s1B1Name;
	}

	public void setS1B1Name(String s1b1Name) {
		s1B1Name = s1b1Name;
	}

	@Column(name = "s1_b2", nullable = true, length = 250)
	public String getS1B2() {
		return s1B2;
	}

	public void setS1B2(String s1b2) {
		s1B2 = s1b2;
	}

	@Column(name = "s1_b2_name", nullable = true, length = 250)
	public String getS1B2Name() {
		return s1B2Name;
	}

	public void setS1B2Name(String s1b2Name) {
		s1B2Name = s1b2Name;
	}

	@Column(name = "s2_label1", nullable = true, length = 250)
	public String getS2Label1() {
		return s2Label1;
	}

	public void setS2Label1(String s2Label1) {
		this.s2Label1 = s2Label1;
	}

	@Column(name = "s2_label2", nullable = true, length = 250)
	public String getS2Label2() {
		return s2Label2;
	}

	public void setS2Label2(String s2Label2) {
		this.s2Label2 = s2Label2;
	}

	@Column(name = "s2_label3", nullable = true, length = 250)
	public String getS2Label3() {
		return s2Label3;
	}

	public void setS2Label3(String s2Label3) {
		this.s2Label3 = s2Label3;
	}

	@Column(name = "s2_label4", nullable = true, length = 250)
	public String getS2Label4() {
		return s2Label4;
	}

	public void setS2Label4(String s2Label4) {
		this.s2Label4 = s2Label4;
	}

	@Column(name = "s2_label5", nullable = true, length = 250)
	public String getS2Label5() {
		return s2Label5;
	}

	public void setS2Label5(String s2Label5) {
		this.s2Label5 = s2Label5;
	}

	@Column(name = "s2_label6", nullable = true, length = 250)
	public String getS2Label6() {
		return s2Label6;
	}

	public void setS2Label6(String s2Label6) {
		this.s2Label6 = s2Label6;
	}

	@Column(name = "s3_header", nullable = true, length = 250)
	public String getS3Header() {
		return s3Header;
	}

	public void setS3Header(String s3Header) {
		this.s3Header = s3Header;
	}

	@Column(name = "s3_label1", nullable = true, length = 250)
	public String getS3Label1() {
		return s3Label1;
	}

	public void setS3Label1(String s3Label1) {
		this.s3Label1 = s3Label1;
	}

	@Column(name = "s3_label2", nullable = true, length = 250)
	public String getS3Label2() {
		return s3Label2;
	}

	public void setS3Label2(String s3Label2) {
		this.s3Label2 = s3Label2;
	}

	@Column(name = "s3_label3", nullable = true, length = 250)
	public String getS3Label3() {
		return s3Label3;
	}

	public void setS3Label3(String s3Label3) {
		this.s3Label3 = s3Label3;
	}

	@Column(name = "s3_label4", nullable = true, length = 250)
	public String getS3Label4() {
		return s3Label4;
	}

	public void setS3Label4(String s3Label4) {
		this.s3Label4 = s3Label4;
	}

	@Column(name = "s3_label5", nullable = true, length = 250)
	public String getS3Label5() {
		return s3Label5;
	}

	public void setS3Label5(String s3Label5) {
		this.s3Label5 = s3Label5;
	}

	@Column(name = "s3_label6", nullable = true, length = 250)
	public String getS3Label6() {
		return s3Label6;
	}

	public void setS3Label6(String s3Label6) {
		this.s3Label6 = s3Label6;
	}

	@Column(name = "s4_header", nullable = true, length = 250)
	public String getS4Header() {
		return s4Header;
	}

	public void setS4Header(String s4Header) {
		this.s4Header = s4Header;
	}

	@Column(name = "s4_label1", nullable = true, length = 250)
	public String getS4Label1() {
		return s4Label1;
	}

	public void setS4Label1(String s4Label1) {
		this.s4Label1 = s4Label1;
	}

	@Column(name = "s4_label2", nullable = true, length = 250)
	public String getS4Label2() {
		return s4Label2;
	}

	public void setS4Label2(String s4Label2) {
		this.s4Label2 = s4Label2;
	}

	@Column(name = "s4_b1", nullable = true, length = 250)
	public String getS4B1() {
		return s4B1;
	}

	public void setS4B1(String s4b1) {
		s4B1 = s4b1;
	}

	@Column(name = "s4_b1_name", nullable = true, length = 250)
	public String getS4B1Name() {
		return s4B1Name;
	}

	public void setS4B1Name(String s4b1Name) {
		s4B1Name = s4b1Name;
	}

}
