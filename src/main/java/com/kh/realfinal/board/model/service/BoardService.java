package com.kh.realfinal.board.model.service;

import java.util.List;
import java.util.Map;
import org.springframework.web.multipart.MultipartFile;
import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.board.model.vo.Reply;
import com.kh.realfinal.common.util.PageInfo;

public interface BoardService {
	int saveBoard(Board board);
	int saveReply(Reply reply);
	String saveFile(MultipartFile upFile, String savePath);
	int getBoardCount(Map<String, String> param);
	List<Board> getBoardList(PageInfo pageInfo, Map<String, String> param);
	Board findByNo(int boardNo);
	void deleteFile(String filePath);
	int deleteBoard(int no, String rootPath);
	int deleteReply(int no);
}