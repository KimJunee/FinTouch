package com.kh.realfinal.politicsMnaList.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kh.realfinal.financialsupervisory.api.CreditLoanAPI;
import com.kh.realfinal.financialsupervisory.model.service.CreditLoanService;
import com.kh.realfinal.financialsupervisory.model.vo.CreditLoan;

@Controller
public class CreditLoanController {

	@Autowired
	private CreditLoanService service;
	
	@RequestMapping("/creditloan/insert.do")
	public String initCreditLoanData(Model model) throws Exception {
		List<CreditLoan> list = CreditLoanAPI.callCreditLoanByXML();
		//System.out.println(list.toString());
		int result = 0;
		
		for (CreditLoan credit : list) {
			result = service.saveCreditLoan(credit);
		}
		
		if (result > 0) {
			model.addAttribute("msg", "개인신용대출API(금융감독원) -> DB 저장 성공");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "개인신용대출API(금융감독원) -> DB 저장 실패!!!!");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
	}
}