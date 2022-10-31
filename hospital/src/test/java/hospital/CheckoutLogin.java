package hospital;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.assertTrue;
import hospital.User;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.*;

public class CheckoutLogin {
	public static String username, password, type;
	public static boolean status;
	public static User u ;
	public Hospital h = new Hospital();
	public static ArrayList<User> database = new ArrayList<User>();

	@Given("the user on the login page")
	public void theUserOnTheLoginPage() {
	}
	@When("the user enter one of the following details")
	public void the_user_enter_one_of_the_following_details(DataTable database) {
		List<List<String>> r = database.asLists(String.class);
	
		
		for (int i = 0; i < r.size(); i++) {
			User add = new User(r.get(i).get(0), r.get(i).get(1), r.get(i).get(2));
			CheckoutLogin.database.add(add);
		}
		
	}



	@Given("user enters {string} in username field and {string} in password field and {string} in type field")
	public void user_enters_in_username_field_and_in_password_field_and_in_type_field(String username, String password, String type) {
		this.username = username;
		this.password = password;
		this.type = type;
		for (int i = 0; i < database.size(); i++) {

			if (database.get(i).CheckName(this.username) && database.get(i).CheckPassword(this.password)
					&& database.get(i).CheckType(this.type)) {
				this.username = username;
				this.password = password;
				this.type = type;
				u = database.get(i);
				status=true;
				
			}
			else
			status=false;
		}
		
	}

	@When("user click log in button")
	public void user_click_log_in_button() {
		h.loginUser(this.status);
	}

	@Then("user should see My Account")
	public void user_should_see_my_account() {
		assertTrue(h.loginUser(CheckoutLogin.status)== true);

	}

	@Then("user stays at login page")
	public void user_stays_at_login_page() {
		assertTrue(h.loginUser(CheckoutLogin.status)==false);
	}

}
