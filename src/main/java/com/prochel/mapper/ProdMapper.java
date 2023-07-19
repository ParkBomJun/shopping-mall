package com.prochel.mapper;

import java.util.List;

import com.prochel.model.Criteria;
import com.prochel.model.ProdVO;

public interface ProdMapper {
	
	/* 상품 검색 */
	public List<ProdVO> getGoodsList(Criteria cri);
	
	/* 상품 총 갯수 */
	public int goodsGetTotal(Criteria cri);
	
	/* 작가 id 리스트 요청 */
	public String[] getAuthorIdList(String keyword);

}
