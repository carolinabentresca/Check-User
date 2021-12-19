/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.myapp.struts.Form;


public class usuarioForm extends org.apache.struts.action.ActionForm {
    
    private int id;
    private String usuario;
    private String email;
    private String password;
    
    public usuarioForm() {
        super();
    }

    public usuarioForm(int id, String usuario, String email, String password) {
        this.id = id;
        this.usuario = usuario;
        this.email = email;
        this.password = password;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    

}
