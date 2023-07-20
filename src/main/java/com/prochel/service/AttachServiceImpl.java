package com.prochel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prochel.mapper.AttachMapper;
import com.prochel.model.AttachImageVO;

import lombok.extern.log4j.Log4j;

@Service
public class AttachServiceImpl implements AttachService {
	
	@Autowired
	private AttachMapper attachMapper;
	
	
	/* 이미지 데이터 반환 */
	@Override
	public List<AttachImageVO> getAttachList(int prodId) {
		
		return attachMapper.getAttachList(prodId);
	}

}
