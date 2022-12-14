package com.kh.realfinal.apply.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RealMainMapList {
	private int house_manage_no; // 주택관리번호
	private String house_nm; // 주택명
	private String hssply_adres; // 주소
	private String rcept_bgnde; // 청약 접수 시작일
	private String rcept_endde; // 청약 접수 종료일
	private String subscrpt_rcept_bgnde; // 청약접수시작일
	private String subscrpt_rcept_endde; // 청약접수종료일
	private String type; // HOUSE_SECD 02:도시형/오피스텔/민간임대 04:무순위/잔여세대
	private String rcrit_pblanc_de; // 모집공고일
}
