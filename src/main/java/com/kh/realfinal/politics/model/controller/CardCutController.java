package com.kh.realfinal.politics.model.controller;

//import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.log;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.kh.realfinal.board.model.service.BoardService;
import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.member.model.vo.Member;
import com.kh.realfinal.opinion.model.service.OpinionService;
import com.kh.realfinal.opinion.model.vo.Opinion;
import com.kh.realfinal.politics.api.CardCutRss;
import com.kh.realfinal.politics.model.service.CardCutService;
import com.kh.realfinal.politics.model.vo.CardCut;
import com.kh.realfinal.politics.model.vo.CardCutReply;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CardCutController {
	
	@Autowired
	private BoardService boardService;
	private final int RealEstate = 1;
	
	@Autowired
	private OpinionService opinionService;
	
	@Autowired
	CardCutService cardCutService;

	@RequestMapping("/politics/cardCut/insert.do")
	public String initCardCutData(Model model) {
		
		List<CardCut> list = new ArrayList<CardCut>();
		for(int i = 0; i< 1; i++) {
			List<CardCut> templist = CardCutRss.callWeeklyNewsListByXML();
			list.addAll(templist);
		}
		
		int count = 0;
		if(list.size() != 0) {
		for(int i = 0; i <list.size(); i++) {
			CardCut card = list.get(i);
			try {
				int result = cardCutService.saveCardCut(card);
				if(result > 0) {
					count += result; 
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		}
		if(count > 0) {
			model.addAttribute("msg", "???????????? " +count +"?????? DB??? ???????????????.");
			model.addAttribute("location", "/");
		}else {
			model.addAttribute("msg", "??????????????? DB??? ?????? ???????????????.");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
		
	}
	
	// ????????? ?????? ?????????
	@RequestMapping("/politics/cardCut")
	public String cardCutList(Model model, @RequestParam Map<String, String> param) throws ParseException {  
		// ?????????????????????
		System.out.println("??????????????? ?????????????????? : " + param.toString());
		Map<String, Object> paramBoard = new HashMap<String,Object>();
		paramBoard.put("board_list_no",RealEstate);
		List<Board> listBoard = boardService.getSideBoardForPolitics(paramBoard);
		// ????????????????????? ???
		
		// ???????????? ????????? 
		List<Opinion> sideopinion = opinionService.getSelectOpinionForPolitics();
		
		int page = 1;
		if(param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
				System.out.println("page : " + page);
			} catch (Exception e) {}
		}
		
		
		List<CardCut> topList = cardCutService.getCardCutList1();
		List<CardCut> listMain = cardCutService.getCardCutMain();
 
		int totalSize = cardCutService.getCardCutCount(param);
		System.out.println(totalSize);
		PageInfo pageInfo = new PageInfo(page, 9, totalSize, 9);
		List<CardCut> list = cardCutService.getCardCutList(pageInfo, param);
		
		
//		System.out.println(list.get(0).getImages());
//		System.out.println(list.get(0).getContent());

		model.addAttribute("sideopinion", sideopinion);	// ???????????? ????????? 
		model.addAttribute("politicsList", listBoard); // ?????????????????????
		model.addAttribute("topList", topList);
		model.addAttribute("listMain", listMain);
		model.addAttribute("list", list);
		model.addAttribute("totalSize", totalSize);
		model.addAttribute("size", list.size());
		model.addAttribute("param",param);
		model.addAttribute("pageInfo",pageInfo);
		return "/politics/cardCut";
	} 
	
	
	@RequestMapping("/politics/cardCutDetail")
	public String cardCutDetail(Model model, @RequestParam Map<String, String> param,
			 @RequestParam("cardCutNo") int cardCutNo, HttpServletRequest request) {
		if(param.get("cardCutNo") != null) {
			cardCutNo = Integer.parseInt(param.get("cardCutNo"));			
		}
		
		CardCut cardCut = cardCutService.getCardCutContent(cardCutNo);
		
		// ?????????????????????
				System.out.println("??????????????? ?????????????????? : " + param.toString());
				Map<String, Object> paramBoard = new HashMap<String,Object>();
				paramBoard.put("board_list_no",RealEstate);
				List<Board> listBoard = boardService.getSideBoardForPolitics(paramBoard);
				// ????????????????????? ???
		
		
		// ???????????? ????????? 
		List<Opinion> sideopinion = opinionService.getSelectOpinionForPolitics();

		if(cardCut == null) {
			return "redirect:error";
		}
		
		String rootPath = request.getSession().getServletContext().getRealPath("resources");
		String savePath = rootPath + "\\upload\\cardCut\\";
		 
		System.out.println(cardCut.getReplyCnt());
		System.out.println(cardCut.getReplies().toString());
		System.out.println( cardCut.getReplies().size() );
		
		model.addAttribute("sideopinion", sideopinion);	// ???????????? ????????? 
		model.addAttribute("politicsList", listBoard); // ?????????????????????
		model.addAttribute("cardCut", cardCut);
		model.addAttribute("replyList", cardCut.getReplies());
		model.addAttribute("param", param);
		model.addAttribute("param", savePath);

		return "/politics/cardCutDetail";
	}
	
	// ?????? ??????
	@PostMapping("/cCreply")
	public String writeCcReply(Model model, HttpServletRequest request,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@ModelAttribute CardCutReply cCreply
			) {
		log.info("?????? ?????? ??????");
		
		cCreply.setC_writer_no(loginMember.getUser_no());
		log.debug("cCreply : " + cCreply);
		int result = cardCutService.saveCcReply(cCreply);
		
		if(result > 0) {
			model.addAttribute("msg", "????????? ?????? ???????????????.");
		}else {
			model.addAttribute("msg", "?????? ????????? ?????????????????????.");
		}
		model.addAttribute("location", "/politics/cardCutDetail?cardCutNo="+ cCreply.getCardCutNo());
		return "/common/msg";
	}
	
	// ?????? ??????
	@RequestMapping("/cCreplyedit")
	@ResponseBody
	public Map<String,Object> editCcReply(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			@RequestBody CardCutReply cCreply
			) {
		
		Map<String,Object> resultMap = new HashMap<String,Object>();
		
		log.debug("?????? ?????? ??????");
		int result = cardCutService.editCcReply(cCreply);
		
		if(result > 0) {
			resultMap.put("msg", "?????? ????????? ?????????????????????.");
			resultMap.put("result", "success");
		}else {
			resultMap.put("msg", "?????? ?????? ?????????????????????.");
			resultMap.put("result", "fail");
		}
		return resultMap;
	}
	
	// ?????? ??????
		@RequestMapping("/cCreplydel")
		@ResponseBody
		public Map<String,Object> deleteCcReply(Model model, 
				@SessionAttribute(name = "loginMember", required = false) Member loginMember,
				@RequestBody CardCutReply cCreply
				) {
			Map<String,Object> resultMap = new HashMap<String,Object>();
			
			log.debug("?????? ?????? ??????");
			int result = cardCutService.deleteCcReply(cCreply.getC_reply_no());
			
			if(result > 0) {
				resultMap.put("msg", "?????? ????????? ?????????????????????.");
				resultMap.put("result", "success");
			}else {
				resultMap.put("msg", "?????? ?????? ?????????????????????.");
				resultMap.put("result", "fail");
			}
			return resultMap;
		}
		
	
}
