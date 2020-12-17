package com.spring.myapp.domain;

import java.util.Date;


import lombok.AllArgsConstructor;
import lombok.Data;

@Data
public class GoodsVO {
	private String goodsCode;
	private String goodsName;
	private String firstClassification;
	private String secondClassification;
	private String brand;
	private int goodsPrice;
	private int goodsStock;
	private String goodsDescription;
	private String goodsImage;
	private String goodsThumbnailImage;
	private Date goodsAddedTime;
}