/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import modelo.dao.UsuarioFacade;

/*import dao.AdministradorDAO;
import dao.EquipoDAO;
import dao.FixtureDAO;
import dao.JugadorDAO;
import dao.SuperUsuarioDAO;
import dao.UsuarioDAO;
import dto.Administrador;
import dto.Cuartos;
import dto.Equipo;
import dto.Final;
import dto.Liga;
import dto.Octavos;
import dto.Usuario;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;*/


public class NewMain {



    public static void main(String[] args) {
        
        String nombre = "Marco Mella";
        String nombre2 = "marco";
        boolean resp = nombre.matches("[]");
        boolean resp2 = nombre2.matches("[a-zA-Z]");
        
        System.out.println(resp);
        System.out.println(resp2);
    }
}
