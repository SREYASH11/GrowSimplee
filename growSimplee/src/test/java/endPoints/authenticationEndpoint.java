package endPoints;

import io.restassured.RestAssured;
import io.restassured.response.Response;

import static io.restassured.RestAssured.given;

public class authenticationEndpoint {
    private static final String APPLICATION_JSON = "application/json";


    public static Response authToken(String json)
    {
        return given().contentType(APPLICATION_JSON).when().body(json).post("https://xv24xrhpxa.execute-api.ap-south-1.amazonaws.com/v1/authToken");



    }
}
