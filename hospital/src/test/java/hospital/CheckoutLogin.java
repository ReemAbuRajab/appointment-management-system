package hospital;

import static org.junit.Assert.assertTrue;
import java.util.List;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.*;

public class CheckoutLogin {
	public List<List<String>> database;
	public static String username, password,type;
	public boolean status;
	public User u;
	public Hospital h;

	public CheckoutLogin(User u, Hospital h) {
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
		this.username = username;
		u.setName(username);

	}

	@When("user enters {string} in password field")
	public void user_enters_in_password_field(String password) {
		this.password = password;
		u.setPassword(password);
	}

	@When("user enters {string} in type field")
	public void user_enters_in_type_field(String type) {
		this.type = type;
		u.setType(type);

	}

	@When("user click log in button")
	public void user_click_log_in_button() {
    h.checklogin(this.username, this.password, this.type);
	status=h.isStatus();

	}

	@Then("user should see My Account")
	public void user_should_see_my_account() {
		assertTrue(status==true);

	}

	@Then("user stays at login page")
	public void user_stays_at_login_page() {
		assertTrue(status==false);
	}

}
