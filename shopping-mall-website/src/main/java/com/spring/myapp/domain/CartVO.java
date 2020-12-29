package com.spring.myapp.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CartVO {
	private int cartNumber;
	private String userid;
	private String goodsCode;
	private int cartStock;
	private Date cartAddedTime;
}
