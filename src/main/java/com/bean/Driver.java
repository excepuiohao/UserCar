package com.bean;

import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

public class Driver {
	@NotEmpty(message = "���Ų���Ϊ��")
	String dri_id;// ����
	@NotEmpty(message = "��ѡ����ȷ�Ա�")
	String dri_sex;// �Ա�
	@Length(max = 11, min = 11, message = "��������ȷ�绰����")
	String dri_phone;// �ֻ�����
	@NotEmpty(message = "��������Ϊ��")
	String dri_name;// ����
	@Length(max = 18, min = 18, message = "��������ȷ���֤��")
	String dri_identity;// ���֤��
	@Pattern(regexp = "\\w+@\\w+(\\.\\w{2,3})*\\.\\w{2,3}", message = "��������ȷE-mail")
	String dri_email;// email
	@Length(max = 6, min = 6, message = "������6λ����")
	String dri_password;// ����
	String dri_polotics;// ������ò
	String dri_birthday;// ��������
	String dri_address1;// ʡ
	String dri_address2;// ��
	String dri_address3;// ��
	String dri_address4;// ��ϸסַ
	String dri_address;// ��ͥסַ
	String dri_photo;// ��Ƭ
	@NotEmpty(message = "��ʻ֤�Ų���Ϊ��")
	String dri_licensenum;// ��ʻ֤��
	String dri_getlicensetime;// ��֤ʱ��
	String dri_carstyle;// ׼�ݳ���
	Integer dri_diverage;// ����
	String dri_lia;// ��֤����
	String dri_toc;// ��ͬ��Ч��
	Integer dri_hzday;// ��֤��������
	String dri_type;// ��ʻԱ����
	String dri_status;// ��ʻԱ״̬
	String dri_validperiod;// ������Ч����
	String dri_fleet; // ��������
	String dri_remarks; // ��ע

	public String getDri_id() {
		return dri_id;
	}

	public void setDri_id(String dri_id) {
		this.dri_id = dri_id;
	}

	public String getDri_sex() {
		return dri_sex;
	}

	public void setDri_sex(String dri_sex) {
		this.dri_sex = dri_sex;
	}

	public String getDri_phone() {
		return dri_phone;
	}

	public void setDri_phone(String dri_phone) {
		this.dri_phone = dri_phone;
	}

	public String getDri_name() {
		return dri_name;
	}

	public void setDri_name(String dri_name) {
		this.dri_name = dri_name;
	}

	public String getDri_identity() {
		return dri_identity;
	}

	public void setDri_identity(String dri_identity) {
		this.dri_identity = dri_identity;
	}

	public String getDri_email() {
		return dri_email;
	}

	public void setDri_email(String dri_email) {
		this.dri_email = dri_email;
	}

	public String getDri_password() {
		return dri_password;
	}

	public void setDri_password(String dri_password) {
		this.dri_password = dri_password;
	}

	public String getDri_polotics() {
		return dri_polotics;
	}

	public void setDri_polotics(String dri_polotics) {
		this.dri_polotics = dri_polotics;
	}

	public String getDri_birthday() {
		return dri_birthday;
	}

	public void setDri_birthday(String dri_birthday) {
		this.dri_birthday = dri_birthday;
	}

	public String getDri_address1() {
		return dri_address1;
	}

	public void setDri_address1(String dri_address1) {
		this.dri_address1 = dri_address1;
	}

	public String getDri_address2() {
		return dri_address2;
	}

	public void setDri_address2(String dri_address2) {
		this.dri_address2 = dri_address2;
	}

	public String getDri_address3() {
		return dri_address3;
	}

	public void setDri_address3(String dri_address3) {
		this.dri_address3 = dri_address3;
	}

	public String getDri_address4() {
		return dri_address4;
	}

	public void setDri_address4(String dri_address4) {
		this.dri_address4 = dri_address4;
	}

	public String getDri_address() {
		return dri_address;
	}

	public void setDri_address(String dri_address) {
		this.dri_address = dri_address;
	}

	public String getDri_photo() {
		return dri_photo;
	}

	public void setDri_photo(String dri_photo) {
		this.dri_photo = dri_photo;
	}

	public String getDri_licensenum() {
		return dri_licensenum;
	}

	public void setDri_licensenum(String dri_licensenum) {
		this.dri_licensenum = dri_licensenum;
	}

	public String getDri_getlicensetime() {
		return dri_getlicensetime;
	}

