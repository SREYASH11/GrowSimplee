package steps;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import endPoints.createOrderEndpoint;
import io.restassured.response.Response;
import util.ScenarioContext;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.*;

public class createNewOrder extends BaseStepDef {

    public createNewOrder(ScenarioContext context) {
        super(context);
    }
    @Given("^I create a new order using given json$")
    public void createANewOrder(String json)
    {
        context.response= createOrderEndpoint.createNewOrder(json);
    }
    @And("^response should only contain these codes on successful order$")
    public void responseShouldOnlyContainTheseCodesOnSuccessfulOrder() {
        assertThat(context.response.jsonPath().get("response[0].code"),isOneOf("21013","21014"));
    }

    @And("^response should only contain these codes on unsuccesful order$")
    public void responseShouldOnlyContainTheseCodesOnUnsuccesfulOrder() {
        assertThat(context.response.jsonPath().get("response[0].code"),isOneOf("41001","41002","41003","41004","41005","41006","41007","41008","41009","41010","41011","41012","41013"));
    }

    @Then("^The operation is successful with code \"([^\"]*)\"$")
    public void theOperationIsSuccessfulWithCode(String code) {
        assertThat(context.response.jsonPath().get("response[0].code"),is(code));


    }
}
