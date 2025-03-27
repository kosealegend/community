package com.my.humor.vo;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ReplyReportVO {
	
	private int reportId;
	private String reporterId;
	private int replyId;
	private int reportCategoryId;
	private String reportedAt;

}
