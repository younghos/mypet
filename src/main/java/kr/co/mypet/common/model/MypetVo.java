package kr.co.mypet.common.model;

import java.util.Date;

public class MypetVo {

	private int rnum;

	private String mem_name;

	private String myp_id;
	private String myp_mem;
	private String myp_petk;
	private Date myp_birth;
	private String myp_sick;
	private String myp_img;
	private String myp_neu;
	private String myp_gender;
	private String myp_name;
	private String myp_del;

	// 품종을 꺼내 오기위해 입력
	private String petk_id;
	private String petk_name;
	private String petk_am;
	private String petk_size;

	// 동물
	private String am_id;
	private String am_name;

	@Override
	public String toString() {
		return "MypetVo [rnum=" + rnum + ", mem_name=" + mem_name + ", myp_id=" + myp_id + ", myp_mem=" + myp_mem
				+ ", myp_petk=" + myp_petk + ", myp_birth=" + myp_birth + ", myp_sick=" + myp_sick + ", myp_img="
				+ myp_img + ", myp_neu=" + myp_neu + ", myp_gender=" + myp_gender + ", myp_name=" + myp_name
				+ ", myp_del=" + myp_del + ", petk_id=" + petk_id + ", petk_name=" + petk_name + ", petk_am=" + petk_am
				+ ", petk_size=" + petk_size + ", am_id=" + am_id + ", am_name=" + am_name + "]";
	}

	public String getMyp_del() {
		return myp_del;
	}

	public void setMyp_del(String myp_del) {
		this.myp_del = myp_del;
	}

	public String getAm_id() {
		return am_id;
	}

	public void setAm_id(String am_id) {
		this.am_id = am_id;
	}

	public String getAm_name() {
		return am_name;
	}

	public void setAm_name(String am_name) {
		this.am_name = am_name;
	}

	public String getPetk_am() {
		return petk_am;
	}

	public void setPetk_am(String petk_am) {
		this.petk_am = petk_am;
	}

	public String getPetk_size() {
		return petk_size;
	}

	public void setPetk_size(String petk_size) {
		this.petk_size = petk_size;
	}

	public String getPetk_id() {
		return petk_id;
	}

	public void setPetk_id(String petk_id) {
		this.petk_id = petk_id;
	}

	public String getPetk_name() {
		return petk_name;
	}

	public void setPetk_name(String petk_name) {
		this.petk_name = petk_name;
	}

	public String getMyp_name() {
		return myp_name;
	}

	public void setMyp_name(String myp_name) {
		this.myp_name = myp_name;
	}

	public String getMyp_id() {
		return myp_id;
	}

	public void setMyp_id(String myp_id) {
		this.myp_id = myp_id;
	}

	public String getMyp_mem() {
		return myp_mem;
	}

	public void setMyp_mem(String myp_mem) {
		this.myp_mem = myp_mem;
	}

	public String getMyp_petk() {
		return myp_petk;
	}

	public void setMyp_petk(String myp_petk) {
		this.myp_petk = myp_petk;
	}

	public Date getMyp_birth() {
		return myp_birth;
	}

	public void setMyp_birth(Date myp_birth) {
		this.myp_birth = myp_birth;
	}

	public String getMyp_sick() {
		return myp_sick;
	}

	public void setMyp_sick(String myp_sick) {
		this.myp_sick = myp_sick;
	}

	public String getMyp_img() {
		return myp_img;
	}

	public void setMyp_img(String myp_img) {
		this.myp_img = myp_img;
	}

	public String getMyp_neu() {
		return myp_neu;
	}

	public void setMyp_neu(String myp_neu) {
		this.myp_neu = myp_neu;
	}

	public String getMyp_gender() {
		return myp_gender;
	}

	public void setMyp_gender(String myp_gender) {
		this.myp_gender = myp_gender;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

}
