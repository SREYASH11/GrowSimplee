package steps;

import util.ScenarioContext;

public abstract class BaseStepDef {
    protected final ScenarioContext context;

    public BaseStepDef(ScenarioContext context) {
        this.context = context;
    }
}
