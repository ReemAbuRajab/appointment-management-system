package hospital;

public class User {

	private boolean status;
	private String name;
	private String password;
	private String type;

	public User(String name, String password, String type) {
		this.name=name;
		this.password=password;
		this.type=type;
	}
	

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}
	public boolean CheckName(String name) {
		if(this.name==name) {
			return true;
		}
		return false;
	}
	public boolean CheckPassword(String pass) {
		if(this.password==pass) {
			return true;
		}
		return false;
	}
	public boolean CheckType(String type) {
		if(this.type==type) {
			return true;
		}
		return false;
	}
	
	
}
