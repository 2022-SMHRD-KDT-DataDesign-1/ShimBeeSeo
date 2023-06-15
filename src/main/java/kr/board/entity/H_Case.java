package kr.board.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class H_Case {
    // 집결과유형 순번 
    private int case_h_seq;

    // 분류 순번 
    private int cate_seq;

    // 범주 시작 
    private int case_h_s;

    // 범주 끝 
    private int case_h_e;

    // 감정 
    private String case_h_emotion;

    // 내용 
    private String case_h_content;
}
