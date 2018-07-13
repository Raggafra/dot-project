package com.camunda.dot.Project;

import org.camunda.bpm.engine.delegate.DelegateExecution;
import org.camunda.bpm.engine.delegate.JavaDelegate;

public class CheckForAnomalies1 implements JavaDelegate {

	@Override
	public void execute(DelegateExecution execution) throws Exception {
		
		if(checkAnomalies(execution))
			execution.setVariable("anomalie1", false);
		else execution.setVariable("anomalie1", true);

	}


	public Boolean checkAnomalies(DelegateExecution execution) {
		Boolean checkDestination= checkCity((String) execution.getVariable("destinationCity"), (String) execution.getVariable("destinationProvince"), (String) execution.getVariable("destinationCAP"));
		Boolean checkSender=checkCity((String) execution.getVariable("senderCity"), (String) execution.getVariable("senderProvince"), (String) execution.getVariable("senderCAP"));
		if(checkDestination && checkSender){
			return true;
		}
		else return false;
	}
	
	public Boolean checkCity( String city, String province, String cap) {
		if(city.equals("Milano") && province.equals("MI") && cap.equals("20130"))
			return true;
		if(city.equals("Roma") && province.equals("RO") && cap.equals("10100"))
			return true;
		if(city.equals("Bologna") && province.equals("BO") && cap.equals("20100"))
			return true;
		else return false;
	}
}
	
