package com.uni.unipms.common.Advice;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public class LoggingIntercepter {

	@Before("execution(public * com.uni.unipms.controller..*(..))")
	public void loggingBefore(JoinPoint joinpoint){

		 String className = joinpoint.getTarget().getClass().getSimpleName();
	     String methodName = joinpoint.getSignature().getName();
	     System.out.println("loggingBefore executed.");
	     System.out.println(className + "." + methodName + " executed.");
    }

	@AfterReturning(pointcut = "loggingAdvice()", returning = "ret")
	public void afterReturningTargetMethod(JoinPoint thisJoinPoint, Object ret) {
		System.out.println("afterReturningTargetMethod executed." + " return value is [" + ret + "]");
	}
	
	@AfterThrowing(pointcut = "loggingAdvice()", throwing = "exception")
    public void afterThrowingTargetMethod(JoinPoint thisJoinPoint,
            Exception exception) throws Exception {
        System.out.println("afterThrowingTargetMethod executed.");
 
        throw new Exception("Exception : ", exception);
    }
	
	
	@After("loggingAdvice()")
    public void afterTargetMethod(JoinPoint thisJoinPoint) {
        System.out.println("afterTargetMethod executed.");
    }
	
}
