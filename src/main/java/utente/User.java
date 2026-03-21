package utente;

public class User {

	//Variabili
	private String nome, cognome, email, password;
	private boolean isAdmin = false;
	
	//Costruttore
	public User(String nome, String cognome, String email,String password, boolean isAdmin ) {
	this.nome = nome;
	this.cognome = cognome;
	this.email = email;
	this.isAdmin = isAdmin;
	}
	
	public User(){}
	
	//Metodi get
	public String getNome() {
		return nome;
	}
	
	public String getCognome() {
		return cognome;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getPassword() {
		return password;
	}
	
	public boolean isAdmin() {
		return isAdmin;
	}

	//Metodi set
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public void setCognome(String cognome) {
		this.cognome = cognome;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
}
