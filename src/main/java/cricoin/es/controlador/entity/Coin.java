package cricoin.es.controlador.entity;

import javax.persistence.*;

@Entity
@Table(name = "coin")
public class Coin {

	public Coin(String name, String siglas, double price) {
		super();
		this.name = name;
		this.siglas = siglas;
		this.price = price;
	}

	public Coin() {

	}

	public int getId_coin() {
		return id_coin;
	}

	public void setId_coin(int id_coin) {
		this.id_coin = id_coin;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSiglas() {
		return siglas;
	}

	public void setSiglas(String siglas) {
		this.siglas = siglas;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Id
	@Column(name="id_coin")
	private int id_coin;
	
	@Column(name="name")
	private String name;
	
	@Column(name="siglas")
	private String siglas;
	
	@Column(name="price")
	private double price;

}
