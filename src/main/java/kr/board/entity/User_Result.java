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
    private int result_seq;

    // 사용자 아이디 
    private String user_id;

    // 분류 순번 
    private int cate_seq;

    // 공격성 
    private int result_aggressive;

    // 사회불안 
    private int result_social_anxiety;

    // 우울 
    private int result_depressed;

    // 대인회피 
    private int result_avpd;

    // 자존감 
    private int result_self_esteem;

    // 정서불안 
    private int result_emotional_instability;

    // 애정결핍 
    private int result_deprivation;

    // 열등감 
    private int result_inferiority;

    // 퇴행 
    private int result_regression;

    // 그림 
    private String result_path;

    // 그림 결과 
    private String result_o_text;

    // 체크 결과 
    private String result_c_text;

    // 지도 방향 
    private String result_direction;

    // 검사일 
    private String result_date;

	

}


