package steps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import util.ScenarioContext;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.containsString;
import static org.hamcrest.Matchers.isOneOf;

public class reusableStepDef extends BaseStepDef{
    reusableStepDef(ScenarioContext context)
    {
        super(context);
    }
    @Then("^The operation is successful$")
    public void theOperationIsSuccessful() {
        context.response.then().statusCode(isOneOf(200, 201));
    }
    @Then("^the field \"([^\"]*)\" response should contain \"([^\"]*)\"$")
    public void the_response_should_contain_y(String path,String check) {
        assertThat(context.response.jsonPath().get(path).toString().toLowerCase(), containsString(check.toLowerCase()));
    }

}
