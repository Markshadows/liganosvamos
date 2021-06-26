package controlador;

import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.dao.AdministradorFacade;
import modelo.dao.UsuarioFacade;
import modelo.dto.Administrador;
import modelo.dto.Tipo;
import modelo.dto.Usuario;

public class ServletSuperUsuario extends HttpServlet {

    @EJB
    private UsuarioFacade usuarioFacade;

    @EJB
    private AdministradorFacade administradorFacade;

    private Administrador admin = null;
    private Usuario usu = null;
    private Usuario usu1 = null;

    public final String JSP_AGREGAR_ADMIN = "/superusuario/agregar.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String opcion = request.getParameter("btnAccion");
        opcion = opcion != null ? opcion : "";
        switch (opcion) {
            case "Agregar":
                agregarAdministrador(request, response);
                break;
            case "Modificar":
                modificarAdministrador(request, response);
                break;
            case "Eliminar":
                eliminarAdministrador(request, response);
                break;
            case "Buscar":
                buscarAdministrador(request, response);
                break;
            default:
                listarAdministradores(request, response);
                break;

        }
    }

    private void agregarAdministrador(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        try {

            String nombre = request.getParameter("txtNombre").trim();
            String correo = request.getParameter("txtCorreo").trim();
            String contrasena = request.getParameter("txtContrasena");
            String nombreUsuario = request.getParameter("txtNombreU");

            //if (nombre.matches("[a-zA-Z]")) {

                Tipo tipo = new Tipo(2);
                usu = new Usuario(null, nombreUsuario, contrasena, "Activo", tipo);
                usuarioFacade.create(usu);
                usu1 = usuarioFacade.find(usu.getId());

                admin = new Administrador(null, nombre, correo, usu1);
                administradorFacade.create(admin);

                if (admin != null) {
                    request.getSession().setAttribute("mensajeCorrecto", "Agregado Correctamente");
                    request.getSession().setAttribute("administrador", admin);
                } else {
                    request.getSession().setAttribute("mensajeError", "No se creó el administrador");
                }
            /*} else {
                request.getSession().setAttribute("mensajeError", "Su nombre solo debe contener caracteres");
            }*/

        } catch (Exception ex) {
            request.getSession().setAttribute("mensajeError", ex.getMessage());
        } finally {
            response.sendRedirect("superusuario/agregar.jsp");
        }
    }

    private void buscarAdministrador(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("cboAdministradores"));

        if (id != 0) {
            admin = administradorFacade.find(id);
            request.getSession().setAttribute("preActualizacion", admin);
            response.sendRedirect("superusuario/modificar.jsp");
        } else {
            request.getSession().setAttribute("mensajeError", "¡¡ Seleccione Un Administrador !!");
            response.sendRedirect("superusuario/modificar.jsp");
        }

    }

    private void modificarAdministrador(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String nombre = request.getParameter("txtNombreM").trim();
        String correo = request.getParameter("txtCorreoM").trim();
        String estado = request.getParameter("cboEstado");
        admin = (Administrador) request.getSession().getAttribute("preActualizacion");
        if (admin != null) {

            usu = usuarioFacade.find(admin.getUsuario().getId());
            usu.setEstado(estado);
            usuarioFacade.edit(usu);
            System.out.println("usaaaaaaaaaaaaaaaa" + usu.getNombre());
//        System.out.println(nombre);
//        if (nombre.matches("[a-zA-Z]+")) {
            admin.setId(admin.getId());

            if (nombre.isEmpty() == false) {
                if (correo.isEmpty() == false) {
                    admin.setNombreApellido(nombre);
                    admin.setCorreo(correo);
                    admin.setUsuario(usu);
                    administradorFacade.edit(admin);
                } else {
                    admin.setNombreApellido(nombre);
                    admin.setUsuario(usu);
                    administradorFacade.edit(admin);
                }
            } else {
                admin.setCorreo(correo);
                admin.setUsuario(usu);
                administradorFacade.edit(admin);
            }
            request.getSession().setAttribute("mensajeCorrecto", "Administrador Modificado");
            response.sendRedirect("superusuario/modificar.jsp");
        } else {
            request.getSession().setAttribute("mensajeError", "¡¡ Seleccione un administrador !!");
            response.sendRedirect("superusuario/modificar.jsp");
        }
//        } else {
//            request.getSession().setAttribute("mensajeError", "Su nombre solo debe contener caracteres");
//            response.sendRedirect("superusuario/modificar.jsp");
//        }
    }

    private void listarAdministradores(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String uri = request.getRequestURI();
        String path = request.getContextPath();

        List<Administrador> administradores = administradorFacade.findAll();
        List<Administrador> administradoresActivos = administradorFacade.administradoresActivos();

        if (uri.startsWith(path + "/superusuario/listar") || uri.startsWith(path + "/superusuario/modificar")) {
            if (administradores.isEmpty() == false) {
                request.getSession().setAttribute("administradores", administradores);
            } else {
                request.getSession().setAttribute("mensajeError", "No Existen Administradores Registrados");
            }
        } else if (uri.startsWith(path + "/superusuario/eliminar")) {
            if (administradoresActivos.isEmpty() == false) {
                request.getSession().setAttribute("administradoresActivos", administradoresActivos);
            } else {
                request.getSession().setAttribute("mensajeError", "No Existen Administradores Activos");
            }
        }

    }

    private void eliminarAdministrador(HttpServletRequest request, HttpServletResponse response) throws IOException {

        int id = Integer.parseInt(request.getParameter("cboAdministradores"));
        admin = administradorFacade.find(id);
        usu = usuarioFacade.find(admin.getUsuario().getId());

        if (usu != null) {
            usu.setEstado("Inactivo");
            usuarioFacade.edit(usu);
            request.getSession().setAttribute("mensajeCorrecto", "Administrador Dado De Baja");
            response.sendRedirect("superusuario/eliminar.jsp");
        } else {
            request.getSession().setAttribute("mensajeError", "No Existe El Administrador");
            response.sendRedirect("superusuario/eliminar.jsp");
        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
