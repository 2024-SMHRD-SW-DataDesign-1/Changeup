package com.smhrd.changeup.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.smhrd.changeup.mapper.ChangeupMapper;
import com.smhrd.changeup.model.InfoData;
import com.smhrd.changeup.model.InfoMain;
import com.smhrd.changeup.model.InfoPolicy;

@Service
public class ChangeupService {
	
	@Autowired
	ChangeupMapper mapper;
	
	public List<InfoMain> InfoMain(String gu) {
		return mapper.InfoMain(gu);
	}
	
	public InfoMain InfoMain2(String Region) {
		return mapper.InfoMain2(Region);
	}
	
	public InfoData InfoData(String Region) {
		return mapper.InfoData(Region);
	}
	
	public List<InfoPolicy> InfoPolicy() {
		return mapper.InfoPolicyList();
	}
	
	public List<InfoPolicy> getPolicy1(String subsel) {
		return mapper.getPolicy1("%" + subsel + "%");
	}
	
	public List<InfoPolicy> getPolicy2(String subsel) {
		return mapper.getPolicy2("%" + subsel + "%");
	}
	
	public List<InfoPolicy> getPolicy3(String subsel) {
		return mapper.getPolicy3("%" + subsel + "%");
	}
	
	public List<InfoPolicy> getPolicy4(String subsel) {
		return mapper.getPolicy4("%" + subsel + "%");
	}
	
	public List<InfoPolicy> getPolicy() {
		return mapper.getPolicy();
	}
	
	
}
