package com.spring.myapp.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class GoodsReplyListVO {
	private String goodsCode;
	private String goodsName;
	private String replyNumber;
	private String userid;
	private String replyData;
	private Date replyDate;
	private String username;
}
