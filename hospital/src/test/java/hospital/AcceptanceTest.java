package hospital;
import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.CucumberOptions.SnippetType;

@RunWith(Cucumber.class)

@CucumberOptions(
		tags= "RegressionTesting",
		features = "use_cases",
		plugin = {"html: target/cucmber.html"},
		monochrome = true,
		snippets = SnippetType.CAMELCASE,
		glue = {"facebook"})

public class AcceptanceTest {

}
