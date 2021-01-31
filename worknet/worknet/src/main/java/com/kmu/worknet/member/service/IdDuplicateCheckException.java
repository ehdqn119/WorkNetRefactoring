package com.kmu.worknet.member.service;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
public class IdDuplicateCheckException extends NullPointerException{

	private static final long serialVersionUID = 1L;

	private String errMsg;
}
