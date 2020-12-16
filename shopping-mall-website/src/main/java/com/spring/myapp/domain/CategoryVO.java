package com.spring.myapp.domain;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class CategoryVO {
	private int level;
	private String categoryName;
	private String categoryCode;
	private String categoryCodeReference;

}