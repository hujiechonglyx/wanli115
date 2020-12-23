package com.lyx.bean;

import java.util.Date;

public class Scrap {
	private String scrapid;
	private String toolid;
	private String reason;
	private Integer life;
	private String userid;
	private Date time;
	private Integer state;
	private String approveid;
	private Date approvetime;

	public String getScrapid() {
		return scrapid;
	}

	public void setScrapid(String scrapid) {
		this.scrapid = scrapid;
	}

	public String getToolid() {
		return toolid;
	}

	public void setToolid(String toolid) {
		this.toolid = toolid;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public Integer getLife() {
		return life;
	}

	public void setLife(Integer life) {
		this.life = life;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public Date getTime() {
		return time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getApproveid() {
		return approveid;
	}

	public void setApproveid(String approveid) {
		this.approveid = approveid;
	}

	public Date getApprovetime() {
		return approvetime;
	}

	public void setApprovetime(Date approvetime) {
		this.approvetime = approvetime;
	}

}
