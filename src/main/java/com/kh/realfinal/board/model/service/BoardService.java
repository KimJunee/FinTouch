package com.kh.realfinal.board.model.service;

import java.util.List;
import java.util.Map;
import org.springframework.web.multipart.MultipartFile;
import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.board.model.vo.Reply;
import com.kh.realfinal.common.util.PageInfo;

public interface BoardService {
	int saveBoard(Board board);												// DB에 게시글 저장
	int saveReply(Reply reply);												// DB에 댓글 저장
	String saveFile(MultipartFile upFile, String savePath);					// DB에 파일 저장
	int getBoardCount(Map<String, String> param);							// 검색 갯수
	List<Board> getBoardList(PageInfo pageInfo, Map<String, String> param); // 검색 리스트
	Board findByNo(int boardNo);											// 게시글
	void deleteFile(String filePath);										// DB에서 파일 삭제
	int deleteBoard(int no, String rootPath);								// DB에서 글 삭제
	int deleteReply(int no);												// DB에서 댓글 삭제
	List<Board> getBoardListMain();											// 커뮤니티에서 게시글 출력
	List<Board> getSideBoardForEstate(Map<String, Object> param);			// 부동산에서 커뮤니티 게시글 출력
	List<Board> getSideBoardForPolitics(Map<String, Object> param);			// 정치에서 커뮤니티 게시글 출력
	List<Board> getSideBoard();												// 사이드용 게시글 출력
	int editReply(Reply reply);												// 댓글 수정
}