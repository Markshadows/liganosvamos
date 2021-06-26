package controlador;

import java.io.File;
import java.io.IOException;
import static java.lang.System.out;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.dao.CuartosFacade;
import modelo.dao.EquipoFacade;
import modelo.dao.FinalFacade;
import modelo.dao.JugadorFacade;
import modelo.dao.LigaFacade;
import modelo.dao.OctavosFacade;
import modelo.dao.SemifinalFacade;
import modelo.dao.UsuarioFacade;
import modelo.dto.Cuartos;
import modelo.dto.Equipo;
import modelo.dto.Final;
import modelo.dto.Jugador;
import modelo.dto.Liga;
import modelo.dto.Octavos;
import modelo.dto.Semifinal;
import modelo.dto.Tipo;
import modelo.dto.Usuario;

public class ServletAdministrador extends HttpServlet {

    @EJB
    private OctavosFacade octavosFacade;

    @EJB
    private FinalFacade finalFacade;

    @EJB
    private SemifinalFacade semifinalFacade;

    @EJB
    private CuartosFacade cuartosFacade;

    @EJB
    private JugadorFacade jugadorFacade;

    @EJB
    private EquipoFacade equipoFacade;

    @EJB
    private UsuarioFacade usuarioFacade;

    @EJB
    private LigaFacade ligaFacade;

