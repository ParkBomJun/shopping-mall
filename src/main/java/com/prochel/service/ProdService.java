package com.prochel.service;

import java.util.List;

import com.prochel.model.CateVO;
import com.prochel.model.Criteria;
import com.prochel.model.ProdVO;

public interface ProdService {
	
	/* 상품 검색 */
	public List<ProdVO> getGoodsList(Criteria cri);
	
	/* 상품 총 갯수 */
	public int goodsGetTotal(Criteria cri);
	
	/* 국내 카테고리 리스트 */
	public List<CateVO> getCateCode1();

	/* 외국 카테고리 리스트 */
	public List<CateVO> getCateCode2();	

}
