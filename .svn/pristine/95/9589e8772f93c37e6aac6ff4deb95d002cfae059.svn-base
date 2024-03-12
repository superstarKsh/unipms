package com.uni.unipms.common.batch;

import java.text.SimpleDateFormat;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.uni.unipms.servicebatch.BatchJobTaskCmplRate;

public class BatchJobUpdateStageBean extends QuartzJobBean {

	@Autowired
	private BatchJobTaskCmplRate batchJobTaskCmplRate;
	
	public void setQuartzJobService(BatchJobTaskCmplRate batchJobTaskCmplRate) {
		this.batchJobTaskCmplRate = batchJobTaskCmplRate;
	}

	@Override
    protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
		long time = System.currentTimeMillis();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy.MM.dd HH:mm:ss");
        System.out.println("Cron trigger 1 (5 second): current time = " + sdf.format(time));

        batchJobTaskCmplRate.perform();
    }
}
