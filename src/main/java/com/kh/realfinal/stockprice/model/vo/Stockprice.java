package com.kh.realfinal.stockprice.model.vo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor

public class Stockprice { //�ֽĽü� ����
	private String basDt;     // ��������                                  
	private String srtnCd;    // ���� �ڵ庸�� ª���鼭 ���ϼ��� ����Ǵ� �ڵ�(6�ڸ�)       
	private String isinCd;    // ���� ä�� �ĺ� ��ȣ. ��������(ä��)�� �������� ������ȣ    
	private String itmsNm;    // �������� �������� ������ȣ �ڵ� �̸�                
	private String mrktCtg;   // �ֽ��� ���� ���� (KOSPI/KOSDAQ/KONEX �� 1)  
	private String clpr;      // - ���Խ����� �ŸŽð�����ñ��� �����Ǵ� ��������      
	private String vs;        // ���� ��� ���                         
	private String fltRt;     // -- ���� ��� ����� ���� ����               
	private String mkp;       //  ���Խ����� �ŸŽð������� �����Ǵ� ���ʰ���         
	private String hipr;      // - �Ϸ� �� ������ �ְ�ġ                   
	private String lopr;      // - �Ϸ� �� ������ ����ġ                   
	private String trqu;      // - ü������� ���� �հ�                    
	private String trPrc;     // -- �ŷ��� �� ü�ᰡ�� * ü������� ���� �հ�      
	private String lstgStCnt; // -- ������ �����ֽļ�                 
	private String mrktTotAmt;// --���� * �����ֽļ�                 
}

