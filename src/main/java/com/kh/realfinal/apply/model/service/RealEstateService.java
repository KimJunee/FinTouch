package com.kh.realfinal.apply.model.service;

import java.util.List;
import java.util.Map;

import com.kh.realfinal.apply.model.vo.RealEstateList;
import com.kh.realfinal.apply.model.vo.ApplyNotice;
import com.kh.realfinal.apply.model.vo.ApplyNoticeAttach;
import com.kh.realfinal.apply.model.vo.AptLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.RemndrLttotPblancDetail;
import com.kh.realfinal.apply.model.vo.UrbtyOfctlLttotPblancDetail;
import com.kh.realfinal.common.util.PageInfo;

public interface RealEstateService {

	
	List<RemndrLttotPblancDetail> getRemndrList(PageInfo pageInfo, Map<String, String> param);
	int getRemndrListCount(Map<String, String> param);
	
	
	List<UrbtyOfctlLttotPblancDetail> getUrbtyList(PageInfo pageInfo, Map<String, String> param);
	int getUrbtyListCount(Map<String, String> param);
	
	List<RealEstateList> getRealBoardList(PageInfo pageInfo, Map<String, String> param, String[] locationType, String[] houseType, String[] APTsupplyType, String[] scheType);
	int getRealBoardListCount(Map<String, String> param, String[] locationType, String[] houseType, String[] APTsupplyType, String[] scheType);
	
	
	
	
	//----------------------------mh
	
	List<ApplyNotice> getApplyNoticeList(PageInfo pageInfo, Map<String, String> param);
	int getApplyNoticeCount(Map<String, String> param);
	ApplyNotice findNoticeByRnum(int rnum);
	List<ApplyNoticeAttach> findApplyAttach(String bbs_sn);
	List<AptLttotPblancDetail> getAptLttotList(Map<String, String> param);
	

}
