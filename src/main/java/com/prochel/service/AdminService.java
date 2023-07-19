package com.prochel.service;

import java.util.List;

import com.prochel.model.AttachImageVO;
import com.prochel.model.CateVO;
import com.prochel.model.Criteria;
import com.prochel.model.ProdVO;

public interface AdminService {
	
	/* 상품 등록 */
	public void ProdEnroll(ProdVO prod);	
	
	/* 카테고리 리스트 */
	public List<CateVO> cateList();
	
	/* 상품 리스트 */
	public List<ProdVO> goodsGetList(Criteria cri);
	
	/* 상품 총 개수 */
	public int goodsGetTotal(Criteria cri);	
	
	/* 상품 조회 페이지 */
	public ProdVO goodsGetDetail(int prodId);
	
	/* 상품 수정 */
	public int goodsModify(ProdVO vo);	
	
	/* 상품 정보 삭제 */
	public int goodsDelete(int prodId);
	
	/* 지정 상품 이미지 정보 얻기 */
	public List<AttachImageVO> getAttachInfo(int prodId);
	
}
