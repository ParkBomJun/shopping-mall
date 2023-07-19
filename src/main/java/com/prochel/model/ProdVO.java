package com.prochel.model;

import java.util.Date;
import java.util.List;

public class ProdVO {
	
	/*
	 * "PRODID" NUMBER GENERATED ALWAYS AS IDENTITY MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  NOT NULL ENABLE, 
	"PRODNAME" VARCHAR2(50 BYTE) NOT NULL ENABLE, 
	"AUTHORID" NUMBER, 
	"PUBLEYEAR" DATE NOT NULL ENABLE, 
	"PUBLISHER" VARCHAR2(70 BYTE) NOT NULL ENABLE, 
	"CATECODE" VARCHAR2(30 BYTE), 
	"PRODPRICE" NUMBER NOT NULL ENABLE, 
	"PRODSTOCK" NUMBER NOT NULL ENABLE, 
	"PRODDISCOUNT" NUMBER(2,2), 
	"PRODINTRO" CLOB, 
	"PRODCONTENTS" CLOB, 
	"REGDATE" DATE DEFAULT sysdate, 
	"UPDATEDATE" DATE DEFAULT sysdate, 
	 * 
	 * */
	
	/* 상품 id */
	private int ProdId;
	
	/* 상품 이름 */
	private String ProdName;
	
	/* 작가 id */
	private int authorId;
	
	/* 작가 이름 */
	private String authorName;
	
	/* 출판일 */
	private String publeYear;
	
	/* 출판사 */
	private String publisher;
	
	/* 카테고리 코드 */
	private String cateCode;
	
	/* 카테고리 이름 */
	private String cateName;
	
	/* 상품 가격 */
	private int ProdPrice;
	
	/* 상품 재고 */
	private int ProdStock;
	
	/* 상품 할인률(백분율) */
	private double ProdDiscount;
	
	/* 상품 소개 */
	private String ProdIntro;
	
	/* 상품 목차 */
	private String ProdContents;
	
	/* 등록 날짜 */
	private Date regDate;
	
	/* 수정 날짜 */
	private Date updateDate;
	
	/* 이미지 정보 */
	private List<AttachImageVO> imageList;

	public int getProdId() {
		return ProdId;
	}

	public void setProdId(int prodId) {
		ProdId = prodId;
	}

	public String getProdName() {
		return ProdName;
	}

	public void setProdName(String prodName) {
		ProdName = prodName;
	}

	public int getAuthorId() {
		return authorId;
	}

	public void setAuthorId(int authorId) {
		this.authorId = authorId;
	}

	public String getAuthorName() {
		return authorName;
	}

	public void setAuthorName(String authorName) {
		this.authorName = authorName;
	}

	public String getPubleYear() {
		return publeYear;
	}

	public void setPubleYear(String publeYear) {
		this.publeYear = publeYear;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getCateCode() {
		return cateCode;
	}

	public void setCateCode(String cateCode) {
		this.cateCode = cateCode;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

	public int getProdPrice() {
		return ProdPrice;
	}

	public void setProdPrice(int prodPrice) {
		ProdPrice = prodPrice;
	}

	public int getProdStock() {
		return ProdStock;
	}

	public void setProdStock(int prodStock) {
		ProdStock = prodStock;
	}

	public double getProdDiscount() {
		return ProdDiscount;
	}

	public void setProdDiscount(double prodDiscount) {
		ProdDiscount = prodDiscount;
	}

	public String getProdIntro() {
		return ProdIntro;
	}

	public void setProdIntro(String prodIntro) {
		ProdIntro = prodIntro;
	}

	public String getProdContents() {
		return ProdContents;
	}

	public void setProdContents(String prodContents) {
		ProdContents = prodContents;
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public List<AttachImageVO> getImageList() {
		return imageList;
	}

	public void setImageList(List<AttachImageVO> imageList) {
		this.imageList = imageList;
	}

	@Override
	public String toString() {
		return "ProdVO [ProdId=" + ProdId + ", ProdName=" + ProdName + ", authorId=" + authorId + ", authorName="
				+ authorName + ", publeYear=" + publeYear + ", publisher=" + publisher + ", cateCode=" + cateCode
				+ ", cateName=" + cateName + ", ProdPrice=" + ProdPrice + ", ProdStock=" + ProdStock + ", ProdDiscount="
				+ ProdDiscount + ", ProdIntro=" + ProdIntro + ", ProdContents=" + ProdContents + ", regDate=" + regDate
				+ ", updateDate=" + updateDate + ", imageList=" + imageList + "]";
	}
	
	
}
