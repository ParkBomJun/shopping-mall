package com.prochel.service;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.prochel.model.AttachImageVO;
import com.prochel.model.ProdVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class AdminServiceTests {
	
	@Autowired
	private AdminService service;
	
	/* 상품 등록 & 상품 이미지 등록 테스트 */
	
	@Test
	public void ProdEnrollTEsts() {
		
		ProdVO prod = new ProdVO();
		// 상품 정보
		prod.setProdName("service 테스트");
		prod.setAuthorId(4445);
		prod.setPubleYear("2021-03-18");
		prod.setPublisher("출판사");
		prod.setCateCode("200000");
		prod.setProdPrice(20000);
		prod.setProdStock(300);
		prod.setProdDiscount(0.23);
		prod.setProdIntro("책 소개 ");
		prod.setProdContents("책 목차 ");

		// 이미지 정보
		List<AttachImageVO> imageList = new ArrayList<AttachImageVO>(); 
		
		AttachImageVO image1 = new AttachImageVO();
		AttachImageVO image2 = new AttachImageVO();
		
		image1.setFileName("test Image 1");
		image1.setUploadPath("test image 1");
		image1.setUuid("test1111");
		
		image2.setFileName("test Image 2");
		image2.setUploadPath("test image 2");
		image2.setUuid("test2222");
		
		imageList.add(image1);
		imageList.add(image2);
		
		prod.setImageList(imageList);        
		
		service.ProdEnroll(prod);
		
		System.out.println("등록된 VO : " + prod);
		
		
	}
		
	}
