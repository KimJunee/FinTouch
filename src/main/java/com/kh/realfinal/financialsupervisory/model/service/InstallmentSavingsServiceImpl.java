package com.kh.realfinal.financialsupervisory.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.financialsupervisory.model.mapper.InstallmentSavingsMapper;
import com.kh.realfinal.financialsupervisory.model.vo.InstallmentSavings;
import com.kh.realfinal.financialsupervisory.model.vo.InstallmentSavingsOption;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class InstallmentSavingsServiceImpl implements InstallmentSavingsService{
	
	@Autowired
	private InstallmentSavingsMapper mapper;
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveInstallmentSavings(InstallmentSavings install) throws Exception {
		List<InstallmentSavingsOption> options = install.getInstallOptionList();
		for(InstallmentSavingsOption opt : options) {
			int result = mapper.insertInstallmentSavingsOption(opt);
			if(result == 0) {
				throw new Exception();
			}
		}
		int result = mapper.insertInstallmentSavings(install);
		if(result == 0) {
			throw new Exception();
		}
		return result;
	}

	@Override
	public int getInstallCount(Map<String, String> param) throws Exception{
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		String sort = param.get("sort");
		log.debug(searchValue);
		try {		
			if(searchValue != null && searchValue.length() > 0) {
				searchMap.put("korCoNm", searchValue);
			}
			searchMap.put("sort", sort);
		} catch (Exception e) {}
		return mapper.selectInstallCount(searchMap);
	}

	@Override
	public List<InstallmentSavings> getInstallList(PageInfo pageInfo, Map<String, String> param) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		String sort = param.get("sort");
		System.out.println("ServiceImpl : " + searchValue);
		System.out.println("ServiceImpl : " + sort);
		
		if(searchValue != null && searchValue.length() > 0) {
			searchMap.put("korCoNm", searchValue);
		}
		searchMap.put("sort", sort);
		return mapper.selectInstallList(rowBounds, searchMap);
	}

	@Override
	public InstallmentSavings findByInssvnId(int id) {
		InstallmentSavings installment = mapper.selectByInssvnId(id);
		return installment;
	}
	
}
