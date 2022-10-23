package com.kh.realfinal.mypageFinPro.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.mypageFinPro.model.mapper.MypageFinProMapper;
import com.kh.realfinal.mypageFinPro.model.vo.MypageFinance;

@Service
public class MypageFinProServiceImpl implements MypageFinProService{
	
	@Autowired
	private MypageFinProMapper mapper;

	@Override
	public int saveMypageFin(MypageFinance mypageFinance) {
		int result = 0;
		
		result = mapper.insertMypageFin(mypageFinance);
		return result;
	}

	@Override
	public int getMypageFinCount(Map<String, String> param) {
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		searchMap.put("userNo", param.get("userNo"));
		try {		
			if(searchValue != null && searchValue.length() > 0) {
				searchMap.put("finPrdtNm", searchValue);
			}
		} catch (Exception e) {}
		
		return mapper.selectFinLikeCount(searchMap);
	}
	
	@Override
	public List<MypageFinance> getMypageFinList(PageInfo pageInfo, Map<String, String> param) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, String> searchMap = new HashMap<String, String>();
		searchMap.put("userNo", param.get("userNo"));
		String searchValue = param.get("searchValue");
		if(searchValue != null && searchValue.length() > 0) {
			searchMap.put("finPrdtNm", searchValue);
		}		
		return mapper.selectFinLikeList(rowBounds, searchMap);
	}

}













