package kr.board.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Object {
    // 객체 순번 
    private Double object_seq;

    // 분류 순번 
    private Double cate_seq;

    // 객체명 
    private String object_name;

    // 객체 유무 
    private Double object_exist;

    // 내용 
    private String object_content;
}
