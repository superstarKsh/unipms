package com.uni.unipms.common.Util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class DateUtil {
	
	public static String getToday() {
		
		String result = null;
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date(System.currentTimeMillis()));
		
		result = new SimpleDateFormat("yyyyMMdd").format(cal.getTime());

		return result;
	}
	
	public static String getTime() {
		
		String result = null;
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date(System.currentTimeMillis()));
		
		result = new SimpleDateFormat("HHmm").format(cal.getTime());

		return result;
	}
	
	public static String getTimeSec() {
		
		String result = null;
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date(System.currentTimeMillis()));
		
		result = new SimpleDateFormat("HHmmss").format(cal.getTime());

		return result;
	}
	
	public static String getTimeMilliSec() {
		
		String result = null;
		
		Calendar cal = Calendar.getInstance();
		cal.setTime(new Date(System.currentTimeMillis()));
		
		result = new SimpleDateFormat("HHmmssSSS").format(cal.getTime());

		return result;
	}

	public static String getDayOfWeek() {
		
		String result = null;
		
		Calendar cal = Calendar.getInstance();
		final String[] week = { "일", "월", "화", "수", "목", "금", "토" };	//1~7
		result = week[cal.get(Calendar.DAY_OF_WEEK) - 1];

		return result;
		
	}
	
	public static String getTargetDate(String inpDate, int targetPoint) {
		String result = null;
		
		int inpDateYear = Integer.parseInt(inpDate.substring(0,4));
		int inpDateMm = Integer.parseInt(inpDate.substring(4,6)) - 1;
		int inpDateDd = Integer.parseInt(inpDate.substring(6,8)) + targetPoint;
		
		Calendar cal = Calendar.getInstance();
		cal.set(inpDateYear, inpDateMm, inpDateDd);
		
		result = new SimpleDateFormat("yyyyMMdd").format(cal.getTime());

		return result;
	}
	
	public static long transDateStrToLong(String inputDate) {
		
		int year = Integer.parseInt(inputDate.substring(0,4));
		int month = Integer.parseInt(inputDate.substring(4,6)) - 1;
		int date = Integer.parseInt(inputDate.substring(6,8));
		
		Calendar cal = Calendar.getInstance();
		cal.set(year, month, date);

		return cal.getTimeInMillis();
	}
	
}
