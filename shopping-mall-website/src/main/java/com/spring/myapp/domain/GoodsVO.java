package com.spring.myapp.domain;

import java.util.Date;


import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class GoodsVO {
	private int goodsNumber;
	private String goodsName;
	private String categoryCode;
	private int goodsPrice;
	private int goodsStock;
	private String goodsDescription;
	private String goodsImage;
	private Date goodsDate;
	private String goodsThumbImage;
}