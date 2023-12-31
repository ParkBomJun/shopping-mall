package com.prochel.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prochel.mapper.AuthorMapper;
import com.prochel.model.AuthorVO;
import com.prochel.model.Criteria;

@Service
public class AuthorServiceImpl implements AuthorService {
	
	private static final Logger log = LoggerFactory.getLogger(AuthorServiceImpl.class);

	@Autowired
    AuthorMapper authorMapper;
	
	 @Override
	    public void authorEnroll(AuthorVO author) throws Exception {
	        
	        authorMapper.authorEnroll(author);
	        
	   }
	 
	/* 판매자 목록 */
	   @Override
	   public List<AuthorVO> authorGetList(Criteria cri) throws Exception {
		   
		   log.info("(service)authorGetList()........." + cri);
	        
	       return authorMapper.authorGetList(cri);
	   }
	   
	 /* 판매자 총 수 */
	  @Override
	  public int authorGetTotal(Criteria cri) throws Exception {
	      log.info("(service)authorGetTotal()......." + cri);
	      return authorMapper.authorGetTotal(cri);
	  }
	  
	 /* 판매자 상세 페이지 */
	 @Override
	 public AuthorVO authorGetDetail(int authorId) throws Exception {
		 log.info("authorGetDetail........" + authorId);
		 return authorMapper.authorGetDetail(authorId);
	 }
	 
	 /* 판매자 정보 수정 */
		@Override
		public int authorModify(AuthorVO author) throws Exception {
			log.info("(service) authorModify........." + author);
			return authorMapper.authorModify(author);
		}
		
		/* 작가 정보 삭제 */
		@Override
		public int authorDelete(int authorId) {
			
			log.info("authorDelete..........");
			
			return authorMapper.authorDelete(authorId);
		}

 }
