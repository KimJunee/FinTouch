package com.kh.realfinal.apply.model.service;


import java.util.ArrayList;
import java.util.HashMap;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.kh.realfinal.apply.model.mapper.RealEstateListMapper;
import com.kh.realfinal.apply.model.mapper.RemndrLttotPblancDetailMapper;
import com.kh.realfinal.apply.model.mapper.UrbtyOfctlLttotPblancDetailMapper;
import com.kh.realfinal.apply.model.vo.RealEstateList;
import com.kh.realfinal.apply.model.mapper.ApplyInfoMapper;
import com.kh.realfinal.apply.model.mapper.RemndrLttotPblancDetailMapper;
import com.kh.realfinal.apply.model.vo.ApplyNotice;
import com.kh.realfinal.apply.model.vo.ApplyNoticeAttach;
import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;
import com.kh.realfinal.common.util.PageInfo;

@Service
public class RealEstateServiceImpl implements RealEstateService{
	
	@Autowired
	private RealEstateListMapper realmapper;
	
	@Autowired
	private RemndrLttotPblancDetailMapper remndrmapper;
	
	@Autowired
	private UrbtyOfctlLttotPblancDetailMapper urbtymapper;
	
	@Autowired
	private RemndrLttotPblancDetailMapper Remndrmapper;
	
	@Autowired
	private ApplyInfoMapper applyInfoMapper;

	//----------------------------------------------------------------------------------
	
	
	@Override
	public List<RealEstateList> getRealBoardList(PageInfo pageInfo, Map<String, String> param, String[] locationType, String[] houseType, String[] APTsupplyType, String[] scheType) {
		// paging 처리를 위한 RowBounds 코드 셋팅
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		if(locationType != null) {
			searchMap.put("locationType", locationType);
		}
		if(houseType != null) {
			searchMap.put("houseType", houseType);
		}
		if(APTsupplyType != null) {
			searchMap.put("APTsupplyType", APTsupplyType);
		}
		if(scheType != null) {
			searchMap.put("scheType", scheType);
		}
		
		
		String searchValue = param.get("searchValue");
		if(searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if(type.equals("content")) {
				searchMap.put("contentKeyword", searchValue);
			} else if(type.equals("localName")) {
				searchMap.put("localNameType", searchValue);
			}
		}		
		System.out.println("getRealBoardList searchMap service단: " + searchMap);
		
		return realmapper.RealboardList(rowBounds, searchMap);
	}
	
	@Override
	public int getRealBoardListCount(Map<String, String> param, String[] locationType, String[] houseType, String[] APTsupplyType, String[] scheType) {
		Map<String, Object> searchMap = new HashMap<String, Object>();
		
		if(locationType != null) {
			searchMap.put("locationType", locationType);
		}
		if(houseType != null) {
			searchMap.put("houseType", houseType);
		}
		if(APTsupplyType != null) {
			searchMap.put("APTsupplyType", APTsupplyType);
		}
		if(scheType != null) {
			searchMap.put("scheType", scheType);
		}
		
		String searchValue = param.get("searchValue");
		if(searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if(type.equals("content")) {
				searchMap.put("contentKeyword", searchValue);
			} else if(type.equals("localName")) {
				searchMap.put("localNameType", searchValue);
			}
		}
		
		System.out.println("searchMap : " + searchMap);
		return realmapper.RealboardListCount(searchMap);
	}

	//----------------------------------------------------------------------------------
	
	
	@Override
		public List<RemndrLttotPblancDetail> getRemndrList(PageInfo pageInfo, Map<String, String> param) {
		// paging 처리를 위한 RowBounds 코드 셋팅
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		if(searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if(type.equals("content")) {
				searchMap.put("contentKeyword", searchValue);
			} else if(type.equals("localName")) {
				searchMap.put("localNameType", searchValue);
			}
		}
		
		System.out.println(searchMap);
		return remndrmapper.RemndrList(rowBounds, searchMap);
	}

	
	@Override
	public int getRemndrListCount(Map<String, String> param) {
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		
		if(searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if(type.equals("content")) {
				searchMap.put("contentKeyword", searchValue);
			} else if(type.equals("localName")) {
				searchMap.put("localNameType", searchValue);
			}
		}
		
		System.out.println("getRemndrListCount 서비스Ipli : " + searchMap);
		return remndrmapper.RemndrListCount(searchMap);
	}

	
	//----------------------------------------------------------------------------------
	
	@Override
		public List<UrbtyOfctlLttotPblancDetail> getUrbtyList(PageInfo pageInfo, Map<String, String> param) {
		// paging 처리를 위한 RowBounds 코드 셋팅
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		
	
		
		
		if(searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if(type.equals("content")) {
				searchMap.put("contentKeyword", searchValue);
			} else if(type.equals("localName")) {
				searchMap.put("localNameType", searchValue);
			}
		}
		
//		System.out.println(searchMap);
		return urbtymapper.UrbtyList(rowBounds, searchMap);
	}
	
	@Override
	public int getUrbtyListCount(Map<String, String> param) {
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		if(searchValue != null && searchValue.length() > 0) {
			String type = param.get("searchType");
			if(type.equals("content")) {
				searchMap.put("contentKeyword", searchValue);
			} else if(type.equals("localName")) {
				searchMap.put("localNameType", searchValue);
			}
		}
		
		System.out.println(searchMap);
		return urbtymapper.UrbtyListCount(searchMap);
	}
	
	
	
	
	//----------------------↓mh작업 (제 코드 밑에 덧붙이지 말고 이 선 위로 작업 부탁드려요ㅜㅜ)
	
	@Override
	public List<ApplyNotice> getApplyNoticeList(PageInfo pageInfo, Map<String, String> param) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rb = new RowBounds(offset, pageInfo.getListLimit());
		
		
		
		return applyInfoMapper.selectNoticeList(rb, param);
	}


	@Override
	public int getApplyNoticeCount(Map<String, String> param) {
		Map<String, String> serchMap = new HashMap<String, String>();
		
		
		return applyInfoMapper.selectNoticeCount(serchMap);
	}


	@Override
	public ApplyNotice findNoticeByRnum(int rnum) {
		ApplyNotice an = applyInfoMapper.selectNoticeByRnum(rnum);
		return an;
	}


	@Override
	public List<ApplyNoticeAttach> findApplyAttach(String bbs_sn) {
		return applyInfoMapper.selectNoticeAttach(bbs_sn);
	}


	@Override
	public List<AptLttotPblancDetail> getAptLttotList(Map<String, String> param) {
		return applyInfoMapper.selectAptLttotList(param);
	}


	

	
}
