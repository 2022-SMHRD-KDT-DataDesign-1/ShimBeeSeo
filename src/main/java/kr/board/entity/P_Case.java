package kr.board.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Data
@ToString
public class P_Case {
    // 사람결과유형 순번 
    private Double case_p_seq;

    // 분류 순번 
    private Double cate_seq;

    // 범주 시작 
    private Double case_p_s;

    // 범주 끝 
    private Double case_p_e;

    // 감정 
    private String case_p_emotion;

    // 내용 
    private String case_p_content;
}
