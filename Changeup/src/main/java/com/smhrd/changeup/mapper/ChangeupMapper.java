package com.smhrd.changeup.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.smhrd.changeup.model.InfoData;
import com.smhrd.changeup.model.InfoMain;
import com.smhrd.changeup.model.InfoPolicy;

@Mapper
public interface ChangeupMapper {
	
	@Select("select * from main_info where gu=#{gu}")
	public List<InfoMain> InfoMain(String gu);
	
	@Select("select * from main_info where dong=#{Region}")
	public InfoMain InfoMain2(String Region);
	
	@Select("select * from search_data where region=#{Region}")
	public InfoData InfoData(String Region);
	
	@Select("select * from support_policy")
	public List<InfoPolicy> InfoPolicyList();
	
	@Select("select * from support_policy where target like #{subsel}")
	public List<InfoPolicy> getPolicy1(String subsel);
	
	@Select("select * from support_policy where region like #{subsel}")
	public List<InfoPolicy> getPolicy2(String subsel);
	
	@Select("select * from support_policy where targetAge like #{subsel}")
	public List<InfoPolicy> getPolicy3(String subsel);
	
	@Select("select * from support_policy where career like #{subsel}")
	public List<InfoPolicy> getPolicy4(String subsel);
	
	@Select("select * from support_policy")
	public List<InfoPolicy> getPolicy();
	
}
