package cricoin.es.controlador.entity;

import javax.persistence.*;

@Entity
@Table(name = "wallet")
public class Wallet {

	public Wallet(int id_coin, int id_user, int total_coin) {

		this.id_coin = id_coin;
		this.id_user = id_user;
		this.total_coin = total_coin;
	}

	public Wallet() {

	}

	public int getId_wallet() {
		return id_wallet;
	}

	public void setId_wallet(int id_wallet) {
		this.id_wallet = id_wallet;
	}

	public int getId_coin() {
		return id_coin;
	}

	public void setId_coin(int id_coin) {
		this.id_coin = id_coin;
	}

	public int getId_user() {
		return id_user;
	}

	public void setId_user(int id_user) {
		this.id_user = id_user;
	}

	public int getTotal_coin() {
		return total_coin;
	}

	public void setTotal_coin(int total_coin) {
		this.total_coin = total_coin;
	}

	@Override
	public String toString() {
		return "Wallet [id_wallet=" + id_wallet + ", id_coin=" + id_coin + ", id_user=" + id_user + ", total_coin="
				+ total_coin + "]";
	}

	@Id
	@Column(name = "id_wallet")
	private int id_wallet;

	@Column(name = "id_coin")
	private int id_coin;

	@Column(name = "id_user")
	private int id_user;

	@Column(name = "total_coin")
	private int total_coin;

}
