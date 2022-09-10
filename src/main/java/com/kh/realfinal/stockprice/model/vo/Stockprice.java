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
	private int clpr;      // - ���Խ����� �ŸŽð�����ñ��� �����Ǵ� ��������      
	private int vs;        // ���� ��� ���                         
	private String fltRt;     // -- ���� ��� ����� ���� ����               
	private int mkp;       //  ���Խ����� �ŸŽð������� �����Ǵ� ���ʰ���         
	private int hipr;      // - �Ϸ� �� ������ �ְ�ġ                   
	private int lopr;      // - �Ϸ� �� ������ ����ġ                   
	private int trqu;      // - ü������� ���� �հ�                    
	private Double trPrc;     // -- �ŷ��� �� ü�ᰡ�� * ü������� ���� �հ�      
	private Double lstgStCnt; // -- ������ �����ֽļ�                 
	private Double mrktTotAmt;// --���� * �����ֽļ�                 
}