	public void setDri_getlicensetime(String dri_getlicensetime) {
		this.dri_getlicensetime = dri_getlicensetime;
	}

	public String getDri_carstyle() {
		return dri_carstyle;
	}

	public void setDri_carstyle(String dri_carstyle) {
		this.dri_carstyle = dri_carstyle;
	}

	public Integer getDri_diverage() {
		return dri_diverage;
	}

	public void setDri_diverage(Integer dri_diverage) {
		this.dri_diverage = dri_diverage;
	}

	public String getDri_lia() {
		return dri_lia;
	}

	public void setDri_lia(String dri_lia) {
		this.dri_lia = dri_lia;
	}

	public String getDri_toc() {
		return dri_toc;
	}

	public void setDri_toc(String dri_toc) {
		this.dri_toc = dri_toc;
	}

	public Integer getDri_hzday() {
		return dri_hzday;
	}

	public void setDri_hzday(Integer dri_hzday) {
		this.dri_hzday = dri_hzday;
	}

	public String getDri_type() {
		return dri_type;
	}

	public void setDri_type(String dri_type) {
		this.dri_type = dri_type;
	}

	public String getDri_status() {
		return dri_status;
	}

	public void setDri_status(String dri_status) {
		this.dri_status = dri_status;
	}

	public String getDri_validperiod() {
		return dri_validperiod;
	}

	public void setDri_validperiod(String dri_validperiod) {
		this.dri_validperiod = dri_validperiod;
	}

	public String getDri_fleet() {
		return dri_fleet;
	}

	public void setDri_fleet(String dri_fleet) {
		this.dri_fleet = dri_fleet;
	}

	public String getDri_remarks() {
		return dri_remarks;
	}

	public void setDri_remarks(String dri_remarks) {
		this.dri_remarks = dri_remarks;
	}

	public Driver(String dri_id, String dri_sex, String dri_phone, String dri_name, String dri_identity,
			String dri_email, String dri_password, String dri_polotics, String dri_birthday, String dri_address,
			String dri_photo, String dri_licensenum, String dri_getlicensetime, String dri_carstyle,
			Integer dri_diverage, String dri_lia, String dri_toc, Integer dri_hzday, String dri_type, String dri_status,
			String dri_validperiod, String dri_fleet, String dri_remarks) {
		super();
		this.dri_id = dri_id;
		this.dri_sex = dri_sex;
		this.dri_phone = dri_phone;
		this.dri_name = dri_name;
		this.dri_identity = dri_identity;
		this.dri_email = dri_email;
		this.dri_password = dri_password;
		this.dri_polotics = dri_polotics;
		this.dri_birthday = dri_birthday;
		this.dri_address = dri_address;
		this.dri_photo = dri_photo;
		this.dri_licensenum = dri_licensenum;
		this.dri_getlicensetime = dri_getlicensetime;
		this.dri_carstyle = dri_carstyle;
		this.dri_diverage = dri_diverage;
		this.dri_lia = dri_lia;
		this.dri_toc = dri_toc;
		this.dri_hzday = dri_hzday;
		this.dri_type = dri_type;
		this.dri_status = dri_status;
		this.dri_validperiod = dri_validperiod;
		this.dri_fleet = dri_fleet;
		this.dri_remarks = dri_remarks;
	}

	public Driver() {
		super();
	}

	@Override
	public String toString() {
		return "Driver [dri_id=" + dri_id + ", dri_sex=" + dri_sex + ", dri_phone=" + dri_phone + ", dri_name="
				+ dri_name + ", dri_identity=" + dri_identity + ", dri_email=" + dri_email + ", dri_password="
				+ dri_password + ", dri_polotics=" + dri_polotics + ", dri_birthday=" + dri_birthday + ", dri_address="
				+ dri_address + ", dri_photo=" + dri_photo + ", dri_licensenum=" + dri_licensenum
				+ ", dri_getlicensetime=" + dri_getlicensetime + ", dri_carstyle=" + dri_carstyle + ", dri_diverage="
				+ dri_diverage + ", dri_lia=" + dri_lia + ", dri_toc=" + dri_toc + ", dri_hzday=" + dri_hzday
				+ ", dri_type=" + dri_type + ", dri_status=" + dri_status + ", dri_validperiod=" + dri_validperiod
				+ ", dri_fleet=" + dri_fleet + ", dri_remarks=" + dri_remarks + "]";
	}

}
