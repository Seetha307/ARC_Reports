package com.bean;

import java.sql.Date;

public class RevenueProjectionBean {

	String ibu=null;
	double CSGBE=0;
	double actuals=0;
	double deleiveryBE=0;
	String quarter=null;
	Date uploadeddate;
	public String getIbu() {
		return ibu;
	}
	public void setIbu(String ibu) {
		this.ibu = ibu;
	}
	public double getCSGBE() {
		return CSGBE;
	}
	public void setCSGBE(double csgbe) {
		CSGBE = csgbe;
	}
	public double getActuals() {
		return actuals;
	}
	public void setActuals(double actuals) {
		this.actuals = actuals;
	}
	public double getDeleiveryBE() {
		return deleiveryBE;
	}
	public void setDeleiveryBE(double deleiveryBE) {
		this.deleiveryBE = deleiveryBE;
	}
	public String getQuarter() {
		return quarter;
	}
	public void setQuarter(String quarter) {
		this.quarter = quarter;
	}
	public Date getUploadeddate() {
		return uploadeddate;
	}
	public void setUploadeddate(Date uploadeddate) {
		this.uploadeddate = uploadeddate;
	}
	
	
	}