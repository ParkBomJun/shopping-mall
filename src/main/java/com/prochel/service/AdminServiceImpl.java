package com.prochel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.prochel.mapper.AdminMapper;
import com.prochel.model.AttachImageVO;
import com.prochel.model.CateVO;
import com.prochel.model.Criteria;
import com.prochel.model.ProdVO;

import lombok.extern.log4j.Log4j;

@Service
@Log4j
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;	
	
	/* 상품 등록 */
	@Transactional
	@Override
	public void ProdEnroll(ProdVO prod) {
		
		 log.info("(service)ProdEnroll........");
		
		adminMapper.ProdEnroll(prod);
		
		if(prod.getImageList() == null || prod.getImageList().size() <= 0) {
			return;
		}
		
		prod.getImageList().forEach(attach ->{
			
			attach.setProdId(prod.getProdId());
			adminMapper.imageEnroll(attach);
			
		});
				
	}
	
	/* 카테고리 리스트 */
	@Override
	public List<CateVO> cateList() {
		
		log.info("(service)cateList........");
		
		return adminMapper.cateList();
	}
	
	/* 상품 리스트 */
	@Override
	public List<ProdVO> goodsGetList(Criteria cri) {
		log.info("goodsGetTotalList()..........");
		return adminMapper.goodsGetList(cri);
	}

	/* 상품 총 갯수 */
	public int goodsGetTotal(Criteria cri) {
		log.info("goodsGetTotal().........");
		return adminMapper.goodsGetTotal(cri);
	}
	
	/* 상품 조회 페이지 */
	@Override
	public ProdVO goodsGetDetail(int prodId) {
		
		log.info("(service)ProdGetDetail......." + prodId);
		
		return adminMapper.goodsGetDetail(prodId);
	}	

	/* 상품 정보 수정 */
	@Transactional
	@Override
	public int goodsModify(ProdVO vo) {
		
		int result = adminMapper.goodsModify(vo);
		
		if(result == 1 && vo.getImageList() != null && vo.getImageList().size() > 0) {
			
			adminMapper.deleteImageAll(vo.getProdId());
			
			vo.getImageList().forEach(attach -> {
				
				attach.setProdId(vo.getProdId());
				adminMapper.imageEnroll(attach);
				
			});
			
		}
		
		return result;
		
	}
	
	/* 상품 정보 삭제 */
	@Override
	@Transactional
	public int goodsDelete(int prodId) {

		log.info("goodsDelete..........");
		
		adminMapper.deleteImageAll(prodId);
		
		return adminMapper.goodsDelete(prodId);
	}
	
	/* 지정 상품 이미지 정보 얻기 */
	@Override
	public List<AttachImageVO> getAttachInfo(int prodId) {
		
		log.info("getAttachInfo........");
		
		return adminMapper.getAttachInfo(prodId);
	}
}
