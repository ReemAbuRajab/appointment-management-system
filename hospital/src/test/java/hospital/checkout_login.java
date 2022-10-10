package hospital;
 
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.*;
//will be edited later 

public class checkout_login {


	@Given("the user on the login page")
	public void theUserOnTheLoginPage() {

	}
	@Given("this is the data table to this management system")
	public void thisIsTheDataTableToThisManagementSystem(DataTable database) {
		List<Map<String,String>> userMap= database.asMaps(String.class,String.class);

	}

	@When("user enters <username> with <password>")
	public void userEntersUsernameWithPassword() {
	    
	}


	@When("user click {string} button")
	public void userClickButton(String login) {

	}
	@Then("user should see {string}")
	public void userShouldSee(String state) {
	
	}


	@Then("error message displayed with wrong password")
	public void errorMessageDisplayedWithWrongPassword() {
	   
	}
	@Then("user returns back on login page")
	public void userReturnsBackOnLoginPage() {
	
	}











}
