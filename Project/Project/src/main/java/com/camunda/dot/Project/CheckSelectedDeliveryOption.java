package com.camunda.dot.Project;

import org.camunda.bpm.engine.delegate.DelegateExecution;
import org.camunda.bpm.engine.delegate.JavaDelegate;

public class CheckSelectedDeliveryOption implements JavaDelegate {

	@Override
	public void execute(DelegateExecution execution) throws Exception {
		if(((Boolean) execution.getVariable("ritiroCasa") && !(Boolean) execution.getVariable("ritiroPunto")) || (!(Boolean) execution.getVariable("ritiroCasa") && (Boolean) execution.getVariable("ritiroPunto")))
			execution.setVariable("sceltaOK", true);
		else
			execution.setVariable("sceltaOK", false);
	}

}
