package com.spring.myapp.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class GoodsViewVO {

	private int goodsNumber;
	private String goodssName;
	private String categoryCode;
	private int goodsPrice;
	private int goodsStock;
	private String goodsDescription;
	private String goodsImage;
	private Date goodsDate;

}