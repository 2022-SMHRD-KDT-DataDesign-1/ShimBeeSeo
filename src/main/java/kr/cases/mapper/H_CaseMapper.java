package kr.cases.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.H_Case;

@Mapper
public interface H_CaseMapper {

	List<H_Case> selectAllList();
	
	
	
	
	
}
