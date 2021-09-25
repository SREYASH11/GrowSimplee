package endPoints;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

import static io.restassured.RestAssured.given;
import static steps.authentication.authToken;

public class createOrderEndpoint {
    private static final String APPLICATION_JSON = "application/json";
    public  static final String Base_URI ="https://oyvm2iv4xj.execute-api.ap-south-1.amazonaws.com";

public static Response createNewOrder(String json)
{
    return given().auth().oauth2(authToken).contentType(APPLICATION_JSON).when().body(json).post(Base_URI+"/v1/orin/api/orders");
}
}
