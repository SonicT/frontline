package com.frontline.newssummary.controller;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.frontline.newssummary.Service.SummaryService;

@RestController
@RequestMapping("/replies")
public class ReplyController {

	@Inject
	private SummaryService service;
	
//	@RequestMapping(value="",method=RequestMethod.POST)
//	public ResponseEntity<String> register(@RequestBody ReplyVO vo){
//		ResponseEntity<String> entity = null;
//		try {
//			service.create(vo);
//			entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
//		} catch (Exception e) {
//			e.printStackTrace();
//			entity = new ResponseEntity<String>(e.getMessage(),HttpStatus.BAD_REQUEST);
//		}
//		return entity;
//	}
}
