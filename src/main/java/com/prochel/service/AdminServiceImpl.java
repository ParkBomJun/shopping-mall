package com.prochel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prochel.mapper.AdminMapper;
import com.prochel.model.AttachImageVO;
import com.prochel.model.CateVO;
import com.prochel.model.Criteria;
import com.prochel.model.ProdVO;

@Service
public class AdminServiceImpl implements AdminService {

	@Autowired
	private AdminMapper adminMapper;	
	
	/* 상품 등록 */
	@Override
	public void ProdEnroll(ProdVO prod) {
		
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
		
		return adminMapper.cateList();
	}
	
	/* 상품 리스트 */
	@Override
	public List<ProdVO> goodsGetList(Criteria cri) {
		return adminMapper.goodsGetList(cri);
	}

	/* 상품 총 갯수 */
	public int goodsGetTotal(Criteria cri) {
		return adminMapper.goodsGetTotal(cri);
	}
	
	/* 상품 조회 페이지 */
	@Override
	public ProdVO goodsGetDetail(int prodId) {
		
		return adminMapper.goodsGetDetail(prodId);
	}	

	/* 상품 정보 수정 */
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
	public int goodsDelete(int prodId) {
		
		adminMapper.deleteImageAll(prodId);
		
		return adminMapper.goodsDelete(prodId);
	}
	
	/* 지정 상품 이미지 정보 얻기 */
	@Override
	public List<AttachImageVO> getAttachInfo(int prodId) {
		
		return adminMapper.getAttachInfo(prodId);
	}
}
