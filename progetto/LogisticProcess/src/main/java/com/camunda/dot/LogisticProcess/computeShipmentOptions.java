package com.camunda.dot.LogisticProcess;

import org.camunda.bpm.engine.delegate.DelegateExecution;
import org.camunda.bpm.engine.delegate.JavaDelegate;

public class computeShipmentOptions implements JavaDelegate {
	
	public int price = 1;

	@Override
	public void execute(DelegateExecution execution) throws Exception {
		

		
		
		if(execution.getVariable("destinationProvince").equals("MI") && execution.getVariable("senderProvince").equals("BO") ||
				execution.getVariable("destinationProvince").equals("BO") && execution.getVariable("senderProvince").equals("MI"))
			price*=10;
		if(execution.getVariable("destinationProvince").equals("RO") && execution.getVariable("senderProvince").equals("BO")||
				execution.getVariable("destinationProvince").equals("BO") && execution.getVariable("senderProvince").equals("RO"))
			price*=7;
		if(execution.getVariable("destinationProvince").equals("MI") && execution.getVariable("senderProvince").equals("BO")||
				execution.getVariable("destinationProvince").equals("BO") && execution.getVariable("senderProvince").equals("MI"))
			price*=5;
		
		if((Integer) execution.getVariable("P_Weight")>10000)
			price*=2;
	
		 execution.setVariable("price", Integer.toString(price));
	}

}
