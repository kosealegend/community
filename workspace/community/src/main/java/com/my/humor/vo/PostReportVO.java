package com.my.humor.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PostReportVO {

	private int reportId;
	private String reporterId;
	private int postId;
	private int categoryId;
	private String reportedAt;
	private int reportCategoryId;
}
