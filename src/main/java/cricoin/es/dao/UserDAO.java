package cricoin.es.dao;

import java.util.List;

import javax.validation.Valid;

import cricoin.es.controlador.entity.User;

public interface UserDAO {

	public void insertaUsuario(User elUsuario);

	public User getUsuario( int id);

	public void verificaEmail(String email);

	public User getUserByEmail(String email);

	public int getUserIdByMail(String email);

	public User UserById(int id);

	

	
	

}
