package kr.board.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Scenario {

    // 시나리오 순번 
    private Double scenario_seq;

    // 분류 순번 
    private Double cate_seq;

    // 내용 
    private String scenari_content;
}
