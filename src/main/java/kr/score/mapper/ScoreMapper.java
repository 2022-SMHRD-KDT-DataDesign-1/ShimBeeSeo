package kr.score.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.board.entity.H_Scorelist;

@Mapper
public interface ScoreMapper {

	public List<H_Scorelist> scoreList();

}