    Date fechaInicio, fechaTermino;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ParseException {
        String opcion = request.getParameter("btnAccion");
        opcion = opcion != null ? opcion : "";
        switch (opcion) {
            case "Agregar":
                agregarLiga(request, response);
                break;
            case "AgregarJugador":
                agregarJugador(request, response);
                break;
            case "AgregarJugador2":
                agregarJugador2(request, response);
                break;
            case "AgregarEquipo":
                agregarEquipo(request, response);
                break;
            case "Modificar":
                modificarLiga(request, response);
                break;
            case "ModificarEquipo":
                modificarEquipo(request, response);
                break;
            case "Eliminar":
                eliminarLiga(request, response);
                break;
            case "EliminarEquipo":
                eliminarEquipo(request, response);
                break;
            case "Buscar":
                buscarLiga(request, response);
                break;
            case "BuscarEquipo":
                buscarEquipo(request, response);
                break;
            case "BuscarJugadores":
                buscarJugadores(request, response);
                break;
            case "BuscarEquipos":
                buscarEquipos(request, response);
                break;
            case "AgregarCuartos":
                cuartos(request, response);
                break;
            case "AgregarSemifinal":
                semifinal(request, response);
                break;
            case "AgregarFinal":
                finall(request, response);
                break;
            default:
                listar(request, response);
                break;

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(ServletAdministrador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(ServletAdministrador.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void agregarLiga(HttpServletRequest request, HttpServletResponse response) throws ParseException, IOException {
        String juego = request.getParameter("juegos");
        String nombre = request.getParameter("txtNombre");
        String fechaParseI = request.getParameter("txtFechaI");
        String fechaParseF = request.getParameter("txtFechaF");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
        fechaInicio = sdf.parse(fechaParseI);
        fechaTermino = sdf.parse(fechaParseF);

        Liga liga = new Liga(null, nombre, juego, fechaInicio, fechaTermino, "Activo");

        ligaFacade.create(liga);

        if (ligaFacade.find(liga.getId()) != null) {
            request.getSession().setAttribute("mensajeCorrecto", "¡¡ Liga Creada !!");
            response.sendRedirect("administrador/liga/agregar.jsp");
        } else {
            request.getSession().setAttribute("mensajeError", "¡¡ Liga No Creada");
            response.sendRedirect("administrador/liga/agregar.jsp");
        }
    }

    private void modificarLiga(HttpServletRequest request, HttpServletResponse response) throws ParseException, IOException {
        String nombre = request.getParameter("txtNombre");
        String juego = request.getParameter("cboJuego");
        String fechaParseI = request.getParameter("txtFechaI");
        String fechaParseF = request.getParameter("txtFechaF");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
        if (fechaParseI.isEmpty() == false) {
            fechaInicio = sdf.parse(fechaParseI);
        }
        if (fechaParseF.isEmpty() == false) {
            fechaTermino = sdf.parse(fechaParseF);
        }
        String estado = request.getParameter("cboEstado");
        Liga liga = (Liga) request.getSession().getAttribute("ligaPreActualizacion");
        if (liga != null) {

            if (nombre.isEmpty() == false && juego.equals("Seleccionar") == false && fechaParseI.isEmpty() == false
                    && fechaParseF.isEmpty() == false && estado.equals("Seleccionar") == false) {
                liga.setNombre(nombre);
                liga.setJuego(juego);
                liga.setFInicio(fechaInicio);
                liga.setFFin(fechaTermino);
                liga.setEstado(estado);
                ligaFacade.edit(liga);
            } else if (juego.equals("Seleccionar") == false && fechaParseI.isEmpty() == false
                    && fechaParseF.isEmpty() == false && estado.equals("Seleccionar") == false) {
                liga.setJuego(juego);
                liga.setFInicio(fechaInicio);
                liga.setFFin(fechaTermino);
                liga.setEstado(estado);
                ligaFacade.edit(liga);
            } else if (fechaParseI.isEmpty() == false && fechaParseF.isEmpty() == false && estado.equals("Seleccionar") == false) {
                liga.setFInicio(fechaInicio);
                liga.setFFin(fechaTermino);
                liga.setEstado(estado);
                ligaFacade.edit(liga);
            } else if (fechaParseF.isEmpty() == false && estado.equals("Seleccionar") == false) {
                liga.setFFin(fechaTermino);
                liga.setEstado(estado);
                ligaFacade.edit(liga);
            } else if (estado.equals("Seleccionar") == false) {
                liga.setEstado(estado);
                ligaFacade.edit(liga);
            } else if (nombre.isEmpty() == false) {
                liga.setNombre(nombre);
                ligaFacade.edit(liga);
            } else if (juego.equals("Seleccionar") == false) {
                liga.setJuego(juego);
                ligaFacade.edit(liga);
            } else if (fechaParseI.isEmpty() == false) {
                liga.setFInicio(fechaInicio);
                ligaFacade.edit(liga);
            } else if (fechaParseF.isEmpty() == false) {
                liga.setFFin(fechaTermino);
                ligaFacade.edit(liga);
            }
            request.getSession().setAttribute("mensajeCorrecto", "¡¡ Liga Modificada !!");
            response.sendRedirect("administrador/liga/modificar.jsp");
        } else {
            request.getSession().setAttribute("mensajeError", "¡¡ Seleccione una liga !!");
            response.sendRedirect("administrador/liga/modificar.jsp");
        }

    }

    private void eliminarLiga(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int ligaId = Integer.parseInt(request.getParameter("ligascbo"));

        Liga liga = ligaFacade.find(ligaId);
        liga.setEstado("Inactivo");

        ligaFacade.edit(liga);

        if (liga != null) {
            request.getSession().setAttribute("mensajeCorrecto", "¡¡ Liga Dada De Baja !!");
            response.sendRedirect("administrador/liga/eliminar.jsp");
        } else {
            request.getSession().setAttribute("mensajeError", "¡¡ Liga No Dada De Baja");
            response.sendRedirect("administrador/liga/eliminar.jsp");
        }
    }

    private void buscarLiga(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("cboLigas"));

        if (id != 0) {
            Liga liga = ligaFacade.find(id);
            request.getSession().setAttribute("ligaPreActualizacion", liga);
            response.sendRedirect("administrador/liga/modificar.jsp");
        } else {
            request.getSession().setAttribute("mensajeError", "¡¡ Seleccione Una Liga !!");
            response.sendRedirect("administrador/liga/modificar.jsp");
        }
    }

    private void listar(HttpServletRequest request, HttpServletResponse response) {
        String uri = request.getRequestURI();
        String path = request.getContextPath();

        List<Liga> ligas = ligaFacade.findAll();
        List<Liga> ligasActivas = ligaFacade.ligasActivas();

        List<Equipo> equipos = equipoFacade.findAll();
        List<Equipo> equiposActivos = equipoFacade.equiposActivos();
        Equipo miEquipo = null;
        Usuario u = (Usuario) request.getSession().getAttribute("usuario");

        if (u != null) {

            miEquipo = equipoFacade.miEquipo(u.getId());
        }

        if (uri.startsWith(path + "/administrador/liga/listar") || uri.startsWith(path + "/administrador/liga/modificar")) {
            if (ligas.isEmpty() == false) {
                request.getSession().setAttribute("ligas", ligas);
            } else {
                request.getSession().setAttribute("mensajeError", "No Existen Ligas Registrados");
            }
        } else if (uri.startsWith(path + "/administrador/liga/eliminar") || uri.startsWith(path + "/equipo/formulario")
                || uri.startsWith(path + "/administrador/competicion/crear-llaves")) {
            if (ligasActivas.isEmpty() == false) {
                request.getSession().setAttribute("ligasActivas", ligasActivas);
            } else {
                request.getSession().setAttribute("mensajeError", "No Existen Ligas Activas");
            }
        } else if (uri.startsWith(path + "/equipo/detalle-equipo") || uri.startsWith(path + "/equipo/modificar")
                || uri.startsWith(path + "/equipo/agregar-jugador")) {
            if (equipos.isEmpty() == false) {
                request.getSession().setAttribute("listaEquipo", equipos);
                request.getSession().setAttribute("miEquipo", miEquipo);
            } else {
                request.getSession().setAttribute("mensajeError", "No Existen Equipos");
            }
        } else if (uri.startsWith(path + "/equipo/eliminar")) {
            if (equipos.isEmpty() == false) {
                request.getSession().setAttribute("equiposActivos", equiposActivos);
            } else {
                request.getSession().setAttribute("mensajeError", "No Existen Equipos Activos");
            }
        }
    }

    private void agregarEquipo(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Integer liga = Integer.parseInt(request.getParameter("ligascbo"));
        String nombre = request.getParameter("txtNombre");
        String correo = request.getParameter("txtCorreo");
        String rondaActual = "Octavos de final";

        String contrasena = request.getParameter("txtContrasena");
        String estado = "Activo";

//        try {
//            String ImageFile = "";
//            String itemName = "";
//            boolean isMultipart = ServletFileUpload.isMultipartContent(request);
//            if (!isMultipart) {
//            } else {
//                FileItemFactory factory = new DiskFileItemFactory();
//                ServletFileUpload upload = new ServletFileUpload(factory);
//                List items = null;
//                try {
//                    items = upload.parseRequest(request);
//                } catch (FileUploadException e) {
//                    e.getMessage();
//                }
//
//                Iterator itr = items.iterator();
//                while (itr.hasNext()) {
//                    FileItem item = (FileItem) itr.next();
//                    if (item.isFormField()) {
//                        String name = item.getFieldName();
//                        String value = item.getString();
//                        if (name.equals("ImageFile")) {
//                            ImageFile = value;
//                        }
//
//                    } else {
//                        try {
//                            itemName = item.getName();
//                            File savedFile = new File(getServletContext().getRealPath("/") + "web\\img\\" + itemName);
//                            item.write(savedFile);
//                        } catch (Exception e) {
//                            out.println("Error" + e.getMessage());
//                        }
//                    }
//                }
//            }
//        } catch (Exception e) {
//            System.out.println("ERRRRRRRRRRRRROR"+e.getMessage());
//        }
        Tipo tipo = new Tipo(3);
        Usuario usuario = new Usuario(null, nombre, contrasena, estado, tipo);

        usuarioFacade.create(usuario);

        Liga l = ligaFacade.find(liga);

        Equipo equipo = new Equipo(null, nombre, correo, rondaActual, l, usuario, "22.png");

        equipoFacade.create(equipo);

        Octavos o = octavosFacade.find(1);
        o.setGanador(equipo);
        octavosFacade.edit(o);

        if (equipo != null) {
            request.getSession().setAttribute("mensajeCorrecto", "Equipo Agregado");
            //request.getSession().setAttribute("equipo",equipo);
            response.sendRedirect("equipo/formulario.jsp");
        } else {
            request.getSession().setAttribute("mensajeError", "Equipo No Agregado");
            response.sendRedirect("equipo/formulario.jsp");
        }
    }

    private void eliminarEquipo(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("Equiposcbo"));

        Equipo e = equipoFacade.find(id);
        Usuario u = usuarioFacade.find(e.getUsuario().getId());
        u.setEstado("Inactivo");
        usuarioFacade.edit(u);

        if (e != null) {
            request.getSession().setAttribute("mensajeCorrecto", "Equipo Dado De Baja");

            response.sendRedirect("equipo/eliminar.jsp");
        } else {
            request.getSession().setAttribute("mensajeError", "Equipo No Dado De Baja");
            response.sendRedirect("equipo/eliminar.jsp");
        }
    }

    private void modificarEquipo(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String nombre = request.getParameter("txtNombre");
        String estado = request.getParameter("cboEstado");

        Equipo e = (Equipo) request.getSession().getAttribute("equipoPreActualizacion");
        Usuario u = usuarioFacade.find(e.getUsuario().getId());

        if (e != null) {
            if (nombre.isEmpty() && estado.equals("a")) {
                request.getSession().setAttribute("mensajeError", "¡¡ Realice cambios !!");
                response.sendRedirect("equipo/modificar.jsp");
            } else {

                if (nombre.isEmpty() == false) {
                    e.setNombre(nombre);
                    equipoFacade.edit(e);
                }
                if (estado.equals("a") == false) {
                    u.setEstado(estado);
                    usuarioFacade.edit(u);
                }
                request.getSession().setAttribute("mensajeCorrecto", "¡¡ Equipo Modificado !!");
                response.sendRedirect("equipo/modificar.jsp");
            }
        } else {
            request.getSession().setAttribute("mensajeError", "¡¡ Seleccione un Equipo !!");
            response.sendRedirect("equipo/modificar.jsp");
        }
    }

    private void buscarEquipo(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("equiposCbo"));

        if (id != 0) {
            Equipo e = equipoFacade.find(id);
            request.getSession().setAttribute("equipoPreActualizacion", e);
            response.sendRedirect("equipo/modificar.jsp");
        } else {
            request.getSession().setAttribute("mensajeError", "¡¡ Seleccione Un Equipo !!");
            response.sendRedirect("equipo/modificar.jsp");
        }
    }

    private void agregarJugador(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String nombreApp = request.getParameter("txtNombre");
        int edad = Integer.parseInt(request.getParameter("txtEdad"));
        String correo = request.getParameter("txtCorreo");

        int idEquipo = Integer.parseInt(request.getParameter("equipoObtenido"));
        Equipo e = (Equipo) request.getSession().getAttribute("equipoO");
        boolean estado = false;
        long cantidadJ = 0;
        if (idEquipo != 0) {
            cantidadJ = jugadorFacade.cantidadJugadores(idEquipo);
            if (cantidadJ < 5) {
                request.getSession().setAttribute("mensajeError", "¡¡ El equipo debe tener mínimo 5 jugadores !!");
                estado = true;
            }
            if (cantidadJ >= 5 && cantidadJ < 7) {
                estado = true;
            }
            if (cantidadJ == 7) {
                request.getSession().setAttribute("mensajeError", "¡¡ EL equipo está lleno !!");
            }
            if (estado) {
                Jugador j = new Jugador(null, nombreApp, correo, edad, e);
                jugadorFacade.create(j);
                if (j != null) {
                    request.getSession().setAttribute("mensajeCorrecto", "¡¡ Jugador Ingresado !!");
                }
            }
            //request.getSession().setAttribute("cantidad", cantidadJ);
            response.sendRedirect("equipo/agregar-jugador.jsp");
        } else {
            request.getSession().setAttribute("mensajeError", "¡¡ Seleccione Un Equipo !!");
            response.sendRedirect("equipo/agregar-jugador.jsp");
        }

    }

    private void agregarJugador2(HttpServletRequest request, HttpServletResponse response) throws IOException {

        String nombreApp = request.getParameter("txtNombre");
        int edad = Integer.parseInt(request.getParameter("txtEdad"));
        String correo = request.getParameter("txtCorreo");

        int idEquipo = Integer.parseInt(request.getParameter("equiposCbo"));
        Equipo e = equipoFacade.find(idEquipo);

        boolean estado = false;
        long cantidadJ = 0;
        if (idEquipo != 0) {
            cantidadJ = jugadorFacade.cantidadJugadores(idEquipo);
            if (cantidadJ < 5) {
                request.getSession().setAttribute("mensajeError", "¡¡ El equipo debe tener mínimo 5 jugadores !!");
                estado = true;
            }
            if (cantidadJ >= 5 && cantidadJ < 7) {
                estado = true;
            }
            if (cantidadJ == 7) {
                request.getSession().setAttribute("mensajeError", "¡¡ EL equipo está lleno !!");
            }
            if (estado) {
                Jugador j = new Jugador(null, nombreApp, correo, edad, e);
                jugadorFacade.create(j);
                if (j != null) {
                    request.getSession().setAttribute("mensajeCorrecto", "¡¡ Jugador Ingresado !!");
                }
            }
            //request.getSession().setAttribute("cantidad", cantidadJ);
            response.sendRedirect("equipo/agregar-jugador.jsp");
        } else {
            request.getSession().setAttribute("mensajeError", "¡¡ Seleccione Un Equipo !!");
            response.sendRedirect("equipo/agregar-jugador.jsp");
        }

    }

    private void buscarJugadores(HttpServletRequest request, HttpServletResponse response) throws IOException {
        int id = Integer.parseInt(request.getParameter("equiposCbo"));

        if (id != 0) {
            List<Jugador> lista = jugadorFacade.jugadoresPorEquipo(id);
            request.getSession().setAttribute("jugadores", lista);
            request.getSession().setAttribute("equipoO", equipoFacade.find(id));
            response.sendRedirect("equipo/agregar-jugador.jsp");
        } else {
            request.getSession().setAttribute("mensajeError", "¡¡ Seleccione Un Equipo !!");
            response.sendRedirect("equipo/agregar-jugador.jsp");
        }
    }

    private void buscarEquipos(HttpServletRequest request, HttpServletResponse response) throws IOException {

        int idLiga = Integer.parseInt(request.getParameter("cboLiga"));
        List<Equipo> equiposPorLiga = equipoFacade.equiposPorLiga(idLiga);
        request.getSession().setAttribute("equipos", equiposPorLiga);
        response.sendRedirect("administrador/competicion/crear-llaves.jsp");

    }

    private void semifinal(HttpServletRequest request, HttpServletResponse response) throws ParseException, IOException {
        String[] idEquipos = request.getParameterValues("cboEquipoS");
        int equipo1 = Integer.parseInt(idEquipos[0]);
        int equipo2 = Integer.parseInt(idEquipos[1]);
        int equipo3 = Integer.parseInt(idEquipos[2]);
        int equipo4 = Integer.parseInt(idEquipos[3]);

        String fechaParseI = request.getParameter("txtFecha2");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
        Date fechaInicio = sdf.parse(fechaParseI);

        Semifinal s1 = new Semifinal(fechaInicio, equipoFacade.find(equipo1), equipoFacade.find(equipo2));
        Semifinal s2 = new Semifinal(fechaInicio, equipoFacade.find(equipo3), equipoFacade.find(equipo4));

        semifinalFacade.create(s1);
        semifinalFacade.create(s2);

        request.getSession().setAttribute("mensajeCorrecto", "Semifinal Agregada");
        response.sendRedirect("administrador/competicion/crear-llaves.jsp");
    }

    private void cuartos(HttpServletRequest request, HttpServletResponse response) throws ParseException, IOException {

        String[] idEquipos = request.getParameterValues("cboEquipo");
        int equipo1 = Integer.parseInt(idEquipos[0]);
        int equipo2 = Integer.parseInt(idEquipos[1]);
        int equipo3 = Integer.parseInt(idEquipos[2]);
        int equipo4 = Integer.parseInt(idEquipos[3]);
        int equipo5 = Integer.parseInt(idEquipos[4]);
        int equipo6 = Integer.parseInt(idEquipos[5]);
        int equipo7 = Integer.parseInt(idEquipos[6]);
        int equipo8 = Integer.parseInt(idEquipos[7]);
//        int contador = 0;
//        for (String idEquipo : idEquipos) {
//            contador++;
//            int equipo1 = Integer.parseInt(idEquipo);
//            if (contador == 2) {
//                System.out.println(equipo1 +" aaa"+ equipo1);
//                //Cuartos c = new Cuartos(equipoFacade.find(equipo1), equipoFacade.find(equipo1), fechaInicio);
//            }
//        }

        String fechaParseI = request.getParameter("txtFecha1");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
        Date fechaInicio = sdf.parse(fechaParseI);

        Cuartos c1 = new Cuartos(equipoFacade.find(equipo1), equipoFacade.find(equipo2), fechaInicio);
        Cuartos c2 = new Cuartos(equipoFacade.find(equipo3), equipoFacade.find(equipo4), fechaInicio);
        Cuartos c3 = new Cuartos(equipoFacade.find(equipo5), equipoFacade.find(equipo6), fechaInicio);
        Cuartos c4 = new Cuartos(equipoFacade.find(equipo7), equipoFacade.find(equipo8), fechaInicio);

        cuartosFacade.create(c1);
        cuartosFacade.create(c2);
        cuartosFacade.create(c3);
        cuartosFacade.create(c4);
        request.getSession().setAttribute("mensajeCorrecto", "Cuartos Agregados");
        response.sendRedirect("administrador/competicion/crear-llaves.jsp");

    }

    private void finall(HttpServletRequest request, HttpServletResponse response) throws ParseException, IOException {
        String[] idEquipos = request.getParameterValues("cboEquipoF");
        int equipo1 = Integer.parseInt(idEquipos[0]);
        int equipo2 = Integer.parseInt(idEquipos[1]);

        String fechaParseI = request.getParameter("txtFecha3");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
        Date fechaInicio = sdf.parse(fechaParseI);

        Final f1 = new Final(fechaInicio, equipoFacade.find(equipo1), equipoFacade.find(equipo2));

        finalFacade.create(f1);

        request.getSession().setAttribute("mensajeCorrecto", "Final Agregada");
        response.sendRedirect("administrador/competicion/crear-llaves.jsp");
    }

}
