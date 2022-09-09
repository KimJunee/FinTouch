package com.kh.realfinal.landterm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.landterm.api.LandTermApi;
import com.kh.realfinal.landterm.model.service.LandTermService;
import com.kh.realfinal.landterm.model.vo.LandTerm;

@Controller
public class LandTermController {
	@Autowired
	private LandTermService service;
		
	
	@RequestMapping("/landterm/insert.do")
	public String initLandTermData(Model model) {
		List<LandTerm> list = LandTermApi.callLandTermByXML();
		System.out.println(list.toString());
		int result = 0;
		for(LandTerm lt : list) {
//			System.out.println(ft == null);
//			System.out.println("üũ����Ʈ1");
//			System.out.println(service.saveFinancialterm(ft));
			result = service.saveLandTerm(lt);
//			System.out.println(result);
		}
	
		if(result > 0) {
			model.addAttribute("msg", "�ε��� �� DB�� ���������� �־����ϴ�.");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "�ε��� ��� DB ���� ����");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
		
	} 
	
//	public static void main(String[] args) {
//		LandTermController controller = new LandTermController();
//		controller.initLandTermData();
//	}
	
	
}
