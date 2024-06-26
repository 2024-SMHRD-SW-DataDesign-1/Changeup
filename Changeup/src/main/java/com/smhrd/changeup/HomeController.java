package com.smhrd.changeup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.smhrd.changeup.model.InfoData;
import com.smhrd.changeup.model.InfoMain;
import com.smhrd.changeup.model.InfoPolicy;
import com.smhrd.changeup.service.ChangeupService;

@Controller
public class HomeController {

	@Autowired
	ChangeupService service;

	@RequestMapping(value = "/ChangeupMainPage", method = RequestMethod.GET)
	public String main() {

		return "ChangeupMainPage";
	}

	@RequestMapping(value = "/Info_data", method = RequestMethod.GET)
	public String Info_data() {

		return "Info_data";
	}

	@RequestMapping(value = "/Info_main", method = RequestMethod.GET)
	public String Info_main(Model model) {

		// InfoMain list = service.InfoMain();

		// model.addAttribute("list", list);

		return "Info_main";
	}

	@RequestMapping(value = "/mainlist/{gu}", method = RequestMethod.GET, produces = "application/text; charset=UTF-8")
	public @ResponseBody String InfoMain(@PathVariable("gu") String Region) throws JsonProcessingException {

		List<InfoMain> list = service.InfoMain(Region);

		ObjectMapper om = new ObjectMapper();
		String jsonString = om.writeValueAsString(list);

		return jsonString;
	}

//	@RequestMapping(value="/list/{Region}", method=RequestMethod.GET, produces = "application/text; charset=UTF-8")
//	public @ResponseBody String InfoMain(@PathVariable("Region") String Region) throws JsonProcessingException {
//		
//		InfoMain list = service.InfoMain(Region);
//		
//		// ** 게시물 정보를 가지고 있는 list 데이터를 응답 (xml, json**={k:v})
//		// JAVA 객체 -> JSON 형태의 문자열로 변환 => Jackson 라이브러리
//		ObjectMapper om = new ObjectMapper();
//		String jsonString = om.writeValueAsString(list);
//		
//		return jsonString;
//	}

	@RequestMapping(value = "/list2/{Region}", method = RequestMethod.GET, produces = "application/text; charset=UTF-8")
	public @ResponseBody String InfoData(@PathVariable("Region") String Region) throws JsonProcessingException {

		InfoData list = service.InfoData(Region);

		ObjectMapper om = new ObjectMapper();
		String jsonString = om.writeValueAsString(list);

		return jsonString;
	}

	

	@RequestMapping(value = "/Info_recommend", method = RequestMethod.GET)
	public String Info_recommend() {

		return "Info_recommend";
	}

	@RequestMapping(value = "/getData", method = RequestMethod.POST, produces = "application/text; charset=UTF-8")
	public @ResponseBody String getData(@RequestParam("region") String Region) throws JsonProcessingException {

		InfoMain list = service.InfoMain2(Region);

		ObjectMapper om = new ObjectMapper();
		String jsonString = om.writeValueAsString(list);

		return jsonString;
	}
	
	
	
	
	@RequestMapping(value = "/Info_policy", method = RequestMethod.GET)
	public String Info_policy(Model model) {

		List<InfoPolicy> list = service.InfoPolicy();

		model.addAttribute("list", list);

		return "Info_policy";
	}
	
	@RequestMapping(value = "/getPolicy1/{subsel}", method = RequestMethod.GET, produces = "application/text; charset=UTF-8")
	public @ResponseBody String getPolicy1(@PathVariable("subsel") String subsel) throws JsonProcessingException {

		List<InfoPolicy> list = service.getPolicy1(subsel);

		ObjectMapper om = new ObjectMapper();
		String jsonString = om.writeValueAsString(list);

		return jsonString;
	}
	
	@RequestMapping(value = "/getPolicy2/{subsel}", method = RequestMethod.GET, produces = "application/text; charset=UTF-8")
	public @ResponseBody String getPolicy2(@PathVariable("subsel") String subsel) throws JsonProcessingException {

		List<InfoPolicy> list = service.getPolicy2(subsel);

		ObjectMapper om = new ObjectMapper();
		String jsonString = om.writeValueAsString(list);

		return jsonString;
	}
	
	@RequestMapping(value = "/getPolicy3/{subsel}", method = RequestMethod.GET, produces = "application/text; charset=UTF-8")
	public @ResponseBody String getPolicy3(@PathVariable("subsel") String subsel) throws JsonProcessingException {

		List<InfoPolicy> list = service.getPolicy3(subsel);

		ObjectMapper om = new ObjectMapper();
		String jsonString = om.writeValueAsString(list);

		return jsonString;
	}
	
	@RequestMapping(value = "/getPolicy4/{subsel}", method = RequestMethod.GET, produces = "application/text; charset=UTF-8")
	public @ResponseBody String getPolicy4(@PathVariable("subsel") String subsel) throws JsonProcessingException {

		List<InfoPolicy> list = service.getPolicy4(subsel);

		ObjectMapper om = new ObjectMapper();
		String jsonString = om.writeValueAsString(list);

		return jsonString;
	}
	
	@RequestMapping(value = "/getPolicy", method = RequestMethod.GET, produces = "application/text; charset=UTF-8")
	public @ResponseBody String getPolicy() throws JsonProcessingException {

		List<InfoPolicy> list = service.getPolicy();

		ObjectMapper om = new ObjectMapper();
		String jsonString = om.writeValueAsString(list);

		return jsonString;
	}
	

}
