package com.example.spring02;

import static org.junit.Assert.*;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.context.web.WebAppConfiguration;

import com.example.spring02.model.board.dao.BoardDAOImpl;
import com.example.spring02.model.board.dto.BoardVO;
import com.example.spring02.model.board.dto.ReplyVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {
		"file:src/main/webapp/WEB-INF/spring/**/*.xml"
})
public class InsertGarbageData {

	@Inject
	BoardDAOImpl dao;
	
	
	@Test
	public void insertGarbageDataTest() throws Exception {
		
		BoardVO vo = new BoardVO();
		
		for (int i=101; i<=1000; i++)
		{
			vo.setBno(i);
			vo.setContent("테스트 데이터 넣고 있습니다. " + i);
			vo.setTitle("테스트 제목 " + i);
			vo.setWriter("abcd");
			
			dao.insertGarbageData(vo);
			
		}
		
	}
	
	@Test
	public void insertReplyData() throws Exception {
		
		ReplyVO vo = new ReplyVO();
		
		for (int i=1; i<=500; i++) {
			vo.setBno(1000);
			vo.setRno(i);
			
		}
		
	}

}
