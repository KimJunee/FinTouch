package com.kh.realfinal.news.model.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class News {
	private int newsNo;
	private String title; 		// ����
	private String link;  		// ���� ��ũ
	private String pubdate;		// �ۼ���
	private String description;	// ��� ���
	private String image;		// ���� �����
	private String category;
}

