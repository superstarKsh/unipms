package com.uni.unipms.common.service;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class LoadServiceInfo implements ServletContextListener {
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// TODO Auto-generated method stub
		
		AllocHostInfo allochostinfo = new AllocHostInfo();
		allochostinfo.SetHostInfo();
		
		AllocServiceInfo allocserviceinfo = new AllocServiceInfo();
		allocserviceinfo.SetServiceInfo();
		
		AllocExcelHeaderInfo allocexcelheaderinfo = new AllocExcelHeaderInfo();
		allocexcelheaderinfo.SetExcelHeaderInfo();
		
	}

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		// TODO Auto-generated method stub
	}

}
