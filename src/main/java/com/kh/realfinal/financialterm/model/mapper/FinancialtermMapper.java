package com.kh.realfinal.financialterm.model.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.realfinal.financialterm.model.vo.Financialterm;

@Mapper
public interface FinancialtermMapper {
	int insertFinancialterm(Financialterm ft);
}