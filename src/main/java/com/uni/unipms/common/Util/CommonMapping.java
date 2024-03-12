package com.uni.unipms.common.Util;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class CommonMapping {
	
	final static Logger logger = LoggerFactory.getLogger(CommonMapping.class);
	
	public static Map ConverObjectToMap(Object obj){
		Map resultMap = new HashMap();
        try {
            Field[] fields = obj.getClass().getDeclaredFields();
            resultMap = new HashMap();
            for(int i=0; i<=fields.length-1;i++){
                fields[i].setAccessible(true);
                resultMap.put(fields[i].getName(), fields[i].get(obj));
            }
            return resultMap;
        } catch (IllegalArgumentException e) {
            //e.printStackTrace();
        } catch (IllegalAccessException e) {
            //e.printStackTrace();
        }
        return resultMap;
    }
	
	public static Object ConvertMapToObject(Map map, Object objClass){

	    String keyAttribute = null;
	    String setMethodString = "set";
	    String methodString = null;
	    Iterator itr = map.keySet().iterator();
	    while(itr.hasNext()){
	        keyAttribute = (String) itr.next();
	        methodString = setMethodString+keyAttribute.substring(0,1).toUpperCase()+keyAttribute.substring(1);
	        try {
	            Method[] methods = objClass.getClass().getDeclaredMethods();
	            for(int i=0;i<=methods.length-1;i++){
	                if(methodString.equals(methods[i].getName())){
	                    System.out.println("invoke : "+methodString);
	                    methods[i].invoke(objClass, map.get(keyAttribute));
	                }
	            }
	        } catch (SecurityException e) {
	            //e.printStackTrace();
	        } catch (IllegalAccessException e) {
	            //e.printStackTrace();
	        } catch (IllegalArgumentException e) {
	            //e.printStackTrace();
	        } catch (InvocationTargetException e) {
	            //e.printStackTrace();
	        }
	    }

	    return objClass;
	}
	
	public static LinkedHashMap ConverObjectToLinkedHashMap(Object obj){
		LinkedHashMap resultMap = new LinkedHashMap();
        try {
            Field[] fields = obj.getClass().getDeclaredFields();
            resultMap = new LinkedHashMap();
            for(int i=0; i<=fields.length-1;i++){
                fields[i].setAccessible(true);
                resultMap.put(fields[i].getName(), fields[i].get(obj));
            }
            return resultMap;
        } catch (IllegalArgumentException e) {
            //e.printStackTrace();
        } catch (IllegalAccessException e) {
            //e.printStackTrace();
        }
        return resultMap;
    }
	
}