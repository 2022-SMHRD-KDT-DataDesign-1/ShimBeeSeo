package kr.board.entity;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class H_Scorelist {
    // 집채점 순번 
    private int score_h_seq;

    // 분류 순번 
    private int cate_seq;

    // 문항 
    private String score_h_q;

    // 보기 
    private String score_h_ex;

    // 공격성
    private int score_h_aggressive;

    // 사회불안 
    private int score_h_social_anxiety;

    // 우울 
    private int score_h_depressed;

    // 대인회피 
    private int score_h_avpd;

    // 자존감 
    private int score_h_self_esteem;

    // 정서불안 
    private int score_h_emotional_instability;

    // 애정결핍 
    private int score_h_deprivation;

    // 열등감 
    private int score_h_inferiority;

    // 퇴행 
    private int score_h_regression;
    
    
}
