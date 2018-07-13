package com.camunda.dot.Project;

import org.camunda.bpm.engine.delegate.DelegateExecution;
import org.camunda.bpm.engine.delegate.JavaDelegate;

public class CheckShipmentOption implements JavaDelegate {

	@Override
	public void execute(DelegateExecution execution) throws Exception {
		
		if(((Boolean) execution.getVariable("option1") && !(Boolean) execution.getVariable("option2")) || (!(Boolean) execution.getVariable("option1") && (Boolean) execution.getVariable("option2")))
			execution.setVariable("optionOK", true);
		else
			execution.setVariable("optionOK", false);
	}

}
