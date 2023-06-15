package kr.cases.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ObjectMapper {

	List<kr.board.entity.Object> selectAllList();

}
