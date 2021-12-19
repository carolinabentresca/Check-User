/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts.Modelo;

import com.myapp.struts.Form.usuarioForm;
import static com.myapp.struts.Modelo.Conexion.getConexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class usuarioDao extends Conexion {

    PreparedStatement ps;
    ResultSet rs;
    Connection con = null;

    //Insertar
    public usuarioForm insertar(usuarioForm obj) {
        usuarioForm bean = null;
        String sql = "insert into usuario(id,usuario,email,password)values(?,?,?,?)";
        try {
            con = getConexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, obj.getId());
            ps.setString(2, obj.getUsuario());
            ps.setString(3, obj.getEmail());
            ps.setString(4, obj.getPassword());
            bean = new usuarioForm();
            ps.executeUpdate();
            con.close();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return bean;
    }

    //Mostrar
    public List<usuario> mostrar() {
        List<usuario> list = new ArrayList();
        String sql = "select * from usuario";
        try {
            con = getConexion();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                usuario us = new usuario();
                us.setId(Integer.parseInt(rs.getString("id")));
                us.setUsuario(rs.getString("usuario"));
                us.setEmail(rs.getString("email"));
                us.setPassword(rs.getString("password"));
                list.add(us);
            }
            con.close();
        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return list;
    }

    //Modificar
    public usuarioForm modificar(usuarioForm obj) {
        usuarioForm bean = null;
        String sql = "update usuario set usuario = ? , email = ? , password = ? where id = ? ";
        try {
            con = getConexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, obj.getUsuario());
            ps.setString(2, obj.getEmail());
            ps.setString(3, obj.getPassword());
            ps.setInt(4, obj.getId());
            bean = new usuarioForm();
            ps.executeUpdate();
            con.close();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return bean;
    }

    //Eliminar
    public usuarioForm eliminar(usuarioForm obj) {
        usuarioForm bean = null;
        String sql = "delete from usuario where id = ? ";
        try {
            con = getConexion();
            ps = con.prepareStatement(sql);
            ps.setInt(1, obj.getId());
            bean = new usuarioForm();
            ps.execute();
            con.close();

        } catch (SQLException e) {
            System.err.println(e.getMessage());
        }
        return bean;
    }
}
