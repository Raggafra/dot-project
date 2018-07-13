package com.camunda.dot.Project;

import org.camunda.bpm.engine.delegate.DelegateExecution;
import org.camunda.bpm.engine.delegate.JavaDelegate;

public class CheckForAnomalies2 implements JavaDelegate {

	@Override
	public void execute(DelegateExecution execution) throws Exception {
		if((Integer) execution.getVariable("P_Weight")>100000 || (Integer) execution.getVariable("P_Height")>200 || (Integer) execution.getVariable("P_Widht")>200 || (Integer) execution.getVariable("P_Height") >200)
			execution.setVariable("anomalie2", true);
		else execution.setVariable("anomalie2", false);
	}

}
