package com.kh.realfinal.politics.model.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.kh.realfinal.common.util.PageInfo;
import com.kh.realfinal.politics.model.mapper.CardCutMapper;
import com.kh.realfinal.politics.model.vo.CardCut;
import com.kh.realfinal.politics.model.vo.CardCutReply;

@Service
public class CardCutServiceImpl implements CardCutService  {
	
	@Autowired
	private CardCutMapper mapper;
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveCardCut(CardCut card) {
		int result = mapper.insertCardCut(card);
		return result;
	}

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveCcReply(CardCutReply reply) {
		return mapper.insertReply(reply);
	}

	@Override
	@Transactional(rollbackFor =  Exception.class)
	public int deleteReply(int no) {
		return mapper.deleteReply(no);
	}

	@Override
	public List<CardCut> getCardCutList(PageInfo pageInfo, Map<String, String> param) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		List<CardCut> list = mapper.selectCardCut(rowBounds);
		
		for(CardCut item : list) {
			String descriptionOrigin = item.getDescriptionOrigin();
			int value = 0;
			int nextValue = 0;
			String pattern = "src=\"";
			List<String> imageList = new ArrayList<String>();
			while((value = descriptionOrigin.indexOf(pattern, nextValue)) > 0) {
				nextValue = descriptionOrigin.indexOf("\"", value + pattern.length());
				String imageurl = descriptionOrigin.substring(value, nextValue).replace("src=\"", "");
				imageList.add(imageurl);
				value = nextValue + 1;
			}
			String description = descriptionOrigin.substring(descriptionOrigin.indexOf("<!--cardnewsEnd-->")).replace("<!--cardnewsEnd-->", "");
			item.setContent(description);
			item.setImages(imageList);
		}
		return list;

	}

	@Override
	public List<CardCut> getCardCutList(PageInfo pageInfo) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		List<CardCut> list = mapper.selectCardCut(rowBounds);

		for (CardCut item : list) {
			String descriptionOrigin = item.getDescriptionOrigin();
			int value = 0;
			int nextValue = 0;
			String pattern = "src=\"";
			List<String> imageList = new ArrayList<String>();
			while ((value = descriptionOrigin.indexOf(pattern, nextValue)) > 0) {
				nextValue = descriptionOrigin.indexOf("\"", value + pattern.length());
				String imageurl = descriptionOrigin.substring(value, nextValue).replace("src=\"", "");
				imageList.add(imageurl);
				value = nextValue + 1;
			}
			String description = descriptionOrigin.substring(descriptionOrigin.indexOf("<!--cardnewsEnd-->"))
					.replace("<!--cardnewsEnd-->", "");
			item.setContent(description);
			item.setImages(imageList);
		}
		return list;

	}

	@Override
	public int getCardCutList() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int getCardCutCount() {
		// TODO Auto-generated method stub
		return 0;
	}

 
}
