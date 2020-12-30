package com.spring.myapp.domain;

import java.sql.Date;

import lombok.Data;

@Data
public class OrderVO {
	private String orderId;
	private String userId;
	private String orderRecipient;
	private String zipcode;
	private String address1;
	private String address2;
	private String phone;
	private int amount;
	private Date orderDate;
}
