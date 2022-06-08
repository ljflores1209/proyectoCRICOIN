package cricoin.es.dao;

import javax.validation.Valid;

import cricoin.es.controlador.entity.User;

public interface UserDAO {

	public void insertaUsuario(User elUsuario);

	public User getUsuario( int id);

	public void verificaEmail(String email);

	public Boolean comprobarSiExisteEmail(String email);

	

	
	

}
