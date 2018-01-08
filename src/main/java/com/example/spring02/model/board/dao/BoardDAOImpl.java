package com.example.spring02.model.board.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.example.spring02.model.board.dto.BoardVO;

@Repository // 현재 클래스를 dao bean으로 등록
public class BoardDAOImpl implements BoardDAO {
	
	@Inject
	SqlSession sqlSession;

	// 01. 게시글 작성
	@Override
	public void create(BoardVO vo) throws Exception {
		sqlSession.insert("board.insert", vo);
	}

	// 02. 게시글 상세보기
	@Override
	public BoardVO read(int bno) throws Exception {
		return sqlSession.selectOne("board.view", bno);
	}

	// 03. 게시글 수정
	@Override
	public void update(BoardVO vo) throws Exception {
		sqlSession.update("board.updateArticle", vo);
	}

	// 04. 게시글 삭제
	@Override
	public void delete(int bno) throws Exception {
		sqlSession.delete("board.deleteArticle", bno);
	}

	// 05. 게시글 전체 목록
	@Override
	public List<BoardVO> listAll() throws Exception {
		return sqlSession.selectList("board.listAll");
	}

	// 06. 게시글 조회수 증가
	@Override
	public void increaseViewcnt(int bno) throws Exception {
		sqlSession.update("board.increaseViewcnt", bno);
	}

}
