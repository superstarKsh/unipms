package com.uni.unipms.common.Util;

import java.util.Locale;

import org.springframework.context.MessageSource;
import org.springframework.context.MessageSourceAware;
import org.springframework.stereotype.Component;


@Component
public class MessageUtil implements MessageSourceAware{

	private MessageSource messageSource;
	private Object[] emptyArguments = new Object[]{};

	@Override
	public void setMessageSource(MessageSource messageSource) {
		this.messageSource = messageSource;
	}

	public static MessageUtil getMessageUtil(){
		return SpringUtil.getApplicationContext().getBean(MessageUtil.class);
	}

	public String getMessage(String code){
		return messageSource.getMessage(code, emptyArguments, Locale.KOREAN);
	}
	
	public String getMessage(String code, Object[] arguments){
		return messageSource.getMessage(code, arguments, Locale.KOREAN);
	}

	public String getMessage(String code, Object[] arguments, Locale locale){
		return messageSource.getMessage(code, arguments, locale);
	}
}
