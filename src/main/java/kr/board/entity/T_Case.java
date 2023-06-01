package kr.board.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class T_Case {
    // 나무결과유형 순번 
    private Double case_t_seq;

    // 분류 순번 
    private Double cate_seq;

    // 범주 시작 
    private Double case_t_s;

    // 범주 끝 
    private Double case_t_e;

    // 감정 
    private String case_t_emotion;

    // 내용 
    private String case_t_content;
}
