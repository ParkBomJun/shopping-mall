package com.prochel.model;

import java.sql.Timestamp;
import java.util.List;

public class AuthorVO {
	
	/* 작가 아이디 */
    private int authorId;
    
    /* 작가 이름 */
    private String authorName;
    
    /* 국가 id */
    private String SellerId;
    
    /* 작가 국가 */
    private String SellerName;
    
    /* 작가 소개 */
    private String authorIntro;
    
    /*등록 날짜*/
    private Timestamp updateDate;
    
    /* 수정 날짜 */
    private Timestamp regdate;
    
    /* 이미지 정보 */
	private List<AttachImageVO> imageList;

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
	
	public String getSellerId() {
		return SellerId;
	}

	public void setSellerId(String sellerId) {
		this.SellerId = sellerId;
		if(sellerId.equals("01")) {
            this.SellerName = "개인";
        } else {
            this.SellerName = "기업";
        }
	}

	public String getSellerName() {
		return SellerName;
	}

	public void setSellerName(String sellerName) {
		this.SellerName = sellerName;
	}
	

	public String getAuthorIntro() {
		return authorIntro;
	}

	public void setAuthorIntro(String authorIntro) {
		this.authorIntro = authorIntro;
	}

	public Timestamp getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Timestamp updateDate) {
		this.updateDate = updateDate;
	}

	public Timestamp getRegdate() {
		return regdate;
	}

	public void setRegdate(Timestamp regdate) {
		this.regdate = regdate;
	}
	
	public List<AttachImageVO> getImageList() {
		return imageList;
	}

	public void setImageList(List<AttachImageVO> imageList) {
		this.imageList = imageList;
	}
	
	@Override
	public String toString() {
		return "AuthorVO [authorId=" + authorId + ", authorName=" + authorName + ", SellerId=" + SellerId
				+ ", SellerName=" + SellerName + ", authorIntro=" + authorIntro + ", updateDate=" + updateDate
				+ ", regdate=" + regdate + ", imageList=" + imageList + "]";
	}
	
}
