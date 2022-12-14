package com.kh.realfinal.politics.model.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.kh.realfinal.board.model.service.BoardService;
import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.opinion.model.service.OpinionService;
import com.kh.realfinal.opinion.model.vo.Opinion;
import com.kh.realfinal.politics.api.LawProposedAPI;
import com.kh.realfinal.politics.api.MnaPhotoAPI;
import com.kh.realfinal.politics.api.ProfileMnaAPI;
import com.kh.realfinal.politics.model.service.LawProposedService;
import com.kh.realfinal.politics.model.service.ProfileMnaService;
import com.kh.realfinal.politics.model.vo.LawProposed;
import com.kh.realfinal.politics.model.vo.MnaPhoto;
import com.kh.realfinal.politics.model.vo.ProfileMna;


@Controller
public class ProfileMnaController {
	
	@Autowired
	private BoardService boardService;
	private final int RealEstate = 1;
	
	@Autowired
	private OpinionService opinionService;
	private final int Opinion = 1;

	@Autowired
	ProfileMnaService profileMnaService;

	@Autowired
	LawProposedService lawProposedService;

	@RequestMapping("/politics/profileMna/insert.do")
	public String initProfileMnaData(Model model) {

		List<ProfileMna> list = ProfileMnaAPI.callProfileMnaByXML();
		List<MnaPhoto> photoList = MnaPhotoAPI.callListMnaByXML();

		for (ProfileMna item : list) {
			for (MnaPhoto item2 : photoList) {
				if (item.getHgNm().equals(item2.getMnaName())) {
					item.setJpglink(item2.getMnaPhoto());
					break;
				}
			}
		}

		int count = 0;
		for (int i = 0; i < list.size(); i++) {
			ProfileMna pm = list.get(i);
			try {
				int result = profileMnaService.saveProfileMna(pm);
				if (result > 0) {
					count += result;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		if (count > 0) {
			model.addAttribute("msg", "국회의원 " + count + "명의 프로필을 DB에 넣었습니다.");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "국회의원 프로필 정보를 DB에 넣지 못했습니다.");
			model.addAttribute("location", "/");
		}
		return "/common/msg";
	}

	@RequestMapping("/politics/lawProposed/insert.do")
	public String initLawProposedData(Model model) {

		List<LawProposed> list = new ArrayList<LawProposed>();
		for (int i = 1; i < 18; i++) {
			List<LawProposed> templist = LawProposedAPI.callLawProposedByXML(i);
			list.addAll(templist);
		}

		int count = 0;
		for (int i = 0; i < list.size(); i++) {
			LawProposed law = list.get(i);
			try {
				int result = lawProposedService.saveLawProposed(law);
				if (result > 0) {
					count += result;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		if (count > 0) {
			model.addAttribute("msg", "법안 정보 " + count + "개를 DB에 넣었습니다.");
			model.addAttribute("location", "/");
		} else {
			model.addAttribute("msg", "법안 정보를 DB에 넣지 못했습니다.");
			model.addAttribute("location", "/");
		}
		return "/common/msg";

	}

	// 페이징 처리
	// 국회의원 리스트
	@RequestMapping("/politics/polMnaList")
	public String mnaProfileList(Model model, @RequestParam Map<String, String> param) {
		// 인기정치게시글
		Map<String, Object> paramBoard = new HashMap<String,Object>();
		paramBoard.put("board_list_no",RealEstate);
		List<Board> listBoard = boardService.getSideBoardForPolitics(paramBoard);
		// 인기정치게시글 끝
		
		List<Opinion> sideopinion = opinionService.getSelectOpinionForPolitics();
		// 최근오피니언글
		Map<String, Object> opinion = new HashMap<String,Object>();
		opinion.put("opinion_list_no", opinion);
		List<Opinion> listOpinion = opinionService.getSelectOpinionForPolitics() ;
		// 최근오피니언글 끝

		int page = 1;
		if (param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {
			}
		}
		
		int totalSize = profileMnaService.getProfileCount(param);
		PageInfo pageInfo = new PageInfo(page, 10, totalSize, 10);
		List<ProfileMna> list = profileMnaService.getProfileList(pageInfo, param);
		System.out.println(param);
		 
		model.addAttribute("sideopinion", sideopinion);	// 오피니언 사이드 
		model.addAttribute("politicsList", listBoard); // 인기정치게시글
		model.addAttribute("listOpinion", listOpinion); // 최근오피니언글
		model.addAttribute("list", list);
		model.addAttribute("totalSize", totalSize);
		model.addAttribute("size", list.size());
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		return "/politics/polMnaList";
	}

 
	// 국회의원 상세프로필 + 대표발의법안
	@RequestMapping("/politics/polMnaProfile")
	public String polMnaProfile(Model model, @RequestParam Map<String, String> param) {

		int page = 1;
		if (param.containsKey("page") == true) {
			try {
				page = Integer.parseInt(param.get("page"));
			} catch (Exception e) {
			}
		}
		
		int profileNo = Integer.parseInt(param.get("profileNo"));

		// 국회의원 상세프로필
		ProfileMna profile = profileMnaService.getProfile(profileNo);
		
		
		Map<String, String> map = new HashMap<String, String>();
		map.put("name", profile.getHgNm());
		System.out.println(profile);
		System.out.println(map);

		map.putAll(param);
		int totalSize = lawProposedService.getLawCount(map);
		PageInfo pageInfo = new PageInfo(page, 10, totalSize, 10);
		List<LawProposed> lawList = lawProposedService.getlawProposed(pageInfo, map);
		System.out.println(lawList);
		
		model.addAttribute("profile", profile);
		model.addAttribute("lawList", lawList);
		model.addAttribute("totalSize", totalSize);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);

		return "/politics/polMnaProfile";
	}

	// 국회의원 프로필 검색 안 했을시에
	@RequestMapping("/politics/polMnaProfileEmpty")
	public String polMnaProfileEmpty(Model model) { // 메인으로
		return "politics/polMnaProfileEmpty";
	}

	@RequestMapping("/politics/polMnaStats")
	public String polMnaStats(Model model) { // 메인으로
		return "politics/polMnaStats";
	}
 
}
