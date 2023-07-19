package com.prochel.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.prochel.model.Criteria;
import com.prochel.model.ProdVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class ProdMapperTests {
	
	@Autowired
	private ProdMapper mapper;
	
/* 검색 (동적 쿼리 적용) - 작가*/
	
	@Test 
	public void getGoodsListTest1() {
		//
		Criteria cri = new Criteria();
		String type = "A";
		String keyword = "호시노홍철";		// DB에 등록된 작가 데이터
		// DB에 등록되지 않은 작가 데이터
		String catecode = "";
		
		cri.setType(type);
		cri.setKeyword(keyword);
		cri.setAuthorArr(mapper.getAuthorIdList(keyword));
		cri.setCateCode(catecode);
		
		List<ProdVO> list = mapper.getGoodsList(cri);
		
		System.out.println("cri : " + cri );
		System.out.println("list : " + list);
		
	}
}