
  package hospital;
 

import static org.junit.Assert.assertTrue;


import java.util.List;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.*;
//will be edited later 

public class checkout_login {
	public List<List<String>> database;
	public static String username, password, type;
	public User u;
	public static boolean flag;
	public Hospital h;

	public checkout_login(Hospital h, User u) {
		this.u = u;
		this.h = h;

	}

	@Given("the user on the login page")
	public void theUserOnTheLoginPage() {
	}

	@Given("this is the data table to this management system")
	public void thisIsTheDataTableToThisManagementSystem(DataTable database) {
		this.database = database.asLists(String.class); 
	
	}
	@When("user enters {string} in username field")
	public void user_enters_in_username_field(String username) {
	
	}

	@When("user enters {string} in password field")
	public void user_enters_in_password_field(String password) {

	}
	@When("user click {string} button")
	public void userClickButton(String login) {

	}

	@Then("user should see {string}")
	public void userShouldSee(String Myaccount) {

	}

	@Then("error message displayed with wrong password")
	public void errorMessageDisplayedWithWrongPassword() {

	}

	@Then("user returns back on login page")
	public void user_returns_back_on_login_page() {
		
	}
	



}
