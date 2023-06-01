package kr.board.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class User_Result {
    // 결과 순번 
    private Double result_seq;

    // 사용자 아이디 
    private String user_id;

    // 분류 순번 
    private Double cate_seq;

    // 공격성 
    private Double result_aggressive;

    // 사회불안 
    private Double result_social_anxiety;

    // 우울 
    private Double result_depressed;

    // 대인회피 
    private Double result_av_p_d;

    // 자존감 
    private Double result_self_esteem;

    // 정서불안 
    private Double result_emotional_instability;

    // 애정결핍 
    private Double result_deprivation;

    // 열등감 
    private Double result_inferiority;

    // 퇴행 
    private Double result_regression;

    // 그림 
    private String result_path;

    // 그림 결과 
    private String result_o_text;

    // 체크 결과 
    private String result_c_text;

    // 지도 방향 
    private String result_direction;

    // 검사일 
    private int result_date;
}
