package com.prochel.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.prochel.mapper.AttachMapper;
import com.prochel.model.AttachImageVO;
import com.prochel.model.Criteria;
import com.prochel.model.PageDTO;
import com.prochel.model.ProdVO;
import com.prochel.service.ProdService;

@Controller
public class MainController {
	
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private AttachMapper attachMapper;
	
	@Autowired
	private ProdService prodService;
	
	//메인 페이지 이동
		@RequestMapping(value = "/index", method = RequestMethod.GET)
		public void indexPageGET() {
			
			logger.info("메인 페이지 진입");
		}
		
	@GetMapping("/display")
	public ResponseEntity<byte[]> getImage(String fileName){
		
		logger.info("getImage().........." + fileName);
		
		File file = new File("c:\\upload\\" + fileName);
		
		ResponseEntity<byte[]> result = null;
		
		try {
			
			HttpHeaders header = new HttpHeaders();
			
			header.add("Content-type", Files.probeContentType(file.toPath()));
			
			result = new ResponseEntity<>(FileCopyUtils.copyToByteArray(file), header, HttpStatus.OK);
			
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		return result;
			
	}
	
	/* 이미지 정보 반환 */
	@GetMapping(value="/getAttachList", produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	public ResponseEntity<List<AttachImageVO>> getAttachList(int prodId){
		
		logger.info("getAttachList.........." + prodId);
		
		return new ResponseEntity<List<AttachImageVO>>(attachMapper.getAttachList(prodId), HttpStatus.OK);
	}
	
	/* 상품 검색 */
	@GetMapping("/search")
	public String searchGoodsGET(Criteria cri, Model model) {
		
		logger.info("cri : " + cri);
		
		List<ProdVO> list = prodService.getGoodsList(cri);
		logger.info("pre list : " + list);
		if(!list.isEmpty()) {
			model.addAttribute("list", list);
			logger.info("list : " + list);
		} else {
			model.addAttribute("listcheck", "empty");
			
			return "/search";
		}
		
		model.addAttribute("pageMaker", new PageDTO(cri, prodService.goodsGetTotal(cri)));
		
		
		return "/search";
		
	}
	
	//상품목록 페이지 이동
			@RequestMapping(value = "/main", method = RequestMethod.GET)
			public void mainPageGET(Model model) {
				
				model.addAttribute("cate1", prodService.getCateCode1());
				model.addAttribute("cate2", prodService.getCateCode2());
			}
}
