
package controlador;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class SessionServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            request.getSession().removeAttribute("ligaPreActualizacion");
            request.getSession().removeAttribute("ligas");
            request.getSession().removeAttribute("ligasActivas");
            request.getSession().removeAttribute("listaEquipo");
            request.getSession().removeAttribute("equipoPreActualizacion");
            request.getSession().removeAttribute("listaEquipo");
            request.getSession().removeAttribute("equiposActivos");
            request.getSession().removeAttribute("jugadores");
            request.getSession().removeAttribute("equipoO");
            request.getSession().removeAttribute("equipos");

            
            String uri = request.getRequestURI();
        String path = request.getContextPath();
        
        if (uri.startsWith(path + "/equipo/agregar-jugador")) {
            response.sendRedirect("equipo/agregar-jugador.jsp");
        }else{
            response.sendRedirect("administrador/index.jsp");
        }
            
            
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
