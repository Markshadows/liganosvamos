package controlador;

import modelo.dao.UsuarioFacade;
import modelo.dto.Usuario;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class ServletUsuario extends HttpServlet {

    @EJB
    private UsuarioFacade usuarioFacade;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String operacion = request.getParameter("op");
        if ("logout".equals(operacion)) {
            request.getSession().invalidate();
        }
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("txtNombre");
        String password = request.getParameter("txtPassword");
        Usuario login = usuarioFacade.existeUsuario(nombre, password);
        List<String> errores = new ArrayList<>();
        List<String> mensajes = new ArrayList<>();
        String error = "";
        String mensaje = "";

        if (login == null) {
            error = "Usuario y/o contraseña inválidos o cuenta inactiva";
            errores.add(error);
        }

        if (errores.size() > 0) {
            request.setAttribute("errores", errores);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {

            if (login.getEstado().equals("Activo")) {
                HttpSession session = request.getSession();
                mensaje = "Iniciando sesión...";
                session.setAttribute("usuario", login);
                session.setAttribute("id", login.getTipo().getId());
                session.setAttribute("nombre", login.getNombre());
                session.setAttribute("mensajes", mensaje);
                if (login.getTipo().getId() == 1) {
                    response.sendRedirect("superusuario/index.jsp");
                    return;
                } else if (login.getTipo().getId() == 2) {
                    response.sendRedirect("administrador/index.jsp");
                    return;
                } else if (login.getTipo().getId() == 3) {
                    response.sendRedirect("equipo/index.jsp");
                    return;
                }

            }

        }

    }

}
