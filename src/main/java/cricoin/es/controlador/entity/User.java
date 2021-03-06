package cricoin.es.controlador.entity;

import java.util.Date;
import java.util.GregorianCalendar;

import javax.persistence.*;
import javax.validation.constraints.*;

@Entity
@Table(name = "user")
public class User {

	public User(String nick, String first_name, String last_name, Date b_date, String country,
			String email, String pass, String pass1, double capital) {

		this.nick = nick;
		this.first_name = first_name;
		this.last_name = last_name;
		this.b_date = b_date;
		this.country = country;
		this.email = email;
		this.pass = pass;
		this.pass1 = pass1;
		this.capital = capital;
	}

	public User(String nick, String first_name, String last_name, String country, String email, String pass,
			double capital) {

		this.nick = nick;
		this.first_name = first_name;
		this.last_name = last_name;
		this.country = country;
		this.email = email;
		this.pass = pass;
		this.capital = capital;
	}

	public User(String email, String pass, String pass1) {

		this.email = email;
		this.pass = pass;
		this.pass1 = pass1;
	}

	public User() {

	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public String getNick() {
		return nick;
	}

	public void setNick(String nick) {
		this.nick = nick;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public Date getB_date() {
		return b_date;
	}

	public void setB_date(Date b_date) {
		this.b_date = b_date;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getPass1() {
		return pass1;
	}

	public void setPass1(String pass1) {
		this.pass1 = pass1;
	}

	public double getCapital() {
		return capital;
	}

	public void setCapital(double capital) {
		this.capital = capital;
	}

	@Override
	public String toString() {
		return "User [id_user=" + id_user + ", nick=" + nick + ", first_name=" + first_name + ", last_name=" + last_name
				+ ", b_date=" + b_date + ", country=" + country + ", email=" + email + ", pass=" + pass + ", capital="
				+ capital + "]";
	}

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_user")
	private int id_user;

	@NotNull
	@Size(min = 2, message = "Que mierda de nick")
	@Column(name = "nick")
	private String nick;

	@NotNull
	@Size(min = 2, message = "Campo requerido")
	@Column(name = "first_name")
	private String first_name;

	@NotNull
	@Size(min = 2, message = "Campo requerido")
	@Column(name = "last_name")
	private String last_name;

	@NotNull
	@Column(name = "b_date")
	private Date b_date;

	@NotNull
	@Size(min = 2, message = "Campo requerido")
	@Column(name = "country")
	private String country;

	@Email
	@NotNull
	@Size(min = 2, message = "Campo requerido")
	@Column(name = "email")
	private String email;

	@NotNull
	@Size(min = 2, message = "Campo requerido")
	@Column(name = "pass")
	private String pass;

	
	@Column(name = "pass1")
	private String pass1;

	@Column(name = "capital")
	private double capital;

}
