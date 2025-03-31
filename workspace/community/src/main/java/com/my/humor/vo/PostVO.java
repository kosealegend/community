package com.my.humor.vo;

import java.sql.Timestamp;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class PostVO {
	private int postId;
    private String userId;
    private int categoryId;
    private String title;
    private String content;
    private int views;
    private int likes;
    private int dislikes;
    private String imageUrl;
    private Timestamp createdAt;
	
}
