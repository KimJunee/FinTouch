package com.kh.realfinal.mypageBoard.model.mapper;

import java.util.List;
import java.util.Map;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.session.RowBounds;
import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.board.model.vo.Reply;

@Mapper
public interface MypageBoardMapper {
	List<Board> selectMypageBoardList(RowBounds rowBounds, Map<String, String> map); 		// 마이 페이지 내 게시글 글 목록
	int selectMypageBoardCount(Map<String, String> map); 									// 내 게시글의 갯수(페이징처리용)
	List<Reply> selectMypageReplyList(RowBounds rowBounds, Map<String, String> searchMap);	// 마이 페이지 내 댓글 목록
	int selectMypageReplyCount(Map<String, String> searchMap);								// 내 댓글의 갯수(페이징처리용)
}