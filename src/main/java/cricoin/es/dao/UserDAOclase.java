package cricoin.es.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import cricoin.es.controlador.entity.User;

@Repository
public class UserDAOclase implements UserDAO {

	@Autowired // Para tirar de sessionFactory
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public void insertaUsuario(User elUsuario) {
		// TODO Auto-generated method stub

		// Obtener la session

		Session miSession = sessionFactory.getCurrentSession();

		// Insertar usuario

		miSession.saveOrUpdate(elUsuario);
		// En caso de usuario nuevo, lo insertara, y en caso de usuario existente, lo
		// modificara.
		// miSession.saveOrUpdate(elUsuario);

	}

	@Override
	@Transactional
	public User getUsuario(int id) {

		// Obtener la session

		Session miSession = sessionFactory.getCurrentSession();

		// Obtener el usuario

		User elUsuario = miSession.get(User.class, id);

		return elUsuario;
	}

	@Override
	public void verificaEmail(String email) {
		// TODO Auto-generated method stub

	}

	@Override
	@Transactional
	public Boolean comprobarSiExisteEmail(String email) {

		// Obtener la session

		Session miSession = sessionFactory.getCurrentSession();

		// Creo la consulta

		Query consulta = miSession.createQuery("Select from User where email=:emailBuscado");

		consulta.setParameter("emailBuscado", email);

		return true;
	}

}
