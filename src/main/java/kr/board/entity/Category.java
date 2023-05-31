package kr.board.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Data
@ToString
public class Category {

    // 분류 순번 
    private Double cate_seq;

    // 대분류 
    private String cate_depth1;

    // 중분류 
    private String cate_depth2;
}
