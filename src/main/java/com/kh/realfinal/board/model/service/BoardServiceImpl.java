package com.kh.realfinal.board.model.service;

import java.io.File;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;
import com.kh.realfinal.board.model.mapper.BoardMapper;
import com.kh.realfinal.board.model.vo.Board;
import com.kh.realfinal.board.model.vo.Reply;
import com.kh.realfinal.common.util.PageInfo;

@Service
public class BoardServiceImpl implements BoardService{
	
	// 매퍼 연결
	@Autowired
	private BoardMapper mapper;

	// DB에 게시글 저장
	@Override
	@Transactional(rollbackFor = Exception.class) // 모든 예외에 대해 전부 트랜잭션 롤백
	public int saveBoard(Board board) {
		int result = 0;
		System.out.println(board.toString());
		
		if(board.getBoard_no() == 0) {
			result = mapper.insertBoard(board);
		}else {
			result = mapper.updateBoard(board);
		}
		return result;
	}

	// DB에 댓글 저장
	@Override
	public int saveReply(Reply reply) {
		return mapper.insertReply(reply);
	}

	// DB에 파일 저장
	@Override
	public String saveFile(MultipartFile upfile, String savePath) {
		try {
			System.out.println("savePath : " + savePath);
			File folder = new File(savePath);
			if(folder.exists() == false) {
				folder.mkdirs();
			}
			
			String board_originalFileName = upfile.getOriginalFilename();
			String board_renamedFileName = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyyMMdd_HHmmssSSS"))
					+ board_originalFileName.substring(board_originalFileName.lastIndexOf("."));
			String reNamePath = savePath + "/" + board_renamedFileName;
		
			upfile.transferTo(new File(reNamePath));
			return board_renamedFileName;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	// 검색 갯수
	@Override
	public int getBoardCount(Map<String, String> param) {
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		
		searchMap.put("titleKeyword", searchValue);
		searchMap.put("board_list_no", param.get("type"));
		
		return mapper.selectBoardCount(searchMap);
	}

	// 검색 리스트
	@Override
	public List<Board> getBoardList(PageInfo pageInfo, Map<String, String> param) {
		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
		
		Map<String, String> searchMap = new HashMap<String, String>();
		String searchValue = param.get("searchValue");
		
		searchMap.put("titleKeyword", searchValue);
		searchMap.put("board_list_no", param.get("type"));
		searchMap.put("sort", param.get("sort"));

		return mapper.selectBoardList(rowBounds, searchMap);
	}
	
	// 커뮤니티 메인 - 게시글 출력
	@Override
	public List<Board> getBoardListMain() { 
		return mapper.selectBoardListMain();
	}
	
	// 사이드 커뮤니티 인기글 : 부동산메인 2개 게시글 출력
	@Override
	public List<Board> getSideBoardForEstate(Map<String, Object> param) {
		return mapper.sideBoardForEstate(param);
	}

	// 사이드 커뮤니티 인기글 : 국회의원현황 6개 게시글 출력
	@Override
	public List<Board> getSideBoardForPolitics(Map<String, Object> param) {
		return mapper.sideBoardForPolitics(param);
	}
	
	// 사이드 커뮤니티 인기글 : 메인, 커뮤니티상세 6개 게시글 출력
	public List<Board> getSideBoard() {
		return mapper.sideBoard();
	}
	
	// 게시글 보기
	@Override
	@Transactional(rollbackFor =  Exception.class)
	public Board findByNo(int boardNo) {
		Board board = mapper.selectBoardByNo(boardNo);
		board.setBoard_hit(board.getBoard_hit() + 1); // 조회수 늘리기
		mapper.updateHit(board);
		return board;
	}

	// 파일 삭제
	@Override
	public void deleteFile(String filePath) {
		System.out.println(filePath);
		File file = new File(filePath);
		if(file.exists()) {
			file.delete();
		}
	}

	// 글 삭제
	@Override
	@Transactional(rollbackFor =  Exception.class)
	public int deleteBoard(int no, String rootPath) {
		Board board = mapper.selectBoardByNo(no);
		deleteFile(rootPath+ "\\" + board.getBoard_renamedFileName());
		return mapper.deleteBoard(no);
	}

	// 댓글 삭제
	@Override
	@Transactional(rollbackFor =  Exception.class)
	public int deleteReply(int no) {
		return mapper.deleteReply(no);
	}

	// 댓글 수정
	@Override
	public int editReply(Reply reply) {
		return mapper.editReply(reply);
	}
}