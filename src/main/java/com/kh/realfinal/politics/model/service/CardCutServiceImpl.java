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
public class CardCutServiceImpl implements CardCutService {

	@Autowired
	private CardCutMapper mapper;

	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveCardCut(CardCut card) {
		int result = mapper.insertCardCut(card);
		return result;
	}


	@Override
	public List<CardCut> getCardCutList(PageInfo pageInfo, Map<String, String> param) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		List<CardCut> list = mapper.selectCardCutList(rowBounds, param);
		for (CardCut item : list) {
			parsingImageUrl(item);
		}

		return list;
	}
	
	@Override
	public int getCardCutCount(Map<String, String> param) {
		return mapper.selectCardCutCount(param);
	}
	
	private void parsingImageUrl(CardCut item) {
		try {
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
			String description = "";
			if(descriptionOrigin.indexOf("<!--cardnewsEnd-->") > 0) {
				description = descriptionOrigin.substring(descriptionOrigin.indexOf("<!--cardnewsEnd-->")).replace("<!--cardnewsEnd-->", "");
			}else {
				description = descriptionOrigin;
			}
			item.setContent(description);
			item.setImages(imageList);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	// ?????? ????????? ??????
	public CardCut getCardCutContent(int cardCutNo) {
		CardCut carcut = mapper.selectCardCutOne(cardCutNo);
		parsingImageUrl(carcut);
		return carcut;
	}

	
	// ?????? ?????????
	
	@Override
	@Transactional(rollbackFor = Exception.class)
	public int saveCcReply(CardCutReply cardCutReply) {
		return mapper.insertCardCutreply(cardCutReply);
	}
	
	@Override
	public int editCcReply(CardCutReply cardCutReply) {
		return mapper.editCardCutReply(cardCutReply);
	}
	@Override
	@Transactional(rollbackFor =  Exception.class)
	public int deleteCcReply(int no) {
		return mapper.deleteCardCutReply(no);
	}


	@Override
	public List<CardCut> getCardCutList1() {
		List<CardCut> list =  mapper.selectCardCutList1();
		
		for (CardCut item : list) {
			parsingImageUrl(item);
		}

		return list;
	}


	@Override
	public List<CardCut> getCardCutMain() {
		List<CardCut> list =  mapper.selectCardCutMain();
		
		for (CardCut item : list) {
			parsingImageUrl(item);
		}

		return list;
	}
 
 
}
