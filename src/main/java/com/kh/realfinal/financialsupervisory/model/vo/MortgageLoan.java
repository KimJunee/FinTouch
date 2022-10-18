package com.kh.realfinal.financialsupervisory.model.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class MortgageLoan {
	private int id; // 주키 
	private int dclsMonth; // 공시 제출월 [YYYYMM]
	private int finCoNo; // 금융회사 코드
	private String korCoNm; // 금융회사 명
//	private String korCoImageUrl; // 금융회사 이미지 url
	private String finPrdtCd; // ** 금융상품코드
	private String finPrdtNm; // 금융상품명
	private String joinWay; // 가입방법
	private String loanInciExpn; // 대출부대비용
	private String erlyRpayFee; // 중도상환수수료
	private String dlyRate; // 연체 이자율
	private String loanLmt; // 대출한도
	private String dclsStrtDay; // 공시 시작일
	private String dclsEndDay; // 공시 종료일
	private String finCoSubmDay; // 금융회사 제출일 [YYYYMMDDHH24MI]
	private List<MortgageLoanOption> mortgageOptionList;
}
