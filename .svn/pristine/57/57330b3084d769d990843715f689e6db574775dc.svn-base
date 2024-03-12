package com.uni.unipms.common.Advice;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;

import com.uni.unipms.common.Cache.GetSharedCache;
import com.uni.unipms.common.Licence.CheckRun;
import com.uni.unipms.common.Message.ConstantMessage;
import com.uni.unipms.common.Model.ErrorVO;
import com.uni.unipms.model.CommonVO;

@Aspect
public class LoggingAdviceAspect {
	
	final static Logger logger = LoggerFactory.getLogger(LoggingAdviceAspect.class);
	
	public Object loggingAdvice(ProceedingJoinPoint joinPoint) throws Throwable {

		String signatureString = joinPoint.getSignature().toShortString();

		logger.debug("**************************************************");
		logger.debug("**  Start : " + signatureString);
		logger.debug("**************************************************");

		long start = System.currentTimeMillis();

		HttpServletRequest request = null;
        for ( Object o : joinPoint.getArgs() ){ 
            if ( o instanceof HttpServletRequest ) {
                request = (HttpServletRequest)o;
            } 
        }

	    if (!CheckRun.CheckProcessRun(request)) {

	    	logger.debug("**************************************************");
			logger.debug("**  CheckRun False.");
			logger.debug("**************************************************");

			ModelMap model = new ModelMap();

			ErrorVO errorVO = new ErrorVO();
			
			errorVO.setsERROR_CODE(ConstantMessage.LIC_ERR_CODE01);
			errorVO.setsERROR_MSG(ConstantMessage.LIC_ERR_MSG01);
			
			model.addAttribute("errInfo", errorVO);
			
			return model;
			
	    }

	    try {

			Object result = joinPoint.proceed();
			
			if (joinPoint.getArgs().length == 4) {

				CommonVO commonVO = (CommonVO)joinPoint.getArgs()[3];
				
				if (!commonVO.getsPRJT_ID().equals("") 
						&& !commonVO.getsPRJT_ID().equals(GetSharedCache.getCacheServiceInfo(ConstantMessage.SERVICE_PROJECT_ID))) {
					logger.debug("**************************************************");
					logger.debug("**  Invalid project.");
					logger.debug("**************************************************");
					
					ModelMap model = new ModelMap();

					ErrorVO errorVO = new ErrorVO();
					
					errorVO.setsERROR_CODE(ConstantMessage.LIC_ERR_CODE01);
					errorVO.setsERROR_MSG(ConstantMessage.LIC_ERR_MSG01);
					
					model.addAttribute("errInfo", errorVO);
					
					return model;
				}
			}
			
			logger.debug("**************************************************");
			logger.debug("**  result : " + result);
			logger.debug("**************************************************");

			return result;

		} finally {
			long finish = System.currentTimeMillis();

			logger.debug("**************************************************");
			logger.debug("**  End : " + signatureString);
			logger.debug("**  Process Time [" +signatureString + "] : " + (finish - start) + "ms");
			logger.debug("**************************************************");
		}
	}
	
	public void loggingBefore(JoinPoint joinpoint){

		String className = joinpoint.getTarget().getClass().getSimpleName();
	    String methodName = joinpoint.getSignature().getName();
	    
	    logger.debug("**************************************************");
		logger.debug("**  loggingBefore executed.");
		logger.debug("**  " + className + "." + methodName + " executed.");
		logger.debug("**************************************************");

    }

	public void afterReturningTargetMethod(JoinPoint thisJoinPoint, Object ret) {

	    logger.debug("**************************************************");
		logger.debug("**  afterReturningTargetMethod executed." + " return value is [" + ret + "]");
		logger.debug("**************************************************");

	}
	
    public void afterThrowingTargetMethod(JoinPoint thisJoinPoint, Exception exception) throws Exception {

	    logger.debug("**************************************************");
		logger.debug("**  afterThrowingTargetMethod executed.");
		logger.debug("**************************************************");

        throw new Exception("Exception : ", exception);
    }
	
	
    public void afterTargetMethod(JoinPoint thisJoinPoint) {

	    logger.debug("**************************************************");
		logger.debug("**  afterTargetMethod executed.");
		logger.debug("**************************************************");

    }

}
