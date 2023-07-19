package com.prochel.mapper;

import java.util.List;

import com.prochel.model.AuthorVO;
import com.prochel.model.Criteria;

public interface AuthorMapper {
	
	/* 판매자 등록 */
    public void authorEnroll(AuthorVO author);
    
    /* 판매자 목록 */
    public List<AuthorVO> authorGetList(Criteria cri);
    
    /* 판매자 총 수 */
    public int authorGetTotal(Criteria cri);
    
    /* 판매자 상세 */
	public AuthorVO authorGetDetail(int SellerId);
	
	/* 판매자 정보 수정 */
	public int authorModify(AuthorVO author);
	
	/* 작가 정보 삭제 */
	public int authorDelete(int authorId);

}
