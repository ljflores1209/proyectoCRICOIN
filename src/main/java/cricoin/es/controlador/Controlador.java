package cricoin.es.controlador;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.*;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.context.annotation.Scope;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.context.request.WebRequest;

import cricoin.es.controlador.entity.User;
import cricoin.es.dao.UserDAO;

@Controller
@Scope("session")
//@RequestMapping("/user")
public class Controlador {

	// Ir a pagina index.

	@RequestMapping("/inicio")
	public String inicio() {

		return "inicio";
	}

	@RequestMapping("/formularioRegistro")
	public String ListaUser(Model elModelo) {

		// bind datos cliente

		User elUsusario = new User();

		elModelo.addAttribute("user", elUsusario);

		return "register";
	}

	@PostMapping("/muestraFormularioRegister")
	public String editProfile(@ModelAttribute("user") User elUsuario, Model modelo) {

		if (elUsuario.getPass() == "" || elUsuario.getPass1() == "" || elUsuario.getEmail() == ""
				|| elUsuario.getPass() == null || elUsuario.getPass1() == null || elUsuario.getEmail() == null) {

			System.out.println("estoy aqui");
			modelo.addAttribute("mensaje", "Debes rellenar todos los campos");

			return "register";
		} else if (!(elUsuario.getPass().equals(elUsuario.getPass1()))) {

			modelo.addAttribute("mensaje", "Las contraseñas no coinciden");

			return "register";

		} else {

			System.out.println("NO Hay error");
			elUsuario.setCapital(3000);
			// userDAO.insertaUsuario(elUsuario);

			return "editProfile";
		}
	}

	@PostMapping("/insertarUsuario")

	public String insertarUsuario(@Valid @ModelAttribute("user") User elUsuario, BindingResult resultadoValidacion,
			HttpServletRequest request, Model modelo) {

		System.out.println(elUsuario.getCapital());
		System.out.println(elUsuario.getFirst_name());
		System.out.println(elUsuario.getB_date());
		System.out.println(resultadoValidacion);
		if (resultadoValidacion.hasErrors()) {

			return "editProfile";
		} else {

			System.out.println("Antes de guardar usuario");

			userDAO.insertaUsuario(elUsuario);
			System.out.println("Despues de guardar usuario");
			//modelo.addAttribute("user", elUsuario);
			// settear la variable de session User
			request.getSession().setAttribute("elUsuario", elUsuario);

			return "market";
		}
	}

	@GetMapping("/editProfile")
	public String actualizaUsuario(@RequestParam("userId") int Id, Model modelo, HttpServletRequest request) {

		System.out.println(Id);
		// Obtengo el User
		User elUsuario = userDAO.getUsuario(Id);
		System.out.println(elUsuario);
		// lo agrego al modelo
		modelo.addAttribute("user", elUsuario);
		request.getSession().setAttribute("elUsuario", elUsuario);

		return "editProfile";
	}

	@GetMapping("/login")
	public String login(@ModelAttribute("user") User elUsuario) {

		System.out.println("Vamos para pagina login");
		System.out.println(elUsuario);

		// session.setAttribute("user", elUsuario);

		return "login";
	}

	@PostMapping("/verificaLogin")
	public String loginCorrecto(@ModelAttribute("user") User user, Model modelo,HttpServletRequest request) {
		Boolean valido = true;
		String errorLOG = null;
		

		if (user.getEmail().equals("") || user.getPass().equals("")) {

			errorLOG = "Debe rellenar todos los campos";
			valido = false;
		}
		if (valido) {
			User usuarioLOG = userDAO.getUserByEmail(user.getEmail());
			System.out.println("El usuario logueado es "+usuarioLOG.toString());
			if (usuarioLOG != null) {
				if (user.getPass().equals(usuarioLOG.getPass())) {
					//modelo.addAttribute("user", usuarioLOG);
					request.getSession().setAttribute("elUsuario", usuarioLOG);
					return "market";
				} else {
					modelo.addAttribute("mensaje", "Contraseña incorrecta");
					return "login";
				}

			}

		}

		modelo.addAttribute("mensaje",errorLOG);
		return "login";
		// System.out.println(user.getPass());
		// int userId = userDAO.getUserIdByMail(user.getEmail());
		// User usuarioLOG = userDAO.UserById(userId);

		// System.out.println(userId);
		// System.out.println(usuarioLOG);

	}

	@GetMapping("/cerrarSesion")
	public String loginCorrecto() {

		System.out.println("Destruyo variable de sesion");
		//session.invalidate();// manera correcta de cerrar la session destruyendola-Mio

		return "inicio";
	}

	protected void initBinder(WebDataBinder binder, WebRequest request) {

		// String aaa = request.getParameter("b_date");
		// System.out.println(aaa);
		System.out.println("pasé por InitBinder");

		StringTrimmerEditor recortarEspaciosBlanco = new StringTrimmerEditor(true);
		binder.registerCustomEditor(String.class, recortarEspaciosBlanco);

		SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY-MM-DD");
		// El parámetro true significa que la fecha puede estar vacía (nula, "")
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));

	}

	@Autowired
	private UserDAO userDAO;

	// @Autowired
	//private HttpSession session;
}
