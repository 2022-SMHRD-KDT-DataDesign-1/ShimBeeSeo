package kr.board.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class T_Scorelist {

    // 나무채점 순번 
    private Double score_t_seq;

    // 분류 순번 
    private Double cate_seq;

    // 문항 
    private String score_t_q;

    // 보기 
    private String score_t_ex;

    // 공격성 
    private Double score_t_aggressive;

    // 사회불안 
    private Double score_t_social_anxiety;

    // 우울 
    private Double score_t_depressed;

    // 대인회피 
    private Double score_t_av_p_d;

    // 자존감 
    private Double score_t_self_esteem;

    // 정서불안 
    private Double score_t_emotional_instability;

    // 애정결핍 
    private Double score_t_deprivation;

    // 열등감 
    private Double score_t_inferiority;

    // 퇴행 
    private Double score_t_regression;
}
