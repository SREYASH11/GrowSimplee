package steps;

import cucumber.api.java.Before;
import endPoints.authenticationEndpoint;
import io.restassured.response.Response;
import org.json.JSONException;
import org.junit.BeforeClass;
import org.json.JSONObject;
public class authentication {
    public static String authToken = "";
    /*
     username & password will be fetched from the pom.xml, username and password will be passed in maven command
     */
    protected static final String username = ("sys.growSimplee.username");
    protected static final String password = ("sys.growSimplee.password");

  /* this method will be run before the framework and will retrieve the auth token.
  same auth token will be used in entire scenario.
   */
@Before
   public static void getAuthtoken() throws JSONException {
        JSONObject jsonObj = new JSONObject();
        jsonObj.put("username",username);
        jsonObj.put("password",password);
        Response Response = authenticationEndpoint.authToken(jsonObj.toString());
        authToken = Response.jsonPath().get("token");
    }

}
