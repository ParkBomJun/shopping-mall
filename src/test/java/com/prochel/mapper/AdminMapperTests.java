package com.prochel.mapper;
import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.prochel.model.AttachImageVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class AdminMapperTests {
		
		@Autowired
		private AdminMapper mapper;
		
		/* 지정 상품 이미지 정보 얻기 */
		@Test
		public void getAttachInfoTest() {
			
			int prodId = 10;
			
			List<AttachImageVO> list = mapper.getAttachInfo(prodId);
			
			System.out.println("list : " + list);
			
		}

	}
