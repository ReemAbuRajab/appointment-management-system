package hospital;

import java.util.List;
import java.util.Map;
import java.util.Scanner;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.*;
//will be edited later 

public class checkout_login {
	

	@Given("user on the Login Page")
	public void userOnTheLoginPage() {
		System.out.print("user navigates on registeration page");
	}
	@When("user enters one of the following user detailes")
	public void userEntersOneOfTheFollowingUserDetailes(DataTable dataTable) {
		int registered=0;
		System.out.print("enter username");
		Scanner s=new Scanner(System.in);
		System.out.print("enter password");
	    s=new Scanner(System.in);
		List<Map<String,String>> userMap= dataTable.asMaps(String.class,String.class);
		if(userMap.equals(s)) {
			 registered=1;
		}

	}
	@When("user click on login button")
	public void userClickOnLoginButton() {
	   
	}
	
	@Then("user should see {string} page")
	public void userShouldSeePage(String homepage) {
	    System.out.print(homepage);
	}
	@Given("user enters registered {string}")
	public void userEntersRegistered(String username ) {
	    
	}
	
	@Given("user enters unregistered {string}")
	public void userEntersUnregistered(String string) {
	
	}
	@Then("user should see error message")
	public void userShouldSeeErrorMessage() {
	System.out.print("Error operation");
	}












}
